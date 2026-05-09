---
title: "UCapsuleComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 碰撞
  - 物理形状
---

## 概述

UCapsuleComponent 是胶囊体碰撞基元，由两个半球和一个圆柱组成。它是 [[ACharacter]] 的默认碰撞形状，因为胶囊体非常适合人形角色的碰撞检测——没有尖锐角，不会卡在墙角。

**核心用途**：角色碰撞、人形碰撞体、移动碰撞检测。

## 主要属性

- `float32 CapsuleHalfHeight` - 胶囊体半高（从中心到顶部/底部的距离），默认 44.0
- `float32 CapsuleRadius` - 胶囊体半径，默认 22.0

## 主要方法

### 尺寸设置

- `SetCapsuleSize(float32 InRadius, float32 InHalfHeight, bool bUpdateOverlaps = true)` - 同时设置半径和半高
- `SetCapsuleHalfHeight(float32 HalfHeight, bool bUpdateOverlaps = true)` - 设置半高
- `SetCapsuleRadius(float32 Radius, bool bUpdateOverlaps = true)` - 设置半径

### 查询

- `float32 GetUnscaledCapsuleHalfHeight() const` - 获取未缩放的半高
- `float32 GetUnscaledCapsuleRadius() const` - 获取未缩放的半径
- `float32 GetScaledCapsuleHalfHeight() const` - 获取缩放后的半高
- `float32 GetScaledCapsuleRadius() const` - 获取缩放后的半径
- `float32 GetShapeScale() const` - 获取形状缩放

### 形状查询

- `bool IsZeroExtent() const` - 胶囊体是否为零大小

## 示例

```angelscript
// 设置角色碰撞胶囊体
UCapsuleComponent Capsule = GetCapsuleComponent();
Capsule.SetCapsuleSize(34.0f, 88.0f);

// 获取当前尺寸
float Radius = Capsule.GetUnscaledCapsuleRadius();
float HalfHeight = Capsule.GetUnscaledCapsuleHalfHeight();
Print("半径: " + Radius + " 半高: " + HalfHeight);

// 蹲下时缩小碰撞体
Capsule.SetCapsuleHalfHeight(44.0f);
Capsule.SetCapsuleRadius(34.0f);
```

## 继承关系

- [[UShapeComponent]] → **UCapsuleComponent**

## 相关页面

- [[ACharacter]] - Character 基类（默认使用胶囊体碰撞）
- [[UBoxComponent]] - 盒形碰撞
- [[USphereComponent]] - 球形碰撞

## 来源

- [UCapsuleComponent.md](../../raw/API/Global/UCapsuleComponent.md)
