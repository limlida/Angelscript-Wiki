---
title: "AStaticMeshActor"
category: entities
date: 2026-05-09
tags:
  - Actor
  - 静态网格

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/AStaticMeshActor.md
verified_by: agent
unverified_items: []
---

## 概述

AStaticMeshActor 是在关卡中放置静态网格的 Actor。静态网格是不会动画或变形的几何体，渲染效率高于其他类型。从内容浏览器拖入关卡的静态网格会自动转换为 StaticMeshActor。

## 主要属性

- `UStaticMeshComponent StaticMeshComponent` - 静态网格组件
- `bool bStaticMeshReplicateMovement` - 是否复制移动（自动设置 RemoteRole 和 bReplicateMovement）
- `EPhysicsReplicationMode StaticMeshPhysicsReplicationMode` - 物理复制模式
- `ENavDataGatheringMode NavigationGeometryGatheringMode` - 导航几何收集模式

## 主要方法

- `SetMobility(EComponentMobility InMobility)` - 设置移动性类型（静态/可移动/半固定）

## 示例

```angelscript
// 获取静态网格
AStaticMeshActor SMActor = Cast<AStaticMeshActor>(MyActor);
if (SMActor != nullptr)
{
    UStaticMeshComponent MeshComp = SMActor.StaticMeshComponent;
    MeshComp.SetStaticMesh(NewMesh);
}

// 设置移动性
SMActor.SetMobility(EComponentMobility::Movable);
```

## 相关页面

- [[UStaticMeshComponent]] - 静态网格组件

## 来源

- [AStaticMeshActor.md](../../raw/API/Global/AStaticMeshActor.md)
