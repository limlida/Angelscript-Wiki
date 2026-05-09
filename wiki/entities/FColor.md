---
title: "FColor"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 颜色
---

## 概述

FColor 存储每个通道 8 位精度的颜色（BGRA 格式）。适合用于不需要 HDR 的场景，如 UI 颜色、纹理像素操作等。需要高精度或 HDR 时使用 [[FLinearColor]]。

## 主要属性

- `uint8 B` - 蓝色通道（0 ~ 255）
- `uint8 G` - 绿色通道（0 ~ 255）
- `uint8 R` - 红色通道（0 ~ 255）
- `uint8 A` - 透明度通道（0 ~ 255）
- `uint DWColor` - 作为单个 uint32 读取的颜色值

## 主要方法

- `bool opEquals(FColor ColorB) const` - 相等比较
- `FString ToHex() const` - 转换为十六进制字符串
- `FString ToString() const` - 转换为字符串
- `FLinearColor ReinterpretAsLinear() const` - 重新解释为 [[FLinearColor]]
- `FLinearColor FromRGBE() const` - 从 RGBE 格式转换
- `bool InitFromString(FString SourceString)` - 从字符串初始化

## 示例

```angelscript
// 创建颜色
FColor Red = FColor(255, 0, 0, 255);
FColor SemiTransparentGreen = FColor(0, 255, 0, 128);

// 转换为十六进制
FString Hex = Red.ToHex();
Print("红色十六进制: " + Hex);

// 转换为线性颜色
FLinearColor LinearRed = Red.ReinterpretAsLinear();

// 从字符串初始化
FColor ParsedColor;
bool Success = ParsedColor.InitFromString("(R=255,G=0,B=0,A=255)");
```

## 相关页面

- [[FLinearColor]] - 线性颜色（32 位浮点）

## 来源

- [FColor.md](../../raw/API/Structs/FColor.md)
