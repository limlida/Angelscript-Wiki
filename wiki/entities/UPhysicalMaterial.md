---
title: "UPhysicalMaterial"
category: entities
date: 2026-05-09
tags:
  - 物理
  - 材质

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UPhysicalMaterial.md
verified_by: agent
unverified_items: []
---

## 概述

UPhysicalMaterial 定义物理对象与世界动态交互时的响应方式。它控制摩擦力、弹性、密度等物理属性，以及表面类型和伤害修正。

**核心用途**：为碰撞表面定义物理属性，影响角色移动、物体滑动、弹跳等行为。

## 主要属性

### 摩擦力

- `float32 Friction` - 摩擦力（0=无摩擦，值越大越难滑动）
- `float32 StaticFriction` - 静摩擦力
- `float32 BaseFrictionImpulse` - 基础摩擦冲量（"粘性"效果）
- `EFrictionCombineMode FrictionCombineMode` - 摩擦力组合模式
- `bool bOverrideFrictionCombineMode` - 是否覆盖摩擦力组合模式

### 弹性

- `float32 Restitution` - 弹性/反弹系数（0=不反弹，1=完全反弹）
- `EFrictionCombineMode RestitutionCombineMode` - 弹性组合模式
- `bool bOverrideRestitutionCombineMode` - 是否覆盖弹性组合模式

### 密度和质量

- `float32 Density` - 密度（克/立方厘米），用于计算质量
- `float32 RaiseMassToPower` - 质量指数（值<=1，大物体不会过重）

### 休眠阈值

- `float32 SleepLinearVelocityThreshold` - 线性速度休眠阈值
- `float32 SleepAngularVelocityThreshold` - 角速度休眠阈值
- `int SleepCounterThreshold` - 休眠计数阈值

### 表面类型

- `EPhysicalSurface SurfaceType` - 物理表面类型（在项目设置中定义）

### 伤害

- `FPhysicalMaterialDamageModifier DamageModifier` - 伤害修正

### 其他

- `FLinearColor DebugColor` - 调试视图颜色
- `FPhysicalMaterialStrength Strength` - 材质强度
- `EPhysicalMaterialSoftCollisionMode SoftCollisionMode` - 软碰撞模式
- `float32 SoftCollisionThickness` - 软碰撞厚度

## 示例

```angelscript
// 创建冰面物理材质
UPhysicalMaterial IceMaterial = UPhysicalMaterial(this);
IceMaterial.Friction = 0.1f;
IceMaterial.Restitution = 0.0f;
IceMaterial.SurfaceType = EPhysicalSurface::SurfaceType1;

// 创建橡胶物理材质
UPhysicalMaterial RubberMaterial = UPhysicalMaterial(this);
RubberMaterial.Friction = 0.8f;
RubberMaterial.Restitution = 0.9f;
RubberMaterial.SurfaceType = EPhysicalSurface::SurfaceType2;
```

## 相关页面

- [[UPrimitiveComponent]] - 基元组件（使用物理材质）

## 来源

- [UPhysicalMaterial.md](../../raw/API/Global/UPhysicalMaterial.md)
