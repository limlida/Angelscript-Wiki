---
title: "UNiagaraComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 粒子
  - Niagara
---

## 概述

UNiagaraComponent 是 Niagara 粒子系统的组件，用于在场景中播放和管理 Niagara 效果。Niagara 是 UE 的次世代粒子系统，支持 GPU 模拟、数据接口和高度可定制的效果。

## 主要属性

- `UNiagaraSystem Asset` - Niagara 系统资产
- `FOnNiagaraSystemFinished OnSystemFinished` - 系统播放完成时调用
- `int RandomSeedOffset` - 随机种子偏移（用于确定性随机）
- `ENiagaraTickBehavior TickBehavior` - Tick 行为
- `bool bAutoManageAttachment` - 是否自动管理附加
- `bool bAllowScalability` - 是否允许可伸缩性剔除
- `TMap<FNiagaraVariableBase, FNiagaraVariant> InstanceParameterOverrides` - 实例参数覆盖

## 主要方法

### 播放控制

- `SetAsset(UNiagaraSystem InAsset, bool bResetExistingOverrideParameters = true)` - 设置 Niagara 系统资产
- `UNiagaraSystem GetAsset() const` - 获取当前资产
- `ReinitializeSystem()` - 重新初始化系统
- `ResetSystem()` - 重置系统到初始状态
- `SetPaused(bool bInPaused)` - 暂停/恢复
- `bool IsPaused() const` - 是否暂停
- `SetAutoDestroy(bool bInAutoDestroy)` - 设置播放完成后是否自动销毁

### 参数设置

- `SetVariableFloat(FName InVariableName, float32 InValue)` - 设置浮点参数
- `SetVariableInt(FName InVariableName, int InValue)` - 设置整数参数
- `SetVariableBool(FName InVariableName, bool InValue)` - 设置布尔参数
- `SetVariableLinearColor(FName InVariableName, FLinearColor InValue)` - 设置颜色参数
- `SetVariableVec2(FName InVariableName, FVector2D InValue)` - 设置二维向量参数
- `SetVariableVec3(FName InVariableName, FVector InValue)` - 设置三维向量参数
- `SetVariableVec4(FName InVariableName, FVector4 InValue)` - 设置四维向量参数
- `SetVariablePosition(FName InVariableName, FVector InValue)` - 设置位置参数
- `SetVariableQuat(FName InVariableName, FQuat InValue)` - 设置四元数参数
- `SetVariableMatrix(FName InVariableName, FMatrix InValue)` - 设置矩阵参数
- `SetVariableTexture(FName InVariableName, UTexture Texture)` - 设置纹理参数
- `SetVariableStaticMesh(FName InVariableName, UStaticMesh InValue)` - 设置静态网格参数
- `SetVariableActor(FName InVariableName, AActor Actor)` - 设置 Actor 参数
- `SetVariableMaterial(FName InVariableName, UMaterialInterface Object)` - 设置材质参数

### 参数获取

- `float32 GetVariableFloat(FName InVariableName, bool& bIsValid) const` - 获取浮点参数
- `int GetVariableInt(FName InVariableName, bool& bIsValid) const` - 获取整数参数
- `bool GetVariableBool(FName InVariableName, bool& bIsValid) const` - 获取布尔参数
- `FLinearColor GetVariableColor(FName InVariableName, bool& bIsValid) const` - 获取颜色参数
- `FVector GetVariableVec3(FName InVariableName, bool& bIsValid) const` - 获取三维向量参数

### 模拟控制

- `AdvanceSimulation(int TickCount, float32 TickDeltaSeconds)` - 推进模拟
- `AdvanceSimulationByTime(float32 SimulateTime, float32 TickDeltaSeconds)` - 按时间推进模拟
- `SetCustomTimeDilation(float32 Dilation = 1.0)` - 设置时间膨胀
- `SetRenderingEnabled(bool bInRenderingEnabled)` - 设置是否启用渲染

### 边界

- `SetSystemFixedBounds(FBox LocalBounds)` - 设置系统固定边界
- `ClearSystemFixedBounds()` - 清除系统固定边界
- `SetEmitterFixedBounds(FName EmitterName, FBox LocalBounds)` - 设置发射器固定边界
- `FBox GetSystemFixedBounds() const` - 获取系统固定边界
- `FBox GetEmitterFixedBounds(FName EmitterName) const` - 获取发射器固定边界

## 示例

```angelscript
// 创建并播放 Niagara 效果
UNiagaraComponent NiagaraComp = UNiagaraComponent(this);
NiagaraComp.SetAsset(FireSystem);
NiagaraComp.AttachToComponent(RootComponent, FAttachmentTransformRules::KeepRelativeTransform);
NiagaraComp.SetAutoDestroy(true);
NiagaraComp.Activate();

// 设置用户参数
NiagaraComp.SetVariableFloat(n"FireIntensity", 2.0f);
NiagaraComp.SetVariableLinearColor(n"FireColor", FLinearColor(1.0f, 0.5f, 0.0f, 1.0f));
NiagaraComp.SetVariableVec3(n"WindDirection", FVector(1.0f, 0.0f, 0.0f));

// 使用 Niagara 函数库生成效果
UNiagaraComponent SpawnedFX = Niagara.SpawnSystemAtLocation(
    FireSystem,
    GetActorLocation(),
    GetActorRotation()
);
```

## 相关页面

- [[Niagara]] - Niagara 函数库命名空间
- [[UNiagaraSystem]] - Niagara 系统资产

## 来源

- [UNiagaraComponent.md](../../raw/API/Global/UNiagaraComponent.md)
