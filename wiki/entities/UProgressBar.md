---
title: "UProgressBar"
category: entities
date: 2026-05-09
tags:
  - UI
  - Widget
  - UMG
---

## 概述

UProgressBar 是进度条控件，显示一个填充条，可以重新样式化以适应各种用途（血条、加载条等）。

**特性**：无子控件

## 主要属性

- `float32 Percent` - 进度条填充位置，范围 0~1
- `FLinearColor FillColorAndOpacity` - 填充颜色和不透明度
- `FProgressBarStyle WidgetStyle` - 进度条样式
- `EProgressBarFillStyle BarFillStyle` - 填充视觉样式（缩放或遮罩）
- `EProgressBarFillType BarFillType` - 填充方向
- `FVector2D BorderPadding` - 边框填充
- `bool bIsMarquee` - 是否显示为跑马灯模式

## 主要方法

- `SetPercent(float32 InPercent)` - 设置进度值（0~1）
- `SetFillColorAndOpacity(FLinearColor InColor)` - 设置填充颜色
- `SetIsMarquee(bool InbIsMarquee)` - 设置跑马灯模式

## 示例

```angelscript
// 设置血条进度
UProgressBar HealthBar = GetHealthBarWidget();
HealthBar.SetPercent(0.75f); // 75% 血量
HealthBar.SetFillColorAndOpacity(FLinearColor(0.0f, 1.0f, 0.0f, 1.0f)); // 绿色

// 低血量变红
float HealthPercent = CurrentHealth / MaxHealth;
HealthBar.SetPercent(HealthPercent);
if (HealthPercent < 0.3f)
{
    HealthBar.SetFillColorAndOpacity(FLinearColor(1.0f, 0.0f, 0.0f, 1.0f));
}

// 跑马灯模式（加载中）
HealthBar.SetIsMarquee(true);
```

## 相关页面

- [[UUserWidget]] - 用户控件基类
- [[UImage]] - 图片控件

## 来源

- [UProgressBar.md](../../raw/API/Global/UProgressBar.md)
