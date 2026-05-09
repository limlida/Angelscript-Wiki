﻿---
title: "FRotator"
category: entities
date: 2026-05-08
tags:
  - Struct
  - 旋转
---

## 概述

FRotator 是角度旋转，表示在三维空间中的旋转。它包含 Pitch（俯仰角）、Yaw（偏航角）、Roll（翻滚角）三个浮点分量（以度为单位）。

## 主要属性

- `float Pitch` - 俯仰角（绕 X 轴旋转）
- `float Yaw` - 偏航角（绕 Z 轴旋转）
- `float Roll` - 翻滚角（绕 Y 轴旋转）

## 主要方法

### 基本操作
- `FRotator opAdd(FRotator R) const` - 旋转相加
- `FRotator opSub(FRotator R) const` - 旋转相减
- `FRotator opMul(float Scale) const` - 标量相乘
- `FRotator GetInverse() const` - 获取逆旋转
- `FRotator Clamp() const` - 钳制旋转角度
- `FRotator GetNormalized() const` - 归一化旋转
- `FRotator GetDenormalized() const` - 反归一化旋转

### 比较和查询
- `bool opEquals(FRotator R) const` - 比较相等
- `bool Equals(FRotator R, float Tolerance = KINDA_SMALL_NUMBER) const` - 比较相等（带容差）
- `bool IsNearlyZero(float Tolerance = KINDA_SMALL_NUMBER) const` - 检查是否接近零
- `bool IsZero() const` - 检查是否为零
- `bool ContainsNaN() const` - 检查是否包含 NaN
- `float GetManhattanDistance(FRotator Rotator) const` - 获取曼哈顿距离

### 转换
- `[[FVector]] Vector() const` - 转换为方向向量
- `[[FQuat]] Quaternion() const` - 转换为四元数
- `[[FVector]] Euler() const` - 转换为欧拉角
- `bool InitFromString([[FString]] SourceString)` - 从字符串初始化
- `[[FString]] ToString() const` - 转换为字符串
- `[[FString]] ToColorString() const` - 转换为颜色字符串

### 旋转和变换
- `[[FVector]] RotateVector([[FVector]] V) const` - 旋转向量
- `[[FVector]] UnrotateVector([[FVector]] V) const` - 反向旋转向量
- `[[FVector]] GetForwardVector() const` - 获取前向向量
- `[[FVector]] GetRightVector() const` - 获取右向向量
- `[[FVector]] GetUpVector() const` - 获取向上向量
- `FRotator Compose(FRotator B) const` - 组合旋转
- `float AngularDistance(FRotator B) const` - 获取角度距离

### 其他
- `GetWindingAndRemainder(FRotator& Winding, FRotator& Remainder) const` - 获取绕圈和剩余
- `Normalize()` - 归一化（就地）

## 示例

```angelscript
// 创建旋转
FRotator Rotation = FRotator(0, 90, 0);
[[Print]]("旋转: " + Rotation.ToString());

// 旋转向量
[[FVector]] Forward = [[FVector]](1, 0, 0);
[[FVector]] Rotated = Rotation.RotateVector(Forward);
[[Print]]("旋转后: " + Rotated.ToString());

// 获取方向向量
[[FVector]] Dir = Rotation.Vector();
[[FVector]] ForwardVec = Rotation.GetForwardVector();
[[FVector]] RightVec = Rotation.GetRightVector();
[[FVector]] UpVec = Rotation.GetUpVector();

// 逆旋转
FRotator Inverse = Rotation.GetInverse();

// 归一化
FRotator Normalized = Rotation.GetNormalized();
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
