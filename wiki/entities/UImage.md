---
title: "UImage"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
---

## 概述

UImage 是图片控件，允许在 UI 中显示 Slate Brush、纹理或材质。

**特性**：无子控件

## 主要属性

- `FSlateBrush Brush` - 要绘制的图片
- `FLinearColor ColorAndOpacity` - 颜色和不透明度
- `bool bFlipForRightToLeftFlowDirection` - 当本地化流向为从右到左时是否翻转图片

## 主要方法

### 设置图片

- `SetBrush(FSlateBrush InBrush)` - 设置画刷
- `SetBrushFromAsset(USlateBrushAsset Asset)` - 从资产设置画刷
- `SetBrushFromTexture(UTexture2D Texture, bool bMatchSize = false)` - 从纹理设置画刷
- `SetBrushFromSoftTexture(TSoftObjectPtr<UTexture2D> SoftTexture, bool bMatchSize = false)` - 从软引用纹理设置画刷
- `SetBrushFromMaterial(UMaterialInterface Material)` - 从材质设置画刷
- `SetBrushFromSoftMaterial(TSoftObjectPtr<UMaterialInterface> SoftMaterial)` - 从软引用材质设置画刷
- `SetBrushFromTextureDynamic(UTexture2DDynamic Texture, bool bMatchSize = false)` - 从动态纹理设置画刷
- `SetBrushResourceObject(UObject ResourceObject)` - 设置画刷资源对象

### 外观设置

- `SetColorAndOpacity(FLinearColor InColorAndOpacity)` - 设置颜色和不透明度
- `SetOpacity(float32 InOpacity)` - 设置不透明度
- `SetBrushTintColor(FSlateColor TintColor)` - 设置画刷着色
- `SetDesiredSizeOverride(FVector2D DesiredSize)` - 设置期望大小覆盖

### 材质

- `UMaterialInstanceDynamic GetDynamicMaterial()` - 获取动态材质实例

## 示例

```angelscript
// 设置图片纹理
UImage MyImage = GetImageWidget();
MyImage.SetBrushFromTexture(MyTexture, false);

// 设置颜色和不透明度
MyImage.SetColorAndOpacity(FLinearColor(1.0f, 1.0f, 1.0f, 0.8f));

// 使用材质
MyImage.SetBrushFromMaterial(MyUIMaterial);

// 获取动态材质实例（用于运行时参数修改）
UMaterialInstanceDynamic DynMat = MyImage.GetDynamicMaterial();
if (DynMat != nullptr)
{
    DynMat.SetScalarParameterValue(n"Progress", 0.5f);
}
```

## 相关页面

- [[UUserWidget]] - 用户控件基类
- [[UProgressBar]] - 进度条控件

## 来源

- [UImage.md](../../raw/API/Global/UImage.md)
