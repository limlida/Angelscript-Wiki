---
title: "UTimelineComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - 时间线
  - 动画
  - 插值

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UTimelineComponent.md
verified_by: agent
unverified_items: []
---

## 概述

UTimelineComponent 是时间线组件，持有一系列事件、浮点数、向量或颜色的关键帧轨道。事件在关键帧处触发，数值在关键帧间插值。常用于简单的动画和渐变效果。

**核心用途**：驱动简单的动画效果（门开关、灯光渐变、UI 动画等），无需完整的动画蓝图。

## 主要方法

### 轨道添加

- `AddInterpFloat(UCurveFloat FloatCurve, FOnTimelineFloat InterpFunc, FName PropertyName = NAME_None, FName TrackName = NAME_None)` - 添加浮点插值轨道
- `AddInterpVector(UCurveVector VectorCurve, FOnTimelineVector InterpFunc, FName PropertyName = NAME_None, FName TrackName = NAME_None)` - 添加向量插值轨道
- `AddInterpLinearColor(UCurveLinearColor LinearColorCurve, FOnTimelineLinearColor InterpFunc, FName PropertyName = NAME_None, FName TrackName = NAME_None)` - 添加颜色插值轨道
- `AddEvent(float32 Time, FOnTimelineEvent EventFunc)` - 在指定时间添加事件

### 播放控制

- `Play()` - 开始播放
- `PlayFromStart()` - 从头开始播放
- `Reverse()` - 反向播放
- `ReverseFromEnd()` - 从末尾反向播放
- `Stop()` - 停止播放

### 位置控制

- `SetNewTime(float32 NewTime)` - 设置新的播放位置
- `SetPlaybackPosition(float32 NewPosition, bool bFireEvents, bool bFireUpdate = true)` - 跳转到指定位置
- `float32 GetPlaybackPosition() const` - 获取当前播放位置

### 设置

- `SetPlayRate(float32 NewRate)` - 设置播放速率
- `SetLooping(bool bNewLooping)` - 设置是否循环
- `SetTimelineLength(float32 NewLength)` - 设置时间线长度
- `SetTimelineLengthMode(ETimelineLengthMode NewLengthMode)` - 设置长度模式
- `SetIgnoreTimeDilation(bool bNewIgnoreTimeDilation)` - 是否忽略时间膨胀

### 回调

- `SetTimelineFinishedFunc(FOnTimelineEvent NewTimelineFinishedFunc)` - 设置完成回调
- `SetTimelinePostUpdateFunc(FOnTimelineEvent NewTimelinePostUpdateFunc)` - 设置每帧更新后回调

### 查询

- `float32 GetTimelineLength() const` - 获取时间线长度
- `float32 GetScaledTimelineLength() const` - 获取缩放后的时间线长度
- `float32 GetPlayRate() const` - 获取播放速率
- `bool IsPlaying() const` - 是否正在播放
- `bool IsLooping() const` - 是否循环
- `bool IsReversing() const` - 是否反向播放
- `bool GetIgnoreTimeDilation() const` - 是否忽略时间膨胀

### 轨道更新

- `SetFloatCurve(UCurveFloat NewFloatCurve, FName FloatTrackName)` - 更新浮点轨道曲线
- `SetVectorCurve(UCurveVector NewVectorCurve, FName VectorTrackName)` - 更新向量轨道曲线
- `SetLinearColorCurve(UCurveLinearColor NewLinearColorCurve, FName LinearColorTrackName)` - 更新颜色轨道曲线

## 示例

```angelscript
// 创建时间线驱动门开关动画
UTimelineComponent DoorTimeline = UTimelineComponent(this);

// 添加浮点轨道
DoorTimeline.AddInterpFloat(DoorOpenCurve, n"OnDoorOpenUpdate");
DoorTimeline.AddEvent(1.0f, n"OnDoorFullyOpen");
DoorTimeline.SetTimelineFinishedFunc(n"OnDoorClosed");
DoorTimeline.SetTimelineLength(2.0f);
DoorTimeline.Play();

void OnDoorOpenUpdate(float32 Value)
{
    FRotator NewRotation = FRotator(0.0f, Value * 90.0f, 0.0f);
    DoorMesh.SetRelativeRotation(NewRotation);
}

void OnDoorFullyOpen()
{
    Print("门已完全打开");
}

void OnDoorClosed()
{
    Print("门已关闭");
}
```

## 相关页面

- [[UCurveFloat]] - 浮点曲线
- [[UActorComponent]] - Actor 组件基类

## 来源

- [UTimelineComponent.md](../../raw/API/Global/UTimelineComponent.md)
