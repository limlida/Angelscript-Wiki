﻿---
title: "FVector"
category: entities
date: 2026-05-08
tags:
  - Struct
  - 向量
---

## 概述

FVector 是 3D 向量，表示三维空间中的点或方向。它包含 X、Y、Z 三个浮点分量。

## 主要属性

- `float X` - X 分量（右/左）
- `float Y` - Y 分量（前/后）
- `float Z` - Z 分量（上/下）

## 主要方法

### 基本操作
- `FVector opAdd(FVector Other) const` - 向量相加
- `FVector opSub(FVector Other) const` - 向量相减
- `FVector opMul(FVector Other) const` - 分量相乘
- `FVector opDiv(FVector Other) const` - 分量相除
- `FVector opMul(float Scale) const` - 标量相乘
- `FVector opDiv(float Scale) const` - 标量相除
- `FVector opNeg() const` - 向量取反

### 向量乘积
- `FVector CrossProduct(FVector Other) const` - 叉积
- `float DotProduct(FVector Other) const` - 点积

### 长度和归一化
- `float Size() const` - 向量长度
- `float SizeSquared() const` - 向量长度的平方
- `float Size2D() const` - 2D 长度（只考虑 XY）
- `float SizeSquared2D() const` - 2D 长度平方
- `bool Normalize(float Tolerance = SMALL_NUMBER)` - 归一化向量
- `bool IsNormalized() const` - 检查是否归一化
- `FVector GetSafeNormal(float Tolerance = SMALL_NUMBER, FVector ResultIfZero = FVector::ZeroVector) const` - 安全归一化

### 比较和查询
- `bool IsNearlyZero(float Tolerance = KINDA_SMALL_NUMBER) const` - 检查是否接近零
- `bool IsZero() const` - 检查是否为零
- `bool IsUniform(float Tolerance = KINDA_SMALL_NUMBER) const` - 检查所有分量是否相等
- `bool ContainsNaN() const` - 检查是否包含 NaN
- `bool IsUnit(float LengthSquaredTolerance = KINDA_SMALL_NUMBER) const` - 检查是否是单位向量
- `bool Equals(FVector Other, float Tolerance = KINDA_SMALL_NUMBER) const` - 比较两个向量是否相等

### 分量操作
- `FVector ComponentMin(FVector Other) const` - 每个分量取最小值
- `FVector ComponentMax(FVector Other) const` - 每个分量取最大值
- `FVector ComponentClamp(FVector Min, FVector Max) const` - 每个分量钳制在范围内
- `FVector GetAbs() const` - 每个分量取绝对值
- `float GetMax() const` - 获取最大分量
- `float GetAbsMax() const` - 获取绝对值最大分量
- `float GetMin() const` - 获取最小分量
- `float GetAbsMin() const` - 获取绝对值最小分量

### 变换和旋转
- `FVector MirrorByVector(FVector MirrorNormal) const` - 通过向量镜像
- `FVector VectorPlaneProject(FVector PlaneNormal) const` - 投影到平面
- `FVector RotateAngleAxis(float AngleDeg, FVector Axis) const` - 绕轴旋转
- `FVector RotateAngleAxisRad(float AngleRad, FVector Axis) const` - 绕轴旋转（弧度）
- `FVector GetSafeNormal2D(float Tolerance = SMALL_NUMBER, FVector ResultIfZero = FVector::ZeroVector) const` - 2D 安全归一化

### 转换
- `[[FRotator]] ToOrientationRotator() const` - 转换为方向旋转
- `[[FQuat]] ToOrientationQuat() const` - 转换为方向四元数
- `[[FRotator]] Rotation() const` - 转换为旋转
- `bool InitFromString([[FString]] SourceString)` - 从字符串初始化
- `[[FString]] ToString() const` - 转换为字符串
- `[[FString]] ToColorString() const` - 转换为颜色字符串

### 距离和角度
- `float Distance(FVector Other) const` - 到另一个向量的距离
- `float DistSquared(FVector Other) const` - 到另一个向量的距离平方
- `float Dist2D(FVector Other) const` - 2D 距离（只考虑 XY）
- `float DistSquared2D(FVector Other) const` - 2D 距离平方
- `float AngularDistance(FVector B) const` - 与另一个向量的角度差（弧度）
- `float AngularDistanceForNormals(FVector B) const` - 与另一个归一化向量的角度差
- `float CosineAngle2D(FVector B) const` - 2D 角度的余弦

### 网格捕捉和边界
- `FVector GridSnap(float GridSize) const` - 捕捉到网格
- `FVector BoundToCube(float Radius) const` - 约束在立方体内
- `FVector BoundToBox(FVector Min, FVector Max) const` - 约束在盒子内
- `FVector GetClampedToSize(float Min, float Max) const` - 钳制大小
- `FVector GetClampedToSize2D(float Min, float Max) const` - 2D 钳制大小
- `FVector GetClampedToMaxSize(float Max) const` - 钳制最大大小
- `FVector GetClampedToMaxSize2D(float Max) const` - 2D 钳制最大大小

### 投影
- `FVector ProjectOnTo(FVector A) const` - 投影到向量
- `FVector ProjectOnToNormal(FVector Normal) const` - 投影到归一化向量
- `bool FindBestAxisVectors(FVector& Axis1, FVector& Axis2) const` - 找到最佳轴向量
- `FVector MoveTowards(FVector Target, float StepSize) const` - 向目标移动
- `FVector PointPlaneProject(FVector PlaneBase, FVector PlaneNormal) const` - 点到平面投影

### 其他
- `FVector Reciprocal() const` - 每个分量取倒数
- `FVector UnwindEuler() const` - 展开欧拉角
- `FVector GetSignVector() const` - 每个分量的符号（-1, 0, 1）
- `FVector Projection() const` - 投影（过时）
- `FVector GetUnsafeNormal() const` - 不安全归一化
- `FVector ConstrainToDirection(FVector Direction) const` - 约束到方向
- `FVector ConstrainToPlane(FVector PlaneUp) const` - 约束到平面

## 示例

```angelscript
// 创建向量
FVector Location = FVector(100, 200, 50);
[[Print]]("位置: " + Location.ToString());

// 向量操作
FVector A = FVector(1, 0, 0);
FVector B = FVector(0, 1, 0);
FVector Sum = A + B;
FVector Cross = A.CrossProduct(B);
float Dot = A.DotProduct(B);

// 获取长度
float Length = Location.Size();
[[Print]]("长度: " + Length);

// 归一化
FVector Normal = Location.GetSafeNormal();

// 距离计算
FVector Other = FVector(200, 300, 100);
float Distance = Location.Distance(Other);
[[Print]]("距离: " + Distance);

// 旋转向量
FVector Rotated = Location.RotateAngleAxis(45, FVector(0, 0, 1));
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
