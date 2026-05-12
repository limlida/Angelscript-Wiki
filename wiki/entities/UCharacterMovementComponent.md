---
title: "UCharacterMovementComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 移动
  - Character

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UCharacterMovementComponent.md
verified_by: agent
unverified_items:
  - AddInputVector
  - ConsumeInputVector
  - DoJump
  - GetMaxSpeed
  - GetPendingInputVector
  - GetVelocity
  - HasRootMotionSource
  - IsCrouching
  - IsFalling
  - IsFlying
  - IsMovingOnGround
  - IsSwimming
  - K2_GetMaxSpeedModifier
  - MoveDirection
  - SetDefaultMovementMode
---

## 概述

UCharacterMovementComponent 是传统 Character 移动组件，处理 [[ACharacter]] 的移动逻辑，包括行走、下落、飞行、游泳等模式。**注意：本项目使用 Mover 2.0（[[UMoverComponent]]）替代了此组件。**

**核心功能**：
- 多种移动模式（行走、下落、飞行、游泳、自定义）
- 网络复制和预测
- 根运动处理
- 攀爬和穿越

## 主要属性

### 速度

- `float32 MaxWalkSpeed` - 最大行走速度
- `float32 MaxFlySpeed` - 最大飞行速度
- `float32 MaxSwimSpeed` - 最大游泳速度
- `float32 MaxCustomMovementSpeed` - 最大自定义移动速度
- `float32 JumpZVelocity` - 跳跃初始速度
- `float32 GravityScale` - 重力缩放
- `float32 GroundFriction` - 地面摩擦力
- `float32 BrakingDecelerationWalking` - 行走制动减速度

### 移动模式

- `EMovementMode MovementMode` - 当前移动模式
- `uint8 CustomMovementMode` - 自定义移动模式索引

### 步态

- `float32 WalkSpeed` - 行走速度
- `float32 RunSpeed` - 奔跑速度
- `float32 SprintSpeed` - 冲刺速度
- `float32 CrouchSpeed` - 蹲下速度

### 网络

- `bool bNetworkMovementModeChange` - 网络移动模式变化
- `float32 NetworkSimulatedSmoothLocationTime` - 网络模拟平滑位置时间
- `float32 NetworkSimulatedSmoothRotationTime` - 网络模拟平滑旋转时间

## 主要方法

### 移动

- `MoveDirection(FVector Direction)` - 按方向移动
- `AddInputVector(FVector WorldVector)` - 添加输入向量
- `FVector ConsumeInputVector()` - 消费输入向量
- `SetMovementMode(EMovementMode NewMovementMode, uint8 NewCustomMode = 0)` - 设置移动模式

### 跳跃

- `DoJump(bool bReplayingMoves)` - 执行跳跃
- `bool IsFalling() const` - 是否在下落
- `bool IsMovingOnGround() const` - 是否在地面移动
- `bool IsFlying() const` - 是否在飞行
- `bool IsSwimming() const` - 是否在游泳
- `bool IsCrouching() const` - 是否蹲下

### 速度和方向

- `FVector GetVelocity() const` - 获取速度
- `float32 GetMaxSpeed() const` - 获取当前最大速度
- `float32 GetMaxBrakingDeceleration() const` - 获取最大制动减速度
- `FVector GetPendingInputVector() const` - 获取待处理输入向量

### 地面检测

- `bool FindFloor(FVector CapsuleLocation, FFindFloorResult& OutFloorResult, bool bCanUseCachedLocation, FHitResult& HitResult) const` - 查找地面
- `bool IsWalkable(const FHitResult Hit) const` - 是否可行走
- `float32 GetWalkableFloorAngle() const` - 获取可行走角度
- `float32 GetWalkableFloorZ() const` - 获取可行走 Z 值

### 其他

- `SetDefaultMovementMode()` - 设置默认移动模式
- `K2_GetMaxSpeedModifier() const` - 获取最大速度修正
- `bool HasRootMotionSource() const` - 是否有根运动源

## 示例

```angelscript
// 获取移动组件
UCharacterMovementComponent CMC = GetCharacterMovement();

// 设置速度
CMC.MaxWalkSpeed = 600.0f;
CMC.JumpZVelocity = 420.0f;
CMC.GravityScale = 1.0f;

// 切换移动模式
CMC.SetMovementMode(EMovementMode::MOVE_Falling);

// 检查状态
if (CMC.IsFalling())
{
    Print("角色在下落");
}

if (CMC.IsMovingOnGround())
{
    Print("角色在地面移动");
}

// 获取速度
FVector Vel = CMC.GetVelocity();
float Speed = Vel.Size();
Print("移动速度: " + Speed);
```

## 相关页面

- [[ACharacter]] - Character 基类
- [[UMoverComponent]] - Mover 2.0 移动组件（项目使用的替代方案）

## 来源

- [UCharacterMovementComponent.md](../../raw/API/Global/UCharacterMovementComponent.md)
