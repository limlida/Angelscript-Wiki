---
title: "UMaterialInterface"
category: entities
date: 2026-05-09
tags:
  - 材质
  - 渲染
---

## 概述

UMaterialInterface 是材质接口的基类，是 UMaterial 和 UMaterialInstance 的共同父类。它提供了查询材质属性（混合模式、物理材质等）的接口。

## 主要方法

- `UMaterial GetBaseMaterial()` - 沿父链查找到基础 Material
- `EBlendMode GetBlendMode() const` - 获取混合模式（不透明/半透明/遮罩/叠加等）
- `UPhysicalMaterial GetPhysicalMaterial() const` - 获取物理材质
- `UPhysicalMaterial GetPhysicalMaterialFromMap(int Index) const` - 从遮罩映射获取物理材质
- `UMaterialInterface GetNaniteOverideMaterial() const` - 获取 Nanite 覆盖材质

## 示例

```angelscript
// 查询材质属性
UMaterialInterface Mat = MeshComp.GetMaterial(0);
if (Mat != nullptr)
{
    EBlendMode Blend = Mat.GetBlendMode();
    UPhysicalMaterial PhysMat = Mat.GetPhysicalMaterial();
    UMaterial BaseMat = Mat.GetBaseMaterial();
}
```

## 继承关系

- **UMaterialInterface** → UMaterial（材质资产）
- **UMaterialInterface** → UMaterialInstance → [[UMaterialInstanceDynamic]]（动态材质实例）

## 相关页面

- [[UMaterialInstanceDynamic]] - 动态材质实例
- [[UMeshComponent]] - 网格组件

## 来源

- [UMaterialInterface.md](../../raw/API/Global/UMaterialInterface.md)
