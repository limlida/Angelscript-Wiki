---
title: "UAudioComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 音频
---

## 概述

UAudioComponent 用于播放声音。它支持 3D 空间化、衰减、音量/音调控制、淡入淡出、参数化音频等高级功能。

## 主要属性

### 声音资产

- `USoundBase Sound` - 要播放的声音资产

### 音量和音调

- `float32 VolumeMultiplier` - 音量倍数
- `float32 PitchMultiplier` - 音调倍数

### 衰减

- `USoundAttenuation AttenuationSettings` - 衰减设置资产
- `FSoundAttenuationSettings AttenuationOverrides` - 衰减覆盖设置
- `bool bOverrideAttenuation` - 是否覆盖衰减设置

### 过滤器

- `bool bEnableLowPassFilter` - 是否启用低通滤波器
- `float32 LowPassFilterFrequency` - 低通滤波器频率（Hz）
- `bool bEnableHighPassFilter` - 是否启用高通滤波器
- `float32 HighPassFilterFrequency` - 高通滤波器频率（Hz）

### 事件

- `FOnAudioFinished OnAudioFinished` - 音频播放完成时调用
- `FOnAudioPlayStateChanged OnAudioPlayStateChanged` - 播放状态变化时调用
- `FOnAudioPlaybackPercent OnAudioPlaybackPercent` - 播放百分比回调

### 行为

- `bool bAutoManageAttachment` - 是否自动管理附加
- `bool bIsUISound` - 是否为 UI 声音（暂停时仍播放）
- `bool bCanPlayMultipleInstances` - 是否允许同时播放多个实例

## 主要方法

### 播放控制

- `Play(float32 StartTime = 0.0)` - 开始播放，可指定起始时间
- `Stop()` - 停止播放
- `StopDelayed(float32 DelayTime)` - 延迟停止
- `SetPaused(bool bPause)` - 暂停/恢复

### 淡入淡出

- `FadeIn(float32 FadeInDuration, float32 FadeVolumeLevel = 1.0, float32 StartTime = 0.0, EAudioFaderCurve FadeCurve = Linear)` - 淡入播放
- `FadeOut(float32 FadeOutDuration, float32 FadeVolumeLevel, EAudioFaderCurve FadeCurve = Linear)` - 淡出停止
- `AdjustVolume(float32 AdjustVolumeDuration, float32 AdjustVolumeLevel, EAudioFaderCurve FadeCurve = Linear)` - 调整音量

### 设置

- `SetSound(USoundBase NewSound)` - 设置声音资产
- `SetVolumeMultiplier(float32 NewVolumeMultiplier)` - 设置音量倍数
- `SetPitchMultiplier(float32 NewPitchMultiplier)` - 设置音调倍数
- `SetUISound(bool bInUISound)` - 设置是否为 UI 声音

### 参数

- `SetFloatParameter(FName InName, float32 InFloat)` - 设置浮点参数
- `SetBoolParameter(FName InName, bool InBool)` - 设置布尔参数
- `SetIntParameter(FName InName, int InInt)` - 设置整数参数
- `SetWaveParameter(FName InName, USoundWave InWave)` - 设置波形参数

### 查询

- `bool IsPlaying() const` - 是否正在播放
- `EAudioComponentPlayState GetPlayState() const` - 获取播放状态
- `bool IsVirtualized() const` - 是否被虚拟化

### 衰减

- `AdjustAttenuation(FSoundAttenuationSettings InAttenuationSettings)` - 调整衰减设置
- `SetAttenuationSettings(USoundAttenuation InAttenuationSettings)` - 设置衰减资产
- `SetAttenuationOverrides(FSoundAttenuationSettings InAttenuationOverrides)` - 设置衰减覆盖

## 示例

```angelscript
// 播放声音
UAudioComponent Audio = UAudioComponent(this);
Audio.SetSound(ExplosionSound);
Audio.Play();

// 3D 音频带衰减
UAudioComponent Audio3D = UAudioComponent(this);
Audio3D.SetSound(AmbientSound);
Audio3D.AttenuationSettings = AttenuationAsset;
Audio3D.AttachToComponent(RootComponent, FAttachmentTransformRules::KeepRelativeTransform);
Audio3D.Play();

// 淡入播放
Audio3D.FadeIn(2.0f, 1.0f);

// 淡出停止
Audio3D.FadeOut(1.0f, 0.0f);

// 设置参数
Audio.SetFloatParameter(n"RPM", 3000.0f);
Audio.SetPitchMultiplier(1.2f);
Audio.SetVolumeMultiplier(0.5f);
```

## 相关页面

- [[System]] - 系统函数库（包含音频相关全局函数）

## 来源

- [UAudioComponent.md](../../raw/API/Global/UAudioComponent.md)
