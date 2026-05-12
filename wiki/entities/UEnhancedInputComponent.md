---
title: "UEnhancedInputComponent"
category: entities
date: 2026-05-09
tags:
  - 输入
  - EnhancedInput
  - Component

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UEnhancedInputComponent.md
verified_by: agent
unverified_items: []
---

## 概述

UEnhancedInputComponent 是增强输入系统的组件，使 Actor 能够将 [[UInputAction]] 绑定到委托函数或监控动作状态。它替代了旧的 UInputComponent，提供更灵活的输入绑定方式。

## 主要方法

### 动作绑定

- `FEnhancedInputActionEventBinding& BindAction(const UInputAction Action, ETriggerEvent TriggerEvent, FEnhancedInputActionHandlerDynamicSignature Delegate)` - 将输入动作绑定到委托
- `FEnhancedInputActionValueBinding& BindActionValue(const UInputAction Action)` - 绑定动作值（持续获取输入值）

### 调试按键绑定

- `FInputDebugKeyBinding& BindDebugKey(FInputChord Chord, EInputEvent KeyEvent, FInputDebugKeyHandlerDynamicSignature Delegate, bool bExecuteWhenPaused = true)` - 绑定调试按键

### 绑定管理

- `bool HasBindings() const` - 是否有任何绑定
- `ClearActionEventBindings() const` - 清除所有动作事件绑定
- `ClearActionValueBindings() const` - 清除所有动作值绑定
- `ClearActionBindings() const` - 清除所有动作绑定
- `ClearBindingsForObject(UObject InOwner)` - 清除指定对象的所有绑定
- `bool RemoveBinding(FInputBindingHandle BindingToRemove)` - 移除指定绑定
- `bool RemoveBindingByHandle(uint BindingIndex)` - 按句柄移除绑定

### 值查询

- `FInputActionValue GetBoundActionValue(const UInputAction Action)` - 获取已绑定动作的当前值

### 编辑器

- `SetShouldFireDelegatesInEditor(bool bInNewValue)` - 设置编辑器中是否触发委托
- `bool ShouldFireDelegatesInEditor() const` - 编辑器中是否触发委托

## ETriggerEvent 触发事件类型

- `Started` - 动作开始（按键按下但可能未通过触发器）
- `Triggered` - 动作触发（通过所有触发器，**最常用**）
- `Ongoing` - 动作持续中
- `Completed` - 动作完成
- `Canceled` - 动作取消

## 示例

```angelscript
// 绑定跳跃动作
UEnhancedInputComponent EIC = Cast<UEnhancedInputComponent>(InputComponent);
EIC.BindAction(IA_Jump, ETriggerEvent::Started, JumpDelegate);
EIC.BindAction(IA_Jump, ETriggerEvent::Completed, StopJumpDelegate);

// 绑定移动动作（持续获取值）
EIC.BindAction(IA_Move, ETriggerEvent::Triggered, MoveDelegate);

// 绑定视角动作
EIC.BindAction(IA_Look, ETriggerEvent::Triggered, LookDelegate);

// 获取动作当前值
FInputActionValue MoveValue = EIC.GetBoundActionValue(IA_Move);
FVector2D MoveVector = MoveValue.Get<FVector2D>();
Print("移动输入: " + MoveVector.ToString());
```

## 相关页面

- [[UInputAction]] - 输入动作
- [[UInputMappingContext]] - 输入映射上下文
- [[UTkInputConfig]] - 项目自定义输入配置

## 来源

- [UEnhancedInputComponent.md](../../raw/API/Global/UEnhancedInputComponent.md)
