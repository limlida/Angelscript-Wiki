---
title: "UTextBlock"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UTextBlock.md
verified_by: agent
unverified_items: []
---

## 概述

UTextBlock 是简单的静态文本控件，用于在 UI 中显示文本。

**特性**：无子控件、文本显示

## 主要属性

### 文本外观

- `FSlateFontInfo Font` - 文本渲染字体
- `FSlateColor ColorAndOpacity` - 文本颜色
- `FLinearColor ShadowColorAndOpacity` - 阴影颜色
- `FVector2D ShadowOffset` - 阴影偏移方向
- `FSlateBrush StrikeBrush` - 删除线画刷

### 文本行为

- `float32 MinDesiredWidth` - 文本最小期望宽度
- `ETextOverflowPolicy TextOverflowPolicy` - 文本溢出策略
- `ETextTransformPolicy TextTransformPolicy` - 文本转换策略（大写/小写等）
- `bool bSimpleTextMode` - 简单文本模式，禁用文本整形、换行和对齐以获得更快性能
- `bool bWrapWithInvalidationPanel` - 是否自动用失效面板包裹

## 主要方法

### 文本设置

- `FText GetText() const` - 获取文本
- `SetText(FText InText)` - 设置文本（会清除绑定）

### 外观设置

- `SetColorAndOpacity(FSlateColor InColorAndOpacity)` - 设置文本颜色
- `SetOpacity(float32 InOpacity)` - 设置文本不透明度
- `SetFont(FSlateFontInfo InFontInfo)` - 设置字体
- `SetShadowColorAndOpacity(FLinearColor InShadowColorAndOpacity)` - 设置阴影颜色
- `SetShadowOffset(FVector2D InShadowOffset)` - 设置阴影偏移
- `SetMinDesiredWidth(float32 InMinDesiredWidth)` - 设置最小期望宽度
- `SetStrikeBrush(FSlateBrush InStrikeBrush)` - 设置删除线画刷

### 行为设置

- `SetAutoWrapText(bool InAutoTextWrap)` - 设置自动换行
- `SetTextOverflowPolicy(ETextOverflowPolicy InOverflowPolicy)` - 设置溢出策略
- `SetTextTransformPolicy(ETextTransformPolicy InTransformPolicy)` - 设置转换策略

### 材质

- `UMaterialInstanceDynamic GetDynamicFontMaterial()` - 获取动态字体材质
- `UMaterialInstanceDynamic GetDynamicOutlineMaterial()` - 获取动态轮廓材质
- `SetFontMaterial(UMaterialInterface InMaterial)` - 设置字体材质
- `SetFontOutlineMaterial(UMaterialInterface InMaterial)` - 设置字体轮廓材质

## 示例

```angelscript
// 设置文本内容
UTextBlock MyText = GetTextWidget();
MyText.SetText(FText::FromString("Hello World"));

// 设置文本颜色
MyText.SetColorAndOpacity(FSlateColor(FLinearColor(1.0f, 1.0f, 0.0f, 1.0f)));

// 设置阴影
MyText.SetShadowColorAndOpacity(FLinearColor(0.0f, 0.0f, 0.0f, 0.5f));
MyText.SetShadowOffset(FVector2D(2.0f, 2.0f));

// 获取文本
FText CurrentText = MyText.GetText();
Print("当前文本: " + CurrentText.ToString());
```

## 相关页面

- [[UUserWidget]] - 用户控件基类
- [[UButton]] - 按钮控件

## 来源

- [UTextBlock.md](../../raw/API/Global/UTextBlock.md)
