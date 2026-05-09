---
title: "UCurveFloat"
category: entities
date: 2026-05-09
tags:
  - 曲线
  - 动画
  - 插值
---

## 概述

UCurveFloat 是浮点数曲线资产，定义了时间到浮点值的映射关系。常用于 [[UTimelineComponent]] 驱动动画、渐变效果和参数化运动。

## 主要方法

### 求值

- `float32 GetFloatValue(float32 InTime) const` - 在指定时间求值

### 添加键

- `FCurveKeyHandle AddAutoCurveKey(float32 InTime, float32 InValue)` - 添加自动切线键
- `FCurveKeyHandle AddConstantCurveKey(float32 InTime, float32 InValue)` - 添加常量键
- `FCurveKeyHandle AddLinearCurveKey(float32 InTime, float32 InValue)` - 添加线性键
- `FCurveKeyHandle AddSmartAutoCurveKey(float32 InTime, float32 InValue)` - 添加智能自动切线键
- `FCurveKeyHandle AddCurveKey(float32 InTime, float32 InValue)` - 添加自由曲线键
- `FCurveKeyHandle AddCurveKeyTangent(float32 InTime, float32 InValue, float32 Tangent)` - 添加带切线的键

### 修改

- `SetDefaultValue(float32 DefaultValue)` - 设置默认值
- `SetKeyInterpMode(FCurveKeyHandle KeyHandle, ERichCurveInterpMode NewInterpMode, bool bAutoSetTangents)` - 设置键插值模式
- `SetKeyTangentMode(FCurveKeyHandle KeyHandle, ERichCurveTangentMode NewTangentMode, bool bAutoSetTangents = true)` - 设置键切线模式
- `SetKeyUserTangents(FCurveKeyHandle KeyHandle, float32 ArriveTangent, float32 LeaveTangent)` - 设置用户切线
- `AutoSetTangents()` - 自动设置所有切线

### 外推

- `SetPreInfinityExtrap(ERichCurveExtrapolation Extrapolation)` - 设置曲线前外推模式
- `SetPostInfinityExtrap(ERichCurveExtrapolation Extrapolation)` - 设置曲线后外推模式

## 示例

```angelscript
// 求值
UCurveFloat MyCurve = Cast<UCurveFloat>(CurveAsset);
float32 Value = MyCurve.GetFloatValue(0.5f);
Print("曲线值: " + Value);

// 配合 Timeline 使用
UTimelineComponent Timeline = UTimelineComponent(this);
Timeline.AddInterpFloat(MyCurve, FloatInterpDelegate);
Timeline.SetTimelineLength(2.0f);
Timeline.SetLooping(true);
Timeline.Play();
```

## 相关页面

- [[UTimelineComponent]] - 时间线组件

## 来源

- [UCurveFloat.md](../../raw/API/Global/UCurveFloat.md)
