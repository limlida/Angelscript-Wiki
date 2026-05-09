---
title: "UCameraComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 相机
  - 渲染
---

## 概述

UCameraComponent 表示相机视点和设置，如投影类型、视野角度和后处理覆盖。当 Actor 被用作相机视点时，默认行为是查找附加的 CameraComponent 并使用其位置、旋转和设置。

## 主要属性

### 投影

- `ECameraProjectionMode ProjectionMode` - 投影模式（透视/正交）
- `float32 FieldOfView` - 透视模式下的水平视野角度（度）
- `float32 OrthoWidth` - 正交模式下的视图宽度（世界单位）
- `float32 AspectRatio` - 宽高比（宽/高）

### 裁剪面

- `float32 OrthoNearClipPlane` - 正交近裁剪面距离
- `float32 OrthoFarClipPlane` - 正交远裁剪面距离
- `bool bAutoCalculateOrthoPlanes` - 是否自动计算正交裁剪面
- `bool bUpdateOrthoPlanes` - 是否自动调整裁剪面避免裁剪和光照伪影

### 后处理

- `FPostProcessSettings PostProcessSettings` - 后处理设置
- `float32 PostProcessBlendWeight` - 后处理混合权重

### 第一人称

- `bool bEnableFirstPersonFieldOfView` - 是否启用第一人称 FOV
- `float32 FirstPersonFieldOfView` - 第一人称 FOV
- `bool bEnableFirstPersonScale` - 是否启用第一人称缩放
- `float32 FirstPersonScale` - 第一人称缩放值

### 控制

- `bool bUsePawnControlRotation` - 是否使用 Pawn 的控制旋转
- `bool bConstrainAspectRatio` - 是否约束宽高比（添加黑边）
- `bool bLockToHmd` - 是否锁定到 HMD

## 主要方法

- `SetFieldOfView(float32 InFieldOfView)` - 设置视野角度
- `SetProjectionMode(ECameraProjectionMode InProjectionMode)` - 设置投影模式
- `SetAspectRatio(float32 InAspectRatio)` - 设置宽高比
- `SetOrthoWidth(float32 InOrthoWidth)` - 设置正交宽度
- `SetPostProcessBlendWeight(float32 InPostProcessBlendWeight)` - 设置后处理混合权重
- `SetConstraintAspectRatio(bool bInConstrainAspectRatio)` - 设置是否约束宽高比
- `SetUsePawnControlRotation(bool bNewUsePawnControlRotation)` - 设置是否使用 Pawn 控制旋转

## 示例

```angelscript
// 设置相机 FOV
UCameraComponent Camera = GetCameraComponent();
Camera.SetFieldOfView(90.0f);

// 切换到正交投影
Camera.SetProjectionMode(ECameraProjectionMode::Orthographic);
Camera.SetOrthoWidth(512.0f);

// 后处理
Camera.PostProcessBlendWeight = 1.0f;
Camera.SetPostProcessBlendWeight(1.0f);
```

## 相关页面

- [[APlayerController]] - 玩家控制器（管理相机视点）

## 来源

- [UCameraComponent.md](../../raw/API/Global/UCameraComponent.md)
