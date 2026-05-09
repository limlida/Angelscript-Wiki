---
title: "UInputAction"
category: entities
date: 2026-05-09
tags:
  - 输入
  - EnhancedInput
---

## 概述

UInputAction 是 Enhanced Input 系统中的输入动作资产，定义了一个逻辑输入动作（如"跳跃"、"攻击"）。它不直接绑定到具体按键，而是通过 [[UInputMappingContext]] 将按键映射到动作。

**核心概念**：
- **UInputAction** 定义"做什么"（跳跃、移动、攻击）
- **UInputMappingContext** 定义"怎么触发"（按空格键跳跃、按左键攻击）
- 两者分离使得按键重绑定和上下文切换变得简单

## 主要属性

### 值类型

- `EInputActionValueType ValueType` - 动作值类型
  - `Boolean` - 数字（按钮按下/释放）
  - `Axis1D` - 单轴（如油门）
  - `Axis2D` - 双轴（如移动方向）
  - `Axis3D` - 三轴（如VR控制器位置）

### 触发器

- `TArray<UInputTrigger> Triggers` - 触发器列表，定义动作何时被视为"触发"

### 修饰器

- `TArray<UInputModifier> Modifiers` - 修饰器列表，对原始输入值进行处理（如死区、平滑、缩放）

## 示例

```angelscript
// 在编辑器中创建 InputAction 资产
// IA_Move: ValueType = Axis2D (WASD移动)
// IA_Jump: ValueType = Boolean (跳跃)
// IA_Look: ValueType = Axis2D (鼠标视角)

// 在 UInputMappingContext 中映射按键
UInputMappingContext IMC = Cast<UInputMappingContext>(IMCAsset);
IMC.MapKey(IA_Move, EKeys::W);
IMC.MapKey(IA_Jump, EKeys::SpaceBar);

// 在 UEnhancedInputComponent 中绑定动作
UEnhancedInputComponent EIC = Cast<UEnhancedInputComponent>(InputComponent);
EIC.BindAction(IA_Jump, ETriggerEvent::Started, JumpDelegate);
EIC.BindAction(IA_Move, ETriggerEvent::Triggered, MoveDelegate);
```

## 相关页面

- [[UInputMappingContext]] - 输入映射上下文
- [[UEnhancedInputComponent]] - 增强输入组件
- [[UTkInputConfig]] - 项目自定义输入配置

## 来源

- [UInputAction.md](../../raw/API/Global/UInputAction.md)
