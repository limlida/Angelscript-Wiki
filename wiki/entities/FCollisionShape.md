---
title: "FCollisionShape"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 碰撞
  - 物理形状

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FCollisionShape.md
verified_by: agent
unverified_items: []
---

## 概述

FCollisionShape 描述碰撞检测使用的形状，支持线、盒体、球体和胶囊体四种形状。常用于射线检测和重叠检测中指定碰撞形状。

## 主要属性

- `ECollisionShape ShapeType` - 形状类型

## 主要方法

### 形状类型判断

- `bool IsLine() const` - 是否为线
- `bool IsBox() const` - 是否为盒体
- `bool IsCapsule() const` - 是否为胶囊体
- `bool IsSphere() const` - 是否为球体

### 形状设置

- `SetBox(FVector HalfExtent)` - 设置为盒体（半范围）
- `SetSphere(float32 Radius)` - 设置为球体（半径）
- `SetCapsule(float32 Radius, float32 HalfHeight)` - 设置为胶囊体（半径、半高）

### 尺寸获取

- `FVector GetExtent() const` - 获取范围
- `FVector GetBox() const` - 获取盒体半范围
- `float32 GetSphereRadius() const` - 获取球体半径
- `float32 GetCapsuleRadius() const` - 获取胶囊体半径
- `float32 GetCapsuleHalfHeight() const` - 获取胶囊体半高
- `float32 GetCapsuleAxisHalfLength() const` - 获取胶囊体轴向半长

### 其他

- `bool IsNearlyZero() const` - 是否接近零

## 示例

```angelscript
// 创建球体碰撞形状
FCollisionShape SphereShape;
SphereShape.SetSphere(100.0f);

// 创建盒体碰撞形状
FCollisionShape BoxShape;
BoxShape.SetBox(FVector(50.0f, 50.0f, 50.0f));

// 创建胶囊体碰撞形状
FCollisionShape CapsuleShape;
CapsuleShape.SetCapsule(34.0f, 88.0f);

// 用于重叠检测
TArray<FOverlapResult> Overlaps;
System.OverlapMultiByChannel(Overlaps, GetActorLocation(), FQuat(), ECollisionChannel::ECC_Pawn, SphereShape);
```

## 相关页面

- [[UBoxComponent]] - 盒形碰撞组件
- [[USphereComponent]] - 球形碰撞组件
- [[UCapsuleComponent]] - 胶囊体碰撞组件

## 来源

- [FCollisionShape.md](../../raw/API/Structs/FCollisionShape.md)
