---
title: "AController"
category: entities
date: 2026-05-09
tags:
  - Actor
  - Controller
  - 基类
---

## 概述

AController 是控制器的基类。控制器是非物理 Actor，可以附身（Possess）[[APawn]] 来控制其行为。PlayerController 用于人类玩家控制 Pawn，而 [[AAIController]] 实现人工智能控制。

**核心概念**：
- 控制器通过 `Possess()` 方法控制 Pawn，通过 `UnPossess()` 方法释放控制
- 控制器接收 Pawn 的各种事件通知，可以拦截并覆盖 Pawn 的默认行为
- **ControlRotation**（通过 `GetControlRotation()` 访问）决定了受控 Pawn 的观察/瞄准方向

- **官方文档**: https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Controller/

## 主要属性

- `APlayerState PlayerState` - 包含此控制器玩家复制信息的 PlayerState（仅对玩家存在，NPC 没有）
- `FOnPossessedPawnChanged OnPossessedPawnChanged` - 当附身的 Pawn 变化时广播（客户端和服务端都会调用）
- `FInstigatedAnyDamageSignature OnInstigatedAnyDamage` - 当此控制器以任何方式引发伤害时调用
- `bool bAttachToPawn` - 如果为 true，控制器位置将匹配附身 Pawn 的位置

## 主要方法

### 附身与释放

- `Possess(APawn InPawn)` - 附身指定 Pawn，仅在拥有网络权威时运行
- `UnPossess()` - 释放当前附身的 Pawn
- `APawn GetControlledPawn() const` - 返回当前被此控制器控制的 Pawn
- `ReceivePossess(APawn PossessedPawn)` - 蓝图可实现事件：附身 Pawn 时响应
- `ReceiveUnPossess(APawn UnpossessedPawn)` - 蓝图可实现事件：释放 Pawn 时响应

### 旋转控制

- `FRotator GetControlRotation() const` - 获取控制旋转，这是完整的瞄准旋转
- `FRotator GetDesiredRotation() const` - 获取期望的 Pawn 目标旋转
- `SetControlRotation(FRotator NewRotation)` - 设置控制旋转

### 视角

- `GetPlayerViewPoint(FVector& Location, FRotator& Rotation) const` - 获取玩家视角点。对 AI 返回 Pawn 的"眼睛"视角，对人类玩家返回相机视角
- `AActor GetViewTarget() const` - 获取控制器正在查看的 Actor
- `bool LineOfSightTo(const AActor Other, FVector ViewPoint, bool bAlternateChecks = false) const` - 检查是否能看见另一个 Actor

### 位置和旋转设置

- `ClientSetLocation(FVector NewLocation, FRotator NewRotation)` - 服务器强制设置 Pawn 位置和旋转（复制到客户端）
- `ClientSetRotation(FRotator NewRotation, bool bResetCamera)` - 服务器强制设置 Pawn 旋转
- `SetInitialLocationAndRotation(FVector NewLocation, FRotator NewRotation)` - 设置控制器的初始位置和旋转

### 输入控制

- `SetIgnoreMoveInput(bool bNewMoveInput)` - 锁定/解锁移动输入，连续调用会堆叠
- `SetIgnoreLookInput(bool bNewLookInput)` - 锁定/解锁观察输入，连续调用会堆叠
- `ResetIgnoreMoveInput()` - 重置移动输入忽略状态
- `ResetIgnoreLookInput()` - 重置观察输入忽略状态
- `ResetIgnoreInputFlags()` - 重置所有输入忽略标志
- `bool IsMoveInputIgnored() const` - 移动输入是否被忽略
- `bool IsLookInputIgnored() const` - 观察输入是否被忽略

### 其他

- `StopMovement()` - 中止控制器当前正在执行的移动
- `bool IsLocalController() const` - 是否为本地控制器
- `bool IsLocalPlayerController() const` - 是否为本地玩家控制器
- `bool IsPlayerController() const` - 是否为玩家控制器
- `InstigatedAnyDamage(float Damage, const UDamageType DamageType, AActor DamagedActor, AActor DamageCauser)` - 当此控制器引发伤害时的事件

## 示例

```angelscript
// 附身一个 Pawn
AController Controller = GetController();
Controller.Possess(TargetPawn);

// 获取控制旋转
FRotator ControlRot = Controller.GetControlRotation();
Print("控制旋转: " + ControlRot.ToString());

// 获取玩家视角
FVector ViewLocation;
FRotator ViewRotation;
Controller.GetPlayerViewPoint(ViewLocation, ViewRotation);
Print("视角位置: " + ViewLocation.ToString());

// 检查是否能看见目标
bool CanSee = Controller.LineOfSightTo(TargetActor);
if (CanSee)
{
    Print("能看到目标");
}

// 停止移动
Controller.StopMovement();
```

## 继承关系

- [[AController]] → [[AAIController]]（AI 控制器）
- [[AController]] → APlayerController（玩家控制器，见 [[APlayerController]]）

## 来源

- [AController.md](../../raw/API/Global/AController.md)
