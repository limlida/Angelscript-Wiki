---
title: "UMoverComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 移动
  - Mover
  - 游戏特定
---

## 概述

UMoverComponent 是项目使用的 Mover 2.0 移动组件，替代了传统的 UCharacterMovementComponent。它采用模式驱动的移动架构，通过不同的移动模式（Walking、Falling、Flying、Riding 等）和转换规则来管理角色移动。

**核心概念**：
- **移动模式（MovementMode）**：定义角色如何移动（行走、下落、飞行、骑乘等）
- **转换（Transition）**：定义模式间的切换条件
- **分层移动（LayeredMove）**：叠加在基础移动上的额外移动效果
- **修饰器（Modifier）**：修改移动行为的临时效果

## 主要属性

### 移动模式

- `TMap<FName, TObjectPtr<UBaseMovementMode>> MovementModes` - 所有可用移动模式的映射
- `FName StartingMovementMode` - 初始移动模式名称
- `TArray<TObjectPtr<UBaseMovementModeTransition>> Transitions` - 全局转换规则

### 输入

- `UObject InputProducer` - 输入生产者对象
- `bool bGatherInputFromAllInputProducerComponents` - 是否从所有输入生产者组件收集输入

### 重力和方向

- `FVector GravityAccelOverride` - 重力加速度覆盖（cm/s²）
- `bool bHasGravityOverride` - 是否覆盖重力
- `FVector UpDirectionOverride` - 上方向覆盖
- `bool bHasUpDirectionOverride` - 是否覆盖上方向

### 事件

- `FMover_OnMovementModeChanged OnMovementModeChanged` - 移动模式变更广播
- `FMover_OnMovementTransitionTriggered OnMovementTransitionTriggered` - 转换触发广播
- `FMover_OnPostSimulationTick OnPostSimulationTick` - 模拟 Tick 后广播
- `FMover_OnTeleportSucceeded OnTeleportSucceeded` - 传送成功广播
- `FMover_OnTeleportFailed OnTeleportFailed` - 传送失败广播

## 主要方法

### 移动模式管理

- `UBaseMovementMode GetMovementMode() const` - 获取当前移动模式
- `FName GetMovementModeName() const` - 获取当前移动模式名称
- `UBaseMovementMode FindMovementMode(TSubclassOf<UBaseMovementMode> MovementMode) const` - 按类查找移动模式
- `UBaseMovementMode FindMovementModeByName(FName MovementModeName) const` - 按名称查找移动模式
- `UBaseMovementMode AddMovementModeFromClass(FName ModeName, TSubclassOf<UBaseMovementMode> MovementMode)` - 添加移动模式
- `bool RemoveMovementMode(FName ModeName)` - 移除移动模式
- `QueueNextMode(FName DesiredModeName, bool bShouldReenter = false)` - 队列下一次移动模式

### 速度和方向

- `FVector GetVelocity() const` - 获取当前速度
- `FVector GetMovementIntent() const` - 获取移动意图方向（0~1 范围）
- `FRotator GetTargetOrientation() const` - 获取目标朝向
- `FVector GetUpDirection() const` - 获取上方向
- `FVector GetGravityAcceleration() const` - 获取重力加速度

### 分层移动

- `RegisterMove(TSubclassOf<ULayeredMoveLogic> MoveClass)` - 注册分层移动逻辑
- `UnregisterMove(TSubclassOf<ULayeredMoveLogic> MoveClass)` - 取消注册分层移动逻辑
- `bool QueueLayeredMoveActivation(TSubclassOf<ULayeredMoveLogic> MoveLogicClass)` - 队列激活分层移动
- `CancelModifierFromHandle(FMovementModifierHandle ModifierHandle)` - 取消修饰器
- `CancelFeaturesWithTag(FGameplayTag TagToCancel, bool bRequireExactMatch = false)` - 按标签取消功能

### GameplayTag

- `AddGameplayTag(FGameplayTag TagToAdd)` - 添加 GameplayTag
- `RemoveGameplayTag(FGameplayTag TagToRemove)` - 移除 GameplayTag
- `bool HasGameplayTag(FGameplayTag TagToFind, bool bExactMatch) const` - 是否拥有 GameplayTag

### 其他

- `UPrimitiveComponent GetMovementBase() const` - 获取当前移动基底
- `FTransform GetBaseVisualComponentTransform() const` - 获取视觉组件变换
- `SetGravityOverride(bool bOverrideGravity, FVector GravityAcceleration = FVector())` - 设置重力覆盖
- `SetPrimaryVisualComponent(USceneComponent SceneComponent)` - 设置主视觉组件
- `bool TryGetFloorCheckHitResult(FHitResult& OutHitResult) const` - 获取地面检测结果
- `TArray<FTrajectorySampleInfo> GetFutureTrajectory(float32 FutureSeconds, float32 SamplesPerSecond)` - 获取未来轨迹预测

## 示例

```angelscript
// 获取 MoverComponent
UMoverComponent Mover = GetMoverComponent();

// 获取当前移动模式
FName CurrentMode = Mover.GetMovementModeName();
Print("当前模式: " + CurrentMode.ToString());

// 切换移动模式
Mover.QueueNextMode(n"Falling");

// 获取速度
FVector Velocity = Mover.GetVelocity();
Print("速度: " + Velocity.ToString());

// 添加 GameplayTag
Mover.AddGameplayTag(n"State.Sprinting");

// 检查 GameplayTag
if (Mover.HasGameplayTag(n"State.Sprinting", false))
{
    Print("正在冲刺");
}

// 设置重力覆盖
Mover.SetGravityOverride(true, FVector(0, 0, -980));
```

## 相关页面

- [[UTkWalkingMode]] - 行走移动模式
- [[UFallingMode]] - 下落移动模式
- [[UFlyingMode]] - 飞行移动模式
- [[FGameplayTag]] - GameplayTag

## 来源

- [UMoverComponent.md](../../raw/API/Global/UMoverComponent.md)
