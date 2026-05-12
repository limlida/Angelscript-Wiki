---
title: "UBorder"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
  - 布局

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UBorder.md
verified_by: agent
unverified_items:
  - GetDynamicMaterialSetBrush SetBrushFromTexture SetBrushFromMaterial SetBrushColor SetContentColorAndOpacity SetPadding SetHorizontalAlignment SetVerticalAlignment SetDesiredSizeScale
---

## 概述

UBorder 是容器控件，包含一个子控件并提供背景图片和可调填充。常用于创建带背景的面板、按钮容器等。

**特性**：单子控件、背景图片

## 主要属性

- `FSlateBrush Background` - 背景画刷
- `FLinearColor BrushColor` - 背景图片颜色和不透明度
- `FLinearColor ContentColorAndOpacity` - 内容颜色和不透明度乘数
- `FVector2D DesiredSizeScale` - 期望尺寸缩放
- `EHorizontalAlignment HorizontalAlignment` - 内容水平对齐
- `EVerticalAlignment VerticalAlignment` - 内容垂直对齐
- `FMargin Padding` - 内容与边框之间的填充

## 主要方法

- `SetBrush(FSlateBrush InBrush)` - 设置背景画刷
- `SetBrushFromTexture(UTexture2D Texture)` - 从纹理设置背景
- `SetBrushFromMaterial(UMaterialInterface Material)` - 从材质设置背景
- `SetBrushColor(FLinearColor InBrushColor)` - 设置背景颜色
- `SetContentColorAndOpacity(FLinearColor InContentColorAndOpacity)` - 设置内容颜色
- `SetPadding(FMargin InPadding)` - 设置填充
- `SetHorizontalAlignment(EHorizontalAlignment InHorizontalAlignment)` - 设置水平对齐
- `SetVerticalAlignment(EVerticalAlignment InVerticalAlignment)` - 设置垂直对齐
- `SetDesiredSizeScale(FVector2D InScale)` - 设置期望尺寸缩放
- `UMaterialInstanceDynamic GetDynamicMaterial()` - 获取动态材质实例

## 示例

```angelscript
// 设置边框背景
UBorder MyBorder = GetBorderWidget();
MyBorder.SetBrushFromTexture(PanelTexture);
MyBorder.SetBrushColor(FLinearColor(1.0f, 1.0f, 1.0f, 0.8f));
MyBorder.SetPadding(FMargin(10.0f));

// 使用动态材质
UMaterialInstanceDynamic DynMat = MyBorder.GetDynamicMaterial();
if (DynMat != nullptr)
{
    DynMat.SetScalarParameterValue(n"Glow", 1.0f);
}
```

## 相关页面

- [[UUserWidget]] - 用户控件基类
- [[UOverlay]] - 堆叠布局控件

## 来源

- [UBorder.md](../../raw/API/Global/UBorder.md)
