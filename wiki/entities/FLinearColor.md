---
title: "FLinearColor"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 颜色
  - 数学
---

## 概述

FLinearColor 存储线性颜色值，每个通道使用 32 位浮点数（RGBA）。与 [[FColor]]（8 位整数）不同，FLinearColor 支持 HDR 值（超过 1.0），适合用于材质和渲染计算。

**核心用途**：材质参数、UI 颜色、渲染计算等需要高精度颜色的场景。

## 主要属性

- `float32 R` - 红色通道（0.0 ~ 1.0+）
- `float32 G` - 绿色通道（0.0 ~ 1.0+）
- `float32 B` - 蓝色通道（0.0 ~ 1.0+）
- `float32 A` - 透明度通道（0.0 ~ 1.0）

## 主要方法

### 运算符

- `FLinearColor opAdd(FLinearColor ColorB) const` - 颜色加法
- `FLinearColor opSub(FLinearColor ColorB) const` - 颜色减法
- `FLinearColor opMul(FLinearColor ColorB) const` - 颜色乘法（逐通道）
- `FLinearColor opMul(float32 Scalar) const` - 标量乘法
- `FLinearColor opDiv(FLinearColor ColorB) const` - 颜色除法（逐通道）
- `FLinearColor opDiv(float32 Scalar) const` - 标量除法
- `bool opEquals(FLinearColor ColorB) const` - 相等比较

### 颜色操作

- `FLinearColor GetClamped(float32 InMin = 0.f, float32 InMax = 1.f) const` - 将颜色值钳制到指定范围
- `bool Equals(FLinearColor ColorB, float32 Tolerance = KINDA_SMALL_NUMBER) const` - 容差比较
- `bool IsAlmostBlack() const` - 是否接近黑色
- `float32 GetMin() const` - 获取最小通道值
- `float32 GetMax() const` - 获取最大通道值
- `float32 GetLuminance() const` - 获取亮度

### 颜色空间转换

- `FLinearColor LinearRGBToHSV() const` - 从线性 RGB 转换到 HSV
- `FLinearColor HSVToLinearRGB() const` - 从 HSV 转换到线性 RGB
- `FColor ToFColor(bool bSRGB) const` - 转换为 [[FColor]]

### 字符串

- `FString ToString() const` - 转换为字符串

## 示例

```angelscript
// 创建颜色
FLinearColor Red = FLinearColor(1.0f, 0.0f, 0.0f, 1.0f);
FLinearColor Green = FLinearColor(0.0f, 1.0f, 0.0f, 1.0f);

// 颜色混合
FLinearColor Yellow = Red + Green;
FLinearColor Dimmed = Yellow * 0.5f;

// 钳制颜色值
FLinearColor HDR = FLinearColor(2.0f, 1.5f, 0.5f, 1.0f);
FLinearColor Clamped = HDR.GetClamped(0.0f, 1.0f);

// RGB ↔ HSV 转换
FLinearColor HSV = Red.LinearRGBToHSV();
Print("色相: " + HSV.R + " 饱和度: " + HSV.G + " 明度: " + HSV.B);

// 转换为 FColor
FColor SRGBColor = Red.ToFColor(true);

// 亮度
float Lum = Red.GetLuminance();
Print("亮度: " + Lum);
```

## 相关页面

- [[FColor]] - 8 位整数颜色

## 来源

- [FLinearColor.md](../../raw/API/Structs/FLinearColor.md)
