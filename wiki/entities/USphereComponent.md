---
title: "USphereComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 碰撞
  - 物理形状

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/USphereComponent.md
verified_by: agent
unverified_items: []
---

## 概述

USphereComponent 是球形碰撞基元，用于球形碰撞检测。球形碰撞是最高效的碰撞形状，因为球体检测只需要比较距离，无需复杂计算。

**核心用途**：高效碰撞检测、伤害范围判定、AI感知半径、简单的触发区域。

## 主要属性

- `float32 SphereRadius` - 球体半径，默认 32.0

## 主要方法

- `SetSphereRadius(float32 InSphereRadius, bool bUpdateOverlaps = true)` - 设置球体半径
- `float32 GetUnscaledSphereRadius() const` - 获取未缩放的球体半径
- `float32 GetShapeScale() const` - 获取形状缩放
- `float32 GetScaledSphereRadius() const` - 获取缩放后的球体半径

## 示例

```angelscript
// 创建球形碰撞区域
USphereComponent DamageSphere = USphereComponent(this);
DamageSphere.SetSphereRadius(500.0f);
DamageSphere.SetCollisionProfileName(n"OverlapAllDynamic");
DamageSphere.AttachToComponent(RootComponent, FAttachmentTransformRules::KeepRelativeTransform);

// 获取范围内所有 Actor
TArray<AActor> OverlappingActors;
DamageSphere.GetOverlappingActors(OverlappingActors);
for (int i = 0; i < OverlappingActors.Num(); ++i)
{
    Print("范围内: " + OverlappingActors[i].GetName());
}
```

## 继承关系

- [[UShapeComponent]] → **USphereComponent**

## 相关页面

- [[UBoxComponent]] - 盒形碰撞
- [[UCapsuleComponent]] - 胶囊体碰撞

## 来源

- [USphereComponent.md](../../raw/API/Global/USphereComponent.md)
