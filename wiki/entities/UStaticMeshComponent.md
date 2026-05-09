---
title: "UStaticMeshComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 渲染
  - 静态网格
---

## 概述

UStaticMeshComponent 用于创建 UStaticMesh 的实例。静态网格是由一组静态多边形组成的几何体，是最常用的可视组件之一。

**核心用途**：关卡装饰、道具、武器模型、碰撞体可视化等。

## 主要属性

- `UStaticMesh StaticMesh` - 此组件使用的静态网格
- `bool bEvaluateWorldPositionOffset` - 是否评估世界位置偏移（WPO）
- `int WorldPositionOffsetDisableDistance` - 禁用 WPO 的距离（0 = 永不禁用）
- `bool bUseDefaultCollision` - 是否使用静态网格资产中的碰撞配置
- `bool bReverseCulling` - 是否反转背面剔除
- `int ForcedLodModel` - 强制 LOD 级别（0=自动，>0=强制指定级别）
- `int MinLOD` - 最小 LOD 级别
- `bool bCastDistanceFieldIndirectShadow` - 是否使用距离场间接阴影
- `float32 DistanceFieldSelfShadowBias` - 距离场自阴影偏移
- `float32 StreamingDistanceMultiplier` - 流送纹理分辨率倍数

## 主要方法

### 网格设置

- `bool SetStaticMesh(UStaticMesh NewMesh)` - 更换静态网格
- `SetForcedLodModel(int NewForcedLodModel)` - 设置强制 LOD 级别

### WPO 控制

- `SetEvaluateWorldPositionOffset(bool NewValue)` - 设置是否评估 WPO
- `SetWorldPositionOffsetDisableDistance(int NewValue)` - 设置 WPO 禁用距离
- `bool GetInitialEvaluateWorldPositionOffset()` - 获取初始 WPO 评估状态
- `UpdateInitialEvaluateWorldPositionOffset()` - 手动更新初始 WPO 评估状态

### 其他

- `SetReverseCulling(bool ReverseCulling)` - 设置反转剔除
- `SetDistanceFieldSelfShadowBias(float32 NewValue)` - 设置距离场自阴影偏移
- `SetForceDisableNanite(bool bInForceDisableNanite)` - 强制禁用 Nanite 渲染
- `GetLocalBounds(FVector& Min, FVector& Max) const` - 获取本地边界

## 示例

```angelscript
// 设置静态网格
UStaticMeshComponent MeshComp = GetStaticMeshComponent();
MeshComp.SetStaticMesh(MyStaticMesh);

// 运行时切换网格
MeshComp.SetStaticMesh(DamagedMesh);

// 控制 WPO
MeshComp.SetEvaluateWorldPositionOffset(false);
MeshComp.SetWorldPositionOffsetDisableDistance(5000);
```

## 继承关系

- [[UMeshComponent]] → **UStaticMeshComponent**

## 相关页面

- [[UMeshComponent]] - 网格组件基类
- [[USkeletalMeshComponent]] - 骨骼网格组件

## 来源

- [UStaticMeshComponent.md](../../raw/API/Global/UStaticMeshComponent.md)
