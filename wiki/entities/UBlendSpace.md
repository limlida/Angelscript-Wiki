---
title: "UBlendSpace"
category: entities
date: 2026-05-09
tags:
  - 动画
  - 混合空间

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UBlendSpace.md
verified_by: agent
unverified_items: []
---

## 概述

UBlendSpace 是二维混合空间资产，允许根据两个输入值（如速度和方向）在多个动画样本间进行混合。常用于根据角色移动速度和方向自动混合不同的移动动画。

**核心用途**：根据连续参数（速度、方向、瞄准角度等）平滑混合动画。

## 主要属性

- `int32 NumSamples` - 样本数量
- `float32 TargetWeightInterpolationSpeedPerSec` - 目标权重插值速度
- `bool bScaleAnimation` - 是否缩放动画
- `bool bRotationBlendInMeshSpace` - 是否在网格空间混合旋转

### 轴配置

- `FBlendParameter BlendParameterX` - X 轴参数（如速度）
- `FBlendParameter BlendParameterY` - Y 轴参数（如方向）

## 示例

```angelscript
// 在动画蓝图中使用 BlendSpace
// 通常在编辑器中创建并配置：
// - X轴: 速度 (0~600)
// - Y轴: 方向 (-180~180)
// - 添加不同速度和方向的动画样本

// 在 AnimInstance 中设置参数
// BlendSpace 节点会根据输入值自动混合
```

## 相关页面

- [[UAnimInstance]] - 动画实例
- [[UAnimSequence]] - 动画序列

## 来源

- [UBlendSpace.md](../../raw/API/Global/UBlendSpace.md)
