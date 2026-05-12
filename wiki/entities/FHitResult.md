---
title: "FHitResult"
category: entities
date: 2026-05-08
tags:
  - Struct
  - 碰撞

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FHitResult.md
verified_by: agent
unverified_items: []
---

## 概述

FHitResult 是碰撞/射线检测结果结构体，包含一次命中的信息，如命中点、表面法线、距离等。

## 主要属性

- `[[FName]] BoneName` - 我们命中的骨骼名称（对于骨骼网格）
- `float32 Distance` - 从 TraceStart 到世界空间 Location 的距离。如果初始重叠（追踪在另一个碰撞物体内开始），此值为 0
- `uint8 ElementIndex` - 被命中项的索引，也是特定于命中图元的
- `int FaceIndex` - 命中的面索引（对于三角形网格的复杂命中）
- `[[FVector]] ImpactNormal` - 被命中物体在世界空间中的法线
- `[[FVector]] ImpactPoint` - 追踪形状（盒子、球体、射线等）与被击中物体的实际接触点
- `int Item` - 关于被命中项的额外数据（特定于命中图元）
- `[[FVector]] Location` - 在发生命中时移动形状最终所处的位置
- `[[FName]] MyBoneName` - 参与命中事件的“我的”骨骼名称（对于两个骨骼网格碰撞）
- `int MyItem` - 如果命中结果来自碰撞，这里会有关于击中第二个项的项的额外信息
- `[[FVector]] Normal` - 被扫过的物体的世界空间法线
- `float32 PenetrationDepth` - 如果测试从穿透开始并且可以计算退出向量，此值是沿法线移动以退出穿透的距离
- `float32 Time` - 沿追踪方向的“时间”（0.0 到 1.0），如果有命中
- `[[FVector]] TraceEnd` - 追踪终点
- `[[FVector]] TraceStart` - 追踪起点

## 主要方法

- `[[AActor]] GetActor() const` - 被追踪命中的组件所属的 Actor
- `bool GetbBlockingHit() const` - 指示此命中是否是阻断碰撞的结果
- `bool GetbStartPenetrating() const` - 追踪是否从穿透开始，即初始阻断重叠
- `[[UPrimitiveComponent]] GetComponent() const` - 被追踪命中的原始组件
- `[[UPhysicalMaterial]] GetPhysMaterial() const` - 被命中的物理材质
- `Reset(float32 InTime = 1.000000, bool bPreserveTraceData = true)` - 重置命中结果，同时可选择保存 TraceStart 和 TraceEnd
- `SetActor([[AActor]] Actor)` - 设置被追踪命中的组件所属的 Actor
- `SetbBlockingHit(bool bIsBlocking)` - 设置是否是阻断碰撞
- `SetbStartPenetrating(bool bStartPenetrating)` - 设置是否从穿透开始
- `SetComponent([[UPrimitiveComponent]] Component)` - 设置被追踪命中的原始组件
- `SetPhysMaterial([[UPhysicalMaterial]] PhysMaterial)` - 设置被命中的物理材质
- `FHitResult& opAssign(FHitResult Other)` - 赋值操作符

## 示例

```angelscript
// 获取命中 Actor
[[AActor]] HitActor = HitResult.GetActor();
if (HitActor != nullptr) {
    [[Print]]("命中 Actor: " + HitActor.GetName());
}

// 获取命中位置
[[FVector]] HitLocation = HitResult.Location;
[[FVector]] ImpactPoint = HitResult.ImpactPoint;
[[FVector]] ImpactNormal = HitResult.ImpactNormal;

// 获取命中距离
float Distance = HitResult.Distance;

// 获取命中时间
float Time = HitResult.Time;

// 获取命中 Component
[[UPrimitiveComponent]] HitComponent = HitResult.GetComponent();

// 检查是否是阻断命中
bool bIsBlocking = HitResult.GetbBlockingHit();

// 检查是否起始就在穿透中
bool bStartPenetrating = HitResult.GetbStartPenetrating();

// 重置命中结果
HitResult.Reset(1.0f, true);
```

## 来源

- [AngelScript_API.md](../../raw/AngelScript_API.md)
