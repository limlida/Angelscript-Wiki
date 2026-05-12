---
title: "FMargin"
category: entities
date: 2026-05-09
tags:
  - Struct
  - UI
  - 布局

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FMargin.md
verified_by: agent
unverified_items: []
---

## 概述

FMargin 描述 Widget 周围的空间（边距/填充）。常用于 [[UUserWidget]] 和各种 UI 控件的布局。

## 主要属性

- `float32 Left` - 左边距
- `float32 Right` - 右边距
- `float32 Top` - 上边距
- `float32 Bottom` - 下边距

## 主要方法

- `FVector2D GetTopLeft() const` - 获取左上角偏移
- `FVector2D GetDesiredSize() const` - 获取期望尺寸（水平=Left+Right, 垂直=Top+Bottom）
- `float32 GetTotalSpaceAlongHorizontal() const` - 水平总空间
- `float32 GetTotalSpaceAlongVertical() const` - 垂直总空间

### 运算

- `FMargin opMul(float32 Scale) const` - 标量乘法
- `FMargin opMul(FMargin InScale) const` - 逐分量乘法
- `FMargin opAdd(FMargin Other) const` - 加法
- `FMargin opSub(FMargin Other) const` - 减法
- `bool opEquals(FMargin Other) const` - 相等比较

## 示例

```angelscript
// 创建均匀边距
FMargin Padding = FMargin(10.0f); // 四边均为 10

// 创建非均匀边距
FMargin CustomPadding = FMargin(20.0f, 10.0f, 20.0f, 10.0f); // 左20 上10 右20 下10

// 设置 Widget 边距
UUserWidget MyWidget = GetMyWidget();
MyWidget.SetPadding(FMargin(5.0f));

// 获取期望尺寸
FVector2D Size = Padding.GetDesiredSize();
```

## 相关页面

- [[UUserWidget]] - 用户控件基类

## 来源

- [FMargin.md](../../raw/API/Structs/FMargin.md)
