---
title: "FTransform"
category: entities
date: 2026-05-08
tags:
  - Struct
  - 变换

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FTransform.md
verified_by: agent
unverified_items: []
---

## 概述

FTransform 是完整的变换，包含位置、旋转和缩放。它可以表示一个物体在三维空间中的完整空间变换。

## 主要属性

- FTranslation - 位置分量
- FRotation - 旋转分量
- FScale3D - 缩放分量

## 主要方法

### 基本操作
- `FTransform Inverse() const` - 逆变换
- `FTransform opMul(FTransform Other) const` - 变换相乘
- `FTransform opMul([[FQuat]] Other) const` - 与四元数相乘
- `Blend(FTransform Atom1, FTransform Atom2, float32 Alpha)` - 混合两个变换
- `BlendWith(FTransform OtherAtom, float32 Alpha)` - 与此变换混合

### 缩放操作
- `ScaleTranslation([[FVector]] InScale3D)` - 缩放位置
- `ScaleTranslation(float Scale)` - 缩放位置（统一缩放）
- `RemoveScaling(float Tolerance = SMALL_NUMBER)` - 移除缩放

### 变换操作
- `SetToRelativeTransform(FTransform Other)` - 设置为相对于另一个变换
- `Accumulate(FTransform SourceAtom)` - 累积另一个变换
- `FTransform GetRelativeTransform(FTransform Other) const` - 获取相对于另一个变换的变换
- `FTransform GetRelativeTransformReverse(FTransform Other) const` - 获取反向相对变换

### 位置变换
- `[[FVector]] TransformPosition([[FVector]] V) const` - 变换位置
- `[[FVector]] TransformPositionNoScale([[FVector]] V) const` - 变换位置（忽略缩放）
- `[[FVector]] InverseTransformPosition([[FVector]] V) const` - 逆变换位置
- `[[FVector]] InverseTransformPositionNoScale([[FVector]] V) const` - 逆变换位置（忽略缩放）

### 向量变换
- `[[FVector]] TransformVector([[FVector]] V) const` - 变换向量
- `[[FVector]] TransformVectorNoScale([[FVector]] V) const` - 变换向量（忽略缩放）
- `[[FVector]] InverseTransformVector([[FVector]] V) const` - 逆变换向量
- `[[FVector]] InverseTransformVectorNoScale([[FVector]] V) const` - 逆变换向量（忽略缩放）

### 旋转变换
- `[[FQuat]] TransformRotation([[FQuat]] Q) const` - 变换旋转
- `[[FQuat]] InverseTransformRotation([[FQuat]] Q) const` - 逆变换旋转
- `[[FRotator]] TransformRotation([[FRotator]] R) const` - 变换旋转（[[FRotator]]）
- `[[FRotator]] InverseTransformRotation([[FRotator]] R) const` - 逆变换旋转（[[FRotator]]）

### 访问和设置
- `[[FVector]] GetLocation() const` - 获取位置
- `[[FVector]] GetTranslation() const` - 获取位置
- `[[FVector]] GetScale3D() const` - 获取缩放
- `[[FQuat]] GetRotation() const` - 获取旋转
- `SetLocation([[FVector]] Origin)` - 设置位置
- `SetTranslation([[FVector]] Origin)` - 设置位置
- `AddToTranslation([[FVector]] Origin)` - 添加到位置
- `SetRotation([[FQuat]] NewRotation)` - 设置旋转
- `SetRotation([[FRotator]] NewRotation)` - 设置旋转（[[FRotator]]）
- `SetScale3D([[FVector]] NewScale3D)` - 设置缩放
- `SetTranslationAndScale3D([[FVector]] NewTranslation, [[FVector]] NewScale3D)` - 设置位置和缩放
- `ConcatenateRotation([[FQuat]] DeltaRotation)` - 连接旋转

### 矩阵转换
- `[[FMatrix]] ToMatrixWithScale() const` - 转换为带缩放的矩阵
- `[[FMatrix]] ToMatrixNoScale() const` - 转换为不带缩放的矩阵
- `[[FMatrix]] ToInverseMatrixWithScale() const` - 转换为带缩放的逆矩阵

### 比较和查询
- `bool IsRotationNormalized() const` - 检查旋转是否归一化
- `NormalizeRotation()` - 归一化旋转
- `bool TranslationEquals(FTransform Other, float Tolerance = KINDA_SMALL_NUMBER) const` - 位置是否相等
- `bool EqualsNoScale(FTransform Other, float Tolerance = KINDA_SMALL_NUMBER) const` - 忽略缩放是否相等
- `bool Equals(FTransform Other, float Tolerance = KINDA_SMALL_NUMBER) const` - 是否相等
- `bool ContainsNaN() const` - 是否包含 NaN
- `bool IsValid() const` - 是否有效
- `float GetDeterminant() const` - 获取行列式
- `[[FRotator]] Rotator() const` - 转换为 [[FRotator]]
- `float32 GetMaximumAxisScale() const` - 获取最大轴缩放
- `float32 GetMinimumAxisScale() const` - 获取最小轴缩放

### 其他
- `[[FVector]] SubtractTranslations(FTransform B) const` - 减去位置
- `bool InitFromString([[FString]] SourceString)` - 从字符串初始化
- `[[FString]] ToString() const` - 转换为字符串

## 示例

```angelscript
// 创建变换
FTransform Transform = FTransform();
Transform.SetLocation([[FVector]](100, 200, 50));
Transform.SetRotation([[FRotator]](0, 90, 0).Quaternion());
Transform.SetScale3D([[FVector]](2, 2, 2));

// 变换位置
[[FVector]] Position = [[FVector]](10, 0, 0);
[[FVector]] Transformed = Transform.TransformPosition(Position);

// 逆变换位置
[[FVector]] Original = Transform.InverseTransformPosition(Transformed);

// 获取变换的逆
FTransform Inverse = Transform.Inverse();

// 混合两个变换
FTransform A, B;
float Alpha = 0.5;
FTransform Blended;
Blended.Blend(A, B, Alpha);

// 转换为矩阵
[[FMatrix]] Matrix = Transform.ToMatrixWithScale();
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
