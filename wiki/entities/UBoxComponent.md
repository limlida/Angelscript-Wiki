---
title: "UBoxComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 碰撞
  - 物理形状
---

## 概述

UBoxComponent 是盒形碰撞基元，用于简单的盒形碰撞检测和物理查询。它继承自 UShapeComponent，是最常用的碰撞形状之一。

**核心用途**：触发区域、碰撞检测、物理查询边界、角色包围盒。

## 主要属性

- `FVector BoxExtent` - 盒体半范围（从中心到边的距离），默认 (32, 32, 32)

## 主要方法

### 尺寸设置

- `SetBoxExtent(FVector InBoxExtent, bool bUpdateOverlaps = true)` - 设置盒体半范围
- `SetBoxExtentNoNotification(FVector InBoxExtent)` - 设置盒体半范围但不触发重叠通知

### 查询

- `FVector GetUnscaledBoxExtent() const` - 获取未缩放的盒体半范围
- `FVector GetScaledBoxExtent() const` - 获取缩放后的盒体半范围
- `FVector GetBoxExtent() const` - 获取盒体半范围

## 示例

```angelscript
// 创建盒形碰撞区域
UBoxComponent TriggerBox = UBoxComponent(this);
TriggerBox.SetBoxExtent(FVector(200.0f, 200.0f, 100.0f));
TriggerBox.SetCollisionProfileName(n"Trigger");
TriggerBox.AttachToComponent(RootComponent, FAttachmentTransformRules::KeepRelativeTransform);

// 动态调整大小
TriggerBox.SetBoxExtent(FVector(300.0f, 300.0f, 150.0f));
```

## 继承关系

- [[UShapeComponent]] → **UBoxComponent**

## 相关页面

- [[USphereComponent]] - 球形碰撞
- [[UCapsuleComponent]] - 胶囊体碰撞
- [[UPrimitiveComponent]] - 基元组件基类

## 来源

- [UBoxComponent.md](../../raw/API/Global/UBoxComponent.md)
