---
title: "UMaterialInstanceDynamic"
category: entities
date: 2026-05-09
tags:
  - 材质
  - 渲染
  - 动态
---

## 概述

UMaterialInstanceDynamic（MID）是动态材质实例，允许在运行时修改材质参数。通过 [[UMeshComponent]] 的 `CreateDynamicMaterialInstance()` 或 [[UImage]] 的 `GetDynamicMaterial()` 创建。

**核心用途**：运行时修改材质参数（颜色、标量、纹理），实现动态视觉效果。

## 主要方法

### 标量参数

- `SetScalarParameterValue(FName ParameterName, float32 Value)` - 设置浮点参数
- `float32 GetScalarParameterValue(FName ParameterName)` - 获取浮点参数

### 向量参数

- `SetVectorParameterValue(FName ParameterName, FLinearColor Value)` - 设置颜色参数
- `FLinearColor GetVectorParameterValue(FName ParameterName)` - 获取颜色参数

### 纹理参数

- `SetTextureParameterValue(FName ParameterName, UTexture Value)` - 设置纹理参数
- `UTexture GetTextureParameterValue(FName ParameterName)` - 获取纹理参数

### 复制和插值

- `CopyParameterOverrides(UMaterialInstance MaterialInstance)` - 从另一个材质实例复制参数覆盖
- `CopyMaterialInstanceParameters(UMaterialInterface Source, bool bQuickParametersOnly = false)` - 从材质接口复制参数
- `InterpolateMaterialInstanceParameters(UMaterialInstance SourceA, UMaterialInstance SourceB, float32 Alpha)` - 在两个材质实例间插值参数

## 示例

```angelscript
// 创建动态材质实例
UMaterialInstanceDynamic DynMat = MeshComp.CreateDynamicMaterialInstance(0);
if (DynMat != nullptr)
{
    // 设置颜色
    DynMat.SetVectorParameterValue(n"BaseColor", FLinearColor(1.0f, 0.0f, 0.0f, 1.0f));

    // 设置浮点参数
    DynMat.SetScalarParameterValue(n"Opacity", 0.5f);
    DynMat.SetScalarParameterValue(n"EmissiveStrength", 3.0f);

    // 设置纹理
    DynMat.SetTextureParameterValue(n"DiffuseMap", MyTexture);
}

// 图片控件的动态材质
UMaterialInstanceDynamic ImageMat = MyImage.GetDynamicMaterial();
if (ImageMat != nullptr)
{
    ImageMat.SetScalarParameterValue(n"Progress", 0.75f);
}

// 材质插值
DynMat.InterpolateMaterialInstanceParameters(MatA, MatB, 0.5f);
```

## 相关页面

- [[UMeshComponent]] - 网格组件（创建 MID 的入口）
- [[UImage]] - 图片控件（支持动态材质）

## 来源

- [UMaterialInstanceDynamic.md](../../raw/API/Global/UMaterialInstanceDynamic.md)
