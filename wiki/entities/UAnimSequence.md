---
title: "UAnimSequence"
category: entities
date: 2026-05-09
tags:
  - 动画
  - 动画资产
---

## 概述

UAnimSequence 是动画序列资产，定义了骨骼随时间变化的动画数据。它是 UE 中最基本的动画资产类型，包含关键帧骨骼变换、曲线数据和动画通知。

## 主要属性

### 动画数据

- `float32 SequenceLength` - 动画时长（秒）
- `float32 RateScale` - 播放速率缩放
- `bool bEnableRootMotion` - 是否启用根运动
- `bool bEnableRootMotionTranslation` - 是否启用根运动平移
- `bool bEnableRootMotionRotation` - 是否启用根运动旋转
- `bool bRootMotionSettingsFromAnimScript` - 是否从动画脚本获取根运动设置

### 曲线

- `bool bEnableCurveCustomAttributes` - 是否启用曲线自定义属性
- `bool bUseNormalizedCurveKeys` - 是否使用归一化曲线键

### 压缩

- `UAnimEncodingFormat CompressionScheme` - 压缩方案

## 主要方法

- `float32 GetPlayLength() const` - 获取动画播放长度
- `int GetNumberOfFrames() const` - 获取帧数
- `int GetNumberOfSampledKeys() const` - 获取采样键数
- `bool IsAdditive() const` - 是否为叠加动画
- `bool IsValidAdditive() const` - 是否为有效的叠加动画
- `bool IsValidToPlay() const` - 是否可播放
- `bool HasRootMotion() const` - 是否有根运动数据

## 示例

```angelscript
// 获取动画序列信息
UAnimSequence AnimSeq = Cast<UAnimSequence>(MyAnimAsset);
if (AnimSeq != nullptr)
{
    float32 Length = AnimSeq.GetPlayLength();
    Print("动画时长: " + Length + "秒");
    Print("有根运动: " + AnimSeq.HasRootMotion());
}
```

## 相关页面

- [[UAnimMontage]] - 动画蒙太奇
- [[UAnimInstance]] - 动画实例

## 来源

- [UAnimSequence.md](../../raw/API/Global/UAnimSequence.md)
