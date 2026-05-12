---
title: "FInputActionValue"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 输入
  - EnhancedInput

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FInputActionValue.md
verified_by: agent
unverified_items: []
---

## 概述

FInputActionValue 是 Enhanced Input 系统中表示输入动作当前值的结构体。它可以表示布尔值、单轴、双轴或三轴值，具体取决于 [[UInputAction]] 的值类型。

## 主要方法

### 值获取

- `bool Get() const` - 获取布尔值
- `float32 GetAxis1D() const` - 获取单轴值
- `FVector2D GetAxis2D() const` - 获取双轴值
- `FVector GetAxis3D() const` - 获取三轴值

### 查询

- `EInputActionValueType GetValueType() const` - 获取值类型
- `bool IsNonZero(float32 Tolerance = KINDA_SMALL_NUMBER) const` - 是否为非零值
- `float32 GetMagnitude() const` - 获取幅度
- `float32 GetMagnitudeSq() const` - 获取幅度平方

### 转换

- `FInputActionValue& ConvertToType(EInputActionValueType Type)` - 转换为指定类型
- `FInputActionValue& ConvertToType(FInputActionValue Other)` - 转换为另一值的类型
- `FString ToString() const` - 转换为字符串

### 运算

- `FInputActionValue& opAddAssign(FInputActionValue Other)` - 加法赋值
- `FInputActionValue opMulAssign(float32 Scalar)` - 乘法赋值
- `Reset()` - 重置

## 示例

```angelscript
// 处理移动输入
void OnMoveTriggered(FInputActionValue Value)
{
    FVector2D MoveVector = Value.GetAxis2D();
    float32 Forward = MoveVector.Y;
    float32 Right = MoveVector.X;

    if (Value.IsNonZero())
    {
        Print("移动: " + Value.ToString());
    }
}

// 处理跳跃输入
void OnJumpStarted(FInputActionValue Value)
{
    bool bPressed = Value.Get();
    if (bPressed)
    {
        Jump();
    }
}

// 处理视角输入
void OnLookTriggered(FInputActionValue Value)
{
    FVector2D LookVector = Value.GetAxis2D();
    AddControllerYawInput(LookVector.X);
    AddControllerPitchInput(LookVector.Y);
}
```

## 相关页面

- [[UInputAction]] - 输入动作
- [[UEnhancedInputComponent]] - 增强输入组件

## 来源

- [FInputActionValue.md](../../raw/API/Structs/FInputActionValue.md)
