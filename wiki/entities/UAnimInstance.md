---
title: "UAnimInstance"
category: entities
date: 2026-05-09
tags:
  - 动画
  - AnimInstance
---

## 概述

UAnimInstance 是动画蓝图的实例类，负责驱动骨骼网格体的动画逻辑。每个拥有骨骼网格体的 Actor 都可以有一个 AnimInstance，它通过动画图表计算最终骨骼姿态。

**核心功能**：
- 动画更新和评估（`BlueprintUpdateAnimation`、`BlueprintThreadSafeUpdateAnimation`）
- Montage 播放控制
- 动画层链接
- 曲线值获取
- 姿势快照

## 主要属性

### Montage 事件

- `FOnMontageStartedMCDelegate OnMontageStarted` - Montage 开始时调用
- `FOnMontageEndedMCDelegate OnMontageEnded` - Montage 结束时调用（无论中断还是完成）
- `FOnMontageBlendingOutStartedMCDelegate OnMontageBlendingOut` - Montage 开始混合输出时调用
- `FOnMontageBlendedInEndedMCDelegate OnMontageBlendedIn` - Montage 混合输入结束时调用
- `FOnMontageSectionChangedMCDelegate OnMontageSectionChanged` - Montage 段落变更时调用
- `FOnAllMontageInstancesEndedMCDelegate OnAllMontageInstancesEnded` - 所有 Montage 实例结束时调用

### 配置

- `ERootMotionMode RootMotionMode` - 设置此蓝图从何处拉取根运动
- `bool bPropagateNotifiesToLinkedInstances` - 是否将通知传播到链接的动画实例
- `bool bReceiveNotifiesFromLinkedInstances` - 是否处理来自链接动画实例的通知
- `bool bUseMainInstanceMontageEvaluationData` - 链接实例是否使用主实例的 Montage 数据

## 主要方法

### 生命周期

- `BlueprintInitializeAnimation()` - 动画初始化时执行
- `BlueprintBeginPlay()` - 拥有组件的 BeginPlay 调用时执行
- `BlueprintUpdateAnimation(float DeltaTimeX)` - 动画更新时执行
- `BlueprintThreadSafeUpdateAnimation(float DeltaTime)` - 在工作线程上更新动画时执行
- `BlueprintPostEvaluateAnimation()` - 动画评估后执行
- `BlueprintLinkedAnimationLayersInitialized()` - 所有链接动画层初始化时执行

### Montage 播放

- `float32 Montage_Play(UAnimMontage MontageToPlay, float32 InPlayRate = 1.0, EMontagePlayReturnType ReturnValueType = EMontagePlayReturnType::MontageLength, float32 InTimeToStartMontageAt = 0.0, bool bStopAllMontages = true)` - 播放动画 Montage，返回 Montage 长度（秒），失败返回 0
- `Montage_Stop(float32 InBlendOutTime, const UAnimMontage Montage = nullptr)` - 停止 Montage
- `Montage_Pause(const UAnimMontage Montage = nullptr)` - 暂停 Montage
- `Montage_Resume(const UAnimMontage Montage)` - 恢复暂停的 Montage

### Montage 查询

- `bool IsAnyMontagePlaying() const` - 是否有任何 Montage 正在播放
- `UAnimMontage GetCurrentActiveMontage() const` - 获取当前活跃的 Montage
- `bool Montage_IsPlaying(const UAnimMontage Montage) const` - 指定 Montage 是否正在播放
- `bool Montage_IsActive(const UAnimMontage Montage) const` - 指定 Montage 是否活跃
- `float32 Montage_GetPosition(const UAnimMontage Montage) const` - 获取 Montage 当前位置
- `FName Montage_GetCurrentSection(const UAnimMontage Montage = nullptr) const` - 获取当前段落名称
- `float32 Montage_GetPlayRate(const UAnimMontage Montage) const` - 获取播放速率
- `float32 Montage_GetEffectivePlayRate(const UAnimMontage Montage) const` - 获取有效播放速率（含 RateScale）

### Montage 控制

- `Montage_JumpToSection(FName SectionName, const UAnimMontage Montage = nullptr)` - 跳转到指定段落
- `Montage_JumpToSectionsEnd(FName SectionName, const UAnimMontage Montage = nullptr)` - 跳转到指定段落末尾
- `Montage_SetNextSection(FName SectionNameToChange, FName NextSection, const UAnimMontage Montage = nullptr)` - 动态重链接段落的下一个段落
- `Montage_SetPlayRate(const UAnimMontage Montage, float32 NewPlayRate = 1.0)` - 设置播放速率
- `Montage_SetPosition(const UAnimMontage Montage, float32 NewPosition)` - 设置播放位置

### Slot 动画

- `UAnimMontage PlaySlotAnimationAsDynamicMontage(UAnimSequenceBase Asset, FName SlotNodeName, float32 BlendInTime = 0.25, float32 BlendOutTime = 0.25, float32 InPlayRate = 1.0, int LoopCount = 1, float32 BlendOutTriggerTime = -1.0, float32 InTimeToStartMontageAt = 0.0)` - 在 Slot 节点上播放动画
- `StopSlotAnimation(float32 InBlendOutTime = 0.25, FName SlotNodeName = NAME_None)` - 停止 Slot 动画
- `bool IsSlotActive(FName SlotNodeName) const` - Slot 是否有活跃的 Montage

### 链接动画层

- `LinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)` - 链接动画类层
- `UnlinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)` - 取消链接动画类层
- `UAnimInstance GetLinkedAnimGraphInstanceByTag(FName InTag) const` - 按标签获取链接的动画图实例
- `UAnimInstance GetLinkedAnimLayerInstanceByGroup(FName InGroup) const` - 按组获取链接的动画层实例

### 曲线

- `float32 GetCurveValue(FName CurveName) const` - 返回指定曲线的值
- `bool GetCurveValueWithDefault(FName CurveName, float32 DefaultValue, float32& OutValue)` - 返回曲线值，未找到时使用默认值
- `GetActiveCurveNames(EAnimCurveType CurveType, TArray<FName>& OutNames) const` - 获取活跃曲线名称列表

### 姿势快照

- `SavePoseSnapshot(FName SnapshotName)` - 保存当前姿势快照到内部缓存
- `SnapshotPose(FPoseSnapshot& Snapshot)` - 保存当前姿势快照到指定对象
- `RemovePoseSnapshot(FName SnapshotName)` - 移除之前保存的姿势快照

### 其他

- `APawn TryGetPawnOwner() const` - 获取拥有此 AnimInstance 的 Pawn
- `AActor GetOwningActor() const` - 获取拥有此 AnimInstance 的 Actor
- `USkeletalMeshComponent GetOwningComponent() const` - 获取拥有此 AnimInstance 的骨骼网格体组件
- `float32 GetDeltaSeconds() const` - 获取当前帧间隔时间
- `int GetLODLevel() const` - 获取当前 LOD 级别
- `float32 CalculateDirection(FVector Velocity, FRotator BaseRotation) const` - 计算移动方向角度
- `SetMorphTarget(FName MorphTargetName, float32 Value)` - 设置变形目标权重
- `ClearMorphTargets()` - 清除当前变形目标

## 示例

```angelscript
// 播放 Montage
UAnimInstance AnimInst = Mesh.GetAnimInstance();
if (AnimInst != nullptr)
{
    float Duration = AnimInst.Montage_Play(AttackMontage, 1.0f);
    if (Duration > 0.0f)
    {
        Print("攻击动画开始播放，时长: " + Duration);
    }
}

// 检查 Montage 是否正在播放
if (AnimInst.Montage_IsPlaying(AttackMontage))
{
    Print("攻击动画正在播放");
}

// 跳转到 Montage 的特定段落
AnimInst.Montage_JumpToSection(n"Combo2", AttackMontage);

// 获取曲线值
float32 AimOffset = AnimInst.GetCurveValue(n"AimOffset");
Print("瞄准偏移: " + AimOffset);

// 保存姿势快照
AnimInst.SavePoseSnapshot(n"IdlePose");

// 获取拥有者
APawn OwnerPawn = AnimInst.TryGetPawnOwner();
```

## 相关页面

- [[ACharacter]] - Character 基类
- [[UAnimMontage]] - 动画 Montage

## 来源

- [UAnimInstance.md](../../raw/API/Global/UAnimInstance.md)
