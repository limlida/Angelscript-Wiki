---
title: "FQuat"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 数学
  - 旋转

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FQuat.md
verified_by: agent
unverified_items: []
---

## 概述

FQuat 是四元数旋转表示，由四个浮点数 (X, Y, Z, W) 组成。与 [[FRotator]]（欧拉角）相比，四元数没有万向锁问题，插值更平滑，但不够直观。

**核心用途**：平滑旋转插值（Slerp）、避免万向锁、骨骼动画旋转、物理计算。

## 主要属性

- `float X` - 四元数 X 分量
- `float Y` - 四元数 Y 分量
- `float Z` - 四元数 Z 分量
- `float W` - 四元数 W 分量（实部）

## 主要方法

### 比较

- `bool opEquals(FQuat Other) const` - 相等比较
- `bool Equals(FQuat Other, float Tolerance = KINDA_SMALL_NUMBER) const` - 容差比较
- `bool IsIdentity(float Tolerance = SMALL_NUMBER) const` - 是否为单位四元数（无旋转）

### 运算

- `FQuat opMul(FQuat Other) const` - 四元数乘法（组合旋转）
- `FQuat opMul(float Scale) const` - 标量乘法
- `FQuat opAdd(FQuat Other) const` - 加法
- `FQuat opSub(FQuat Other) const` - 减法
- `FVector opMul(FVector Other) const` - 旋转向量

### 归一化

- `Normalize(float Tolerance = SMALL_NUMBER)` - 原地归一化
- `FQuat GetNormalized(float Tolerance = SMALL_NUMBER) const` - 获取归一化副本
- `bool IsNormalized() const` - 是否已归一化

### 逆和大小

- `FQuat Inverse() const` - 获取逆四元数
- `float Size() const` - 获取大小
- `float SizeSquared() const` - 获取大小平方
- `float GetAngle() const` - 获取旋转角度

### 向量旋转

- `FVector RotateVector(FVector V) const` - 旋转向量
- `FVector UnrotateVector(FVector V) const` - 反向旋转向量
- `FVector GetForwardVector() const` - 获取前向向量
- `FVector GetRightVector() const` - 获取右向向量
- `FVector GetUpVector() const` - 获取上向向量
- `FVector GetAxisX() const` - 获取 X 轴
- `FVector GetAxisY() const` - 获取 Y 轴
- `FVector GetAxisZ() const` - 获取 Z 轴

### 转换

- `FRotator Rotator() const` - 转换为 [[FRotator]]
- `FVector Euler() const` - 转换为欧拉角
- `FString ToString() const` - 转换为字符串
- `ToAxisAndAngle(FVector& Axis, float& Angle) const` - 转换为轴角表示

### 其他

- `EnforceShortestArcWith(FQuat Other)` - 确保与另一四元数之间是最短弧
- `FVector GetRotationAxis() const` - 获取旋转轴
- `float AngularDistance(FQuat Q) const` - 与另一四元数的角度距离

## 示例

```angelscript
// 从 FRotator 创建四元数
FQuat Quat = FRotator(0.0f, 90.0f, 0.0f).Quaternion();

// 旋转向量
FVector Forward = Quat.RotateVector(FVector(1.0f, 0.0f, 0.0f));
Print("旋转后的前向: " + Forward.ToString());

// 组合旋转
FQuat RotA = FRotator(0.0f, 45.0f, 0.0f).Quaternion();
FQuat RotB = FRotator(30.0f, 0.0f, 0.0f).Quaternion();
FQuat Combined = RotA * RotB;

// 逆旋转
FQuat InvQuat = Quat.Inverse();

// 转换回 FRotator
FRotator Rot = Quat.Rotator();

// 球面线性插值（Slerp）
FQuat FromQuat = FRotator(0.0f, 0.0f, 0.0f).Quaternion();
FQuat ToQuat = FRotator(0.0f, 90.0f, 0.0f).Quaternion();
FQuat Result = FQuat::Slerp(FromQuat, ToQuat, 0.5f);
```

## 相关页面

- [[FRotator]] - 欧拉角旋转（更直观）
- [[FTransform]] - 完整变换

## 来源

- [FQuat.md](../../raw/API/Structs/FQuat.md)
