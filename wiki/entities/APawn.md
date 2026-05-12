---
title: "APawn"
category: entities
date: 2026-05-08
tags:
  - 基类
  - Pawn

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/APawn.md
verified_by: agent
unverified_items: []
---

## 概述

Pawn 是所有可以被玩家或 AI 控制的 Actor 的基类。它们是关卡中玩家和生物的物理表示。

- **官方文档**: https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Pawn/

## 主要属性

### 控制器相关
- `[[TSubclassOf]]<[[AController]]> AIControllerClass` - 当 Pawn 被 AI 控制时使用的默认类
- `EAutoPossessAI AutoPossessAI` - 确定 Pawn 何时创建并被 AI Controller 控制（关卡开始时、生成时等）
- `EAutoPossessPlayer AutoPossessPlayer` - 确定哪个 PlayerController（如果有）应该在关卡开始时或 Pawn 生成时自动控制该 Pawn
- `[[AController]] LastHitBy` - 最后造成伤害的 Actor 的 Controller
- `[[APlayerState]] PlayerState` - 如果 Pawn 被玩家控制，指向其 Player State

### 移动和旋转
- `float32 BaseEyeHeight` - 碰撞中心上方的基准眼睛高度
- `bool bUseControllerRotationPitch` - 如果为 true，此 Pawn 的俯仰角将更新为匹配 Controller 的 ControlRotation 俯仰角
- `bool bUseControllerRotationRoll` - 如果为 true，此 Pawn 的翻滚角将更新为匹配 Controller 的 ControlRotation 翻滚角
- `bool bUseControllerRotationYaw` - 如果为 true，此 Pawn 的偏航角将更新为匹配 Controller 的 ControlRotation 偏航角

### 事件委托
- `[[FPawnControllerChangedSignature]] ReceiveControllerChangedDelegate` - 在 Pawn 的 Controller 更改后调用的事件
- `[[FPawnRestartedSignature]] ReceiveRestartedDelegate` - 在 Pawn 重新启动后调用的事件

## 主要方法

### 控制器输入
- `AddControllerPitchInput(float32 Val)` - 添加俯仰角输入到 Controller 的 ControlRotation
- `AddControllerRollInput(float32 Val)` - 添加翻滚角输入到 Controller 的 ControlRotation
- `AddControllerYawInput(float32 Val)` - 添加偏航角输入到 Controller 的 ControlRotation
- `AddMovementInput([[FVector]] WorldDirection, float32 ScaleValue = 1.000000, bool bForce = false)` - 沿给定世界方向向量添加移动输入
- `[[FVector]] ConsumeMovementInputVector()` - 返回待处理的输入向量并将其重置为零

### 控制器访问
- `[[AController]] GetController() const` - 返回此 Actor 的 Controller
- `[[FRotator]] GetControlRotation() const` - 获取 Controller 的旋转，通常是此 Pawn 的'视图'旋转
- `[[FRotator]] GetBaseAimRotation() const` - 返回 Pawn 的瞄准旋转
- `[[APlayerController]] GetLocalViewingPlayerController() const` - 返回查看此 Pawn 的本地 Player Controller

### 组件访问
- `[[UPawnMovementComponent]] GetMovementComponent() const` - 返回我们的 PawnMovementComponent（如果有）
- `[[FVector]] GetLastMovementInputVector() const` - 返回 ConsumeMovementInputVector() 处理的最后一个输入向量
- `[[FVector]] GetPendingMovementInputVector() const` - 返回待处理的输入向量（世界空间）

### 其他
- `[[FVector]] GetNavAgentLocation() const` - 获取 Pawn 在导航网格上的位置
- `[[TSubclassOf]]<[[UInputComponent]]> GetOverrideInputComponentClass() const`

## 示例

```angelscript
// 添加移动输入（向前）
Pawn.AddMovementInput([[FVector]](1, 0, 0), 1.0, false);

// 添加旋转输入
Pawn.AddControllerYawInput(1.0);

// 获取 Controller
[[AController]] Controller = Pawn.GetController();
if (Controller != nullptr) {
    [[Print]]("Pawn 有 Controller");
}

// 获取 ControlRotation
[[FRotator]] Rotation = Pawn.GetControlRotation();
[[Print]]("旋转: " + Rotation.ToString());

// 获取 MovementComponent
[[UPawnMovementComponent]] Movement = Pawn.GetMovementComponent();
if (Movement != nullptr) {
    [[Print]]("有移动组件");
}
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
