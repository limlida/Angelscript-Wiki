---
title: "USoundBase"
category: entities
date: 2026-05-09
tags:
  - 音频
  - 声音
---

## 概述

USoundBase 是可播放声音对象的基类。常见的子类包括 USoundWave（波形文件）和 USoundCue（声音组合）。

## 主要属性

### 衰减

- `USoundAttenuation AttenuationSettings` - 衰减设置资产（3D 声音必需）

### 并发

- `bool bOverrideConcurrency` - 是否覆盖并发设置
- `FSoundConcurrencySettings ConcurrencyOverrides` - 本地并发覆盖设置
- `TSet<USoundConcurrency> ConcurrencySet` - 并发设置集合

### 优先级

- `float32 Priority` - 声音优先级（值越高越不容易被裁剪）
- `bool bBypassVolumeScaleForPriority` - 优先级计算是否忽略音量

### 路由

- `USoundClass SoundClassObject` - 声音类
- `USoundSubmixBase SoundSubmixObject` - 子混音路由

### 其他

- `float32 Duration` - 声音时长（秒）
- `float32 MaxDistance` - 最大可听距离
- `EVirtualizationMode VirtualizationMode` - 虚拟化模式

## 示例

```angelscript
// 播放声音
UAudioComponent Audio = UAudioComponent(this);
Audio.SetSound(ExplosionSoundBase);
Audio.AttenuationSettings = AttenuationAsset;
Audio.Play();

// 使用 Gameplay 函数库播放
Gameplay.PlaySoundAtLocation(GetWorld(), ExplosionSoundBase, GetActorLocation());
```

## 继承关系

- **USoundBase** → USoundWave（波形文件）
- **USoundBase** → USoundCue（声音组合）

## 相关页面

- [[UAudioComponent]] - 音频组件

## 来源

- [USoundBase.md](../../raw/API/Global/USoundBase.md)
