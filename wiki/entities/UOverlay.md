---
title: "UOverlay"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
  - 布局
---

## 概述

UOverlay 允许控件堆叠在同一区域，每层使用简单的流式布局。这是最常用的布局控件之一，适合需要控件重叠的场景。

**特性**：多子控件、堆叠布局

## 主要方法

- `UOverlaySlot AddChildToOverlay(UWidget Content)` - 添加子控件到 Overlay
- `bool ReplaceOverlayChildAt(int Index, UWidget Content)` - 替换指定索引的子控件

## 示例

```angelscript
// 创建 Overlay 并添加堆叠控件
UOverlay MyOverlay = UOverlay(this);
UImage Background = UImage(this);
Background.SetBrushFromTexture(BGTexture);
UTextBlock Label = UTextBlock(this);
Label.SetText(FText::FromString("Overlaid Text"));

MyOverlay.AddChildToOverlay(Background);
MyOverlay.AddChildToOverlay(Label);
```

## 相关页面

- [[UUserWidget]] - 用户控件基类

## 来源

- [UOverlay.md](../../raw/API/Global/UOverlay.md)
