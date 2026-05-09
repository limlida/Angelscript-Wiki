---
title: "UCanvasPanel"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
  - 布局
---

## 概述

UCanvasPanel 是画布面板，允许子控件放置在任意位置，支持锚点和 Z 序。适合手动布局 UI，但不适合程序化自动排列。

**特性**：多子控件、绝对定位、锚点

## 主要方法

- `UCanvasPanelSlot AddChildToCanvas(UWidget Content)` - 添加子控件到画布

## 示例

```angelscript
// 创建画布面板并添加控件
UCanvasPanel Canvas = UCanvasPanel(this);
UImage BG = UImage(this);
BG.SetBrushFromTexture(BGTexture);
UTextBlock Label = UTextBlock(this);
Label.SetText(FText::FromString("Canvas Item"));

UCanvasPanelSlot BGSlot = Canvas.AddChildToCanvas(BG);
BGSlot.SetAnchors(FAnchors(0.0f, 0.0f));
BGSlot.SetPosition(FVector2D(100.0f, 50.0f));
BGSlot.SetSize(FVector2D(200.0f, 100.0f));
```

## 相关页面

- [[UUserWidget]] - 用户控件基类
- [[UOverlay]] - 堆叠布局控件

## 来源

- [UCanvasPanel.md](../../raw/API/Global/UCanvasPanel.md)
