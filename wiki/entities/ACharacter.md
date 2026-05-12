---
title: "ACharacter"
category: entities
date: 2026-05-08
tags:
  - 基类
  - Character

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/ACharacter.md
verified_by: agent
unverified_items:
  - CheckJumpInput
  - GetCapsuleComponent
  - GetCharacterMovement
  - GetMesh
  - Landed
---

## 概述

Character 是具有网格体、碰撞和内置移动逻辑的 Pawn。它们负责处理玩家或 AI 与世界的所有物理交互，并且还实现了基本的网络和输入模型。它们专为垂直方向的玩家表示而设计，可以使用 CharacterMovementComponent 在世界中行走、跳跃、飞行和游泳。

- **官方文档**: https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Pawn/Character/

## 主要组件

- `[[UCapsuleComponent]] CapsuleComponent` - 用于移动碰撞的 CapsuleComponent
- `[[UCharacterMovementComponent]] CharacterMovement` - 用于各种移动模式（行走、下落等）的移动逻辑的移动组件
- `[[USkeletalMeshComponent]] Mesh` - 与此 Character 关联的主要骨架网格体

## 主要属性

### 跳跃相关
- `int JumpCurrentCount` - 跟踪执行的跳跃次数
- `int JumpMaxCount` - Character 可以执行的最大跳跃次数
- `float32 JumpMaxHoldTime` - 可以按住跳跃键的最长时间
- `float32 JumpForceTimeRemaining` - 剩余的跳跃力时间
- `float32 JumpKeyHoldTime` - 跳跃键按住时间
- `bool bPressedJump` - 如果为 true，玩家想要跳跃
- `bool bWasJumping` - 跟踪角色上一帧是否已经在跳跃

### 蹲伏相关
- `float32 CrouchedEyeHeight` - 默认蹲伏眼睛高度
- `bool bIsCrouched` - 由角色当前是否蹲伏

### 事件委托
- `[[FLandedSignature]] LandedDelegate` - 着陆时调用的事件
- `[[FMovementModeChangedSignature]] MovementModeChangedDelegate` - 移动模式更改的多播委托
- `[[FCharacterMovementUpdatedSignature]] OnCharacterMovementUpdated` - CharacterMovementComponent 移动更新结束时触发的事件
- `[[FCharacterReachedApexSignature]] OnReachedJumpApex` - 当 Character 的跳跃到达顶点时广播

## 主要方法

### 跳跃相关
- `bool CanJump() const` - 检查 Character 在当前状态下是否可以跳跃
- `Jump()` - 让 Character 跳跃
- `StopJumping()` - 停止跳跃
- `bool CanCrouch() const` - 检查是否可以蹲伏
- `Crouch(bool bClientSimulation = false)` - 蹲伏
- `UnCrouch(bool bClientSimulation = false)` - 取消蹲伏

### 移动相关
- `CheckJumpInput(float DeltaTime)` - 检查跳跃输入
- `Landed([[FHitResult]] Hit)` - 着陆
- `OnMovementModeChanged(EMovementMode PreviousMovementMode, uint8 PreviousCustomMode)` - 移动模式更改时调用

### 组件相关
- `[[UCapsuleComponent]] GetCapsuleComponent() const` - 获取 CapsuleComponent
- `[[UCharacterMovementComponent]] GetCharacterMovement() const` - 获取 CharacterMovementComponent
- `[[USkeletalMeshComponent]] GetMesh() const` - 获取 Mesh 组件

## 示例

```angelscript
// 检查是否可以跳跃
if (Character.CanJump()) {
    Character.Jump();
    [[Print]]("跳跃！");
}

// 停止跳跃
Character.StopJumping();

// 检查是否可以蹲伏
if (Character.CanCrouch()) {
    Character.Crouch(false);
    [[Print]]("蹲伏！");
}

// 取消蹲伏
Character.UnCrouch(false);

// 获取 CharacterMovement
[[UCharacterMovementComponent]] Movement = Character.GetCharacterMovement();
if (Movement != nullptr) {
    //  [[Print]]("有移动组件");
}

// 获取 CapsuleComponent
[[UCapsuleComponent]] Capsule = Character.GetCapsuleComponent();
if (Capsule != nullptr) {
    [[Print]]("有胶囊组件");
}
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
