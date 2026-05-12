---
title: "UMeshComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 渲染
  - 网格体

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UMeshComponent.md
verified_by: agent
unverified_items:
  - CreateAndSetMaterialInstanceDynamic
  - CreateAndSetMaterialInstanceDynamicFromReplIdx
  - CreateDynamicMaterialInstance
  - GetMaterial
  - GetMaterialIndex
  - GetMaterialSlotNames
  - GetNumMaterials
  - GetOverrideMaterial
  - IsMaterialSlotNameValid
  - IsVisible
  - SetMaterial
  - SetVisibility
  - ToggleVisibility
---

## 概述

UMeshComponent 是所有可见网格体组件的基类，继承自 [[UPrimitiveComponent]]。它管理材质、覆盖材质和渲染相关设置。常见的子类包括 UStaticMeshComponent 和 USkeletalMeshComponent。

## 主要属性

### 材质

- `TArray<UMaterialInterface> OverrideMaterials` - 覆盖材质数组，按材质索引覆盖
- `int32 MaterialIndexPreview` - 编辑器中预览的材质索引
- `int32 NumMaterials` - 材质数量

### 渲染

- `bool bCastShadow` - 是否投射阴影
- `bool bVisibleInReflectionCaptures` - 是否在反射捕获中可见
- `bool bVisibleInRealTimeSkyCaptures` - 是否在实时天空捕获中可见
- `bool bVisibleInRayTracing` - 是否在光线追踪中可见

## 主要方法

### 材质操作

- `int32 GetNumMaterials() const` - 获取材质段数量
- `UMaterialInterface GetMaterial(int32 ElementIndex) const` - 按索引获取材质
- `UMaterialInterface GetOverrideMaterial(int32 ElementIndex) const` - 按索引获取覆盖材质
- `SetMaterial(int32 ElementIndex, UMaterialInterface Material)` - 按索引设置覆盖材质
- `int32 GetMaterialIndex(FName MaterialSlotName) const` - 按名称获取材质索引
- `TArray<FName> GetMaterialSlotNames() const` - 获取所有材质槽名称
- `bool IsMaterialSlotNameValid(FName MaterialSlotName) const` - 材质槽名是否有效

### 动态材质

- `UMaterialInstanceDynamic CreateDynamicMaterialInstance(int32 ElementIndex, UMaterialInterface Parent = nullptr, FName OptionalName = NAME_None)` - 创建动态材质实例
- `UMaterialInstanceDynamic CreateAndSetMaterialInstanceDynamic(int32 ElementIndex)` - 创建并设置动态材质实例
- `UMaterialInstanceDynamic CreateAndSetMaterialInstanceDynamicFromReplIdx(int32 ElementIndex)` - 从复制索引创建并设置动态材质实例

### 可见性

- `bool IsVisible() const` - 是否可见
- `SetVisibility(bool bNewVisibility, bool bPropagateToChildren = false)` - 设置可见性
- `ToggleVisibility(bool bPropagateToChildren = false)` - 切换可见性

## 示例

```angelscript
// 获取和设置材质
UMeshComponent Mesh = GetMesh();
UMaterialInterface Mat = Mesh.GetMaterial(0);
Mesh.SetMaterial(0, NewMaterial);

// 创建动态材质实例
UMaterialInstanceDynamic DynMat = Mesh.CreateDynamicMaterialInstance(0);
if (DynMat != nullptr)
{
    DynMat.SetScalarParameterValue(n"Opacity", 0.5f);
    DynMat.SetVectorParameterValue(n"Color", FLinearColor(1.0f, 0.0f, 0.0f, 1.0f));
}

// 切换可见性
Mesh.ToggleVisibility();
```

## 继承关系

- [[UPrimitiveComponent]] → **UMeshComponent** → UStaticMeshComponent / USkeletalMeshComponent

## 相关页面

- [[UPrimitiveComponent]] - 基元组件基类
- [[UStaticMeshComponent]] - 静态网格组件
- [[USkeletalMeshComponent]] - 骨骼网格组件

## 来源

- [UMeshComponent.md](../../raw/API/Global/UMeshComponent.md)
