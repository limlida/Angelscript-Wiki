---
title: "ULightComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 光照
  - 渲染

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/ULightComponent.md
verified_by: agent
unverified_items:
  - SetShadowResolutionScale
---

## 概述

ULightComponent 是灯光组件的基类，管理光照属性如颜色、强度、阴影和后处理效果。常见的子类包括 UDirectionalLightComponent、UPointLightComponent、USpotLightComponent 和 URectLightComponent。

## 主要属性

### 光照

- `float32 Intensity` - 光照强度
- `FLinearColor LightColor` - 光照颜色
- `float32 DiffuseScale` - 漫反射缩放
- `float32 SpecularScale` - 高光缩放
- `float32 Temperature` - 色温（开尔文），D65 白光是 6500K
- `bool bUseTemperature` - 是否使用色温

### 阴影

- `float32 ShadowBias` - 阴影偏移（0=从表面开始但有自阴影伪影，0.5 是好的折衷）
- `float32 ShadowSlopeBias` - 阴影斜率偏移
- `float32 ShadowResolutionScale` - 阴影贴图分辨率缩放
- `float32 ShadowSharpen` - 阴影锐化程度
- `float32 ContactShadowLength` - 接触阴影长度（屏幕空间光线追踪）
- `bool bUseRayTracedDistanceFieldShadows` - 是否使用距离场阴影

### 光晕

- `bool bEnableLightShaftBloom` - 是否启用光轴光晕
- `float32 BloomScale` - 光晕缩放
- `float32 BloomThreshold` - 光晕阈值
- `FColor BloomTint` - 光晕着色

### 距离

- `float32 MaxDrawDistance` - 最大绘制距离
- `float32 MaxDistanceFadeRange` - 淡出范围

### 光照函数

- `UMaterialInterface LightFunctionMaterial` - 光照函数材质
- `FVector LightFunctionScale` - 光照函数缩放
- `float32 LightFunctionFadeDistance` - 光照函数淡出距离

### 光照通道

- `FLightingChannels LightingChannels` - 光照通道

## 主要方法

- `SetIntensity(float32 NewIntensity)` - 设置光照强度
- `SetLightColor(FLinearColor NewLightColor, bool bSRGB = true)` - 设置光照颜色
- `SetTemperature(float32 NewTemperature)` - 设置色温
- `SetUseTemperature(bool bNewValue)` - 设置是否使用色温
- `SetDiffuseScale(float32 NewValue)` - 设置漫反射缩放
- `SetSpecularScale(float32 NewValue)` - 设置高光缩放
- `SetShadowBias(float32 NewValue)` - 设置阴影偏移
- `SetShadowResolutionScale(float32 NewValue)` - 设置阴影分辨率缩放
- `SetMaxDrawDistance(float32 NewValue)` - 设置最大绘制距离
- `SetLightFunctionMaterial(UMaterialInterface NewLightFunctionMaterial)` - 设置光照函数材质
- `SetLightingChannels(bool bChannel0, bool bChannel1, bool bChannel2)` - 设置光照通道
- `SetVolumetricScatteringIntensity(float32 NewIntensity)` - 设置体积散射强度
- `SetIndirectLightingIntensity(float32 NewIntensity)` - 设置间接光照强度

## 示例

```angelscript
// 设置灯光属性
ULightComponent Light = GetLightComponent();
Light.SetIntensity(3000.0f);
Light.SetLightColor(FLinearColor(1.0f, 0.9f, 0.7f, 1.0f));
Light.SetTemperature(6500.0f);
Light.SetUseTemperature(true);

// 调整阴影
Light.SetShadowBias(0.5f);
Light.SetShadowResolutionScale(1.0f);

// 设置最大距离
Light.SetMaxDrawDistance(5000.0f);
```

## 相关页面

- [[UPrimitiveComponent]] - 基元组件基类

## 来源

- [ULightComponent.md](../../raw/API/Global/ULightComponent.md)
