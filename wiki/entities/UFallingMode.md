---
title: "UFallingMode"
category: entities
date: 2026-05-09
tags:
  - MovementMode
  - 游戏特定
  - 移动

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UFallingMode.md
verified_by: agent
unverified_items: []
---

## 概述

UFallingMode 是 Mover 2.0 的下落移动模式，管理角色在空中的移动行为，通常受重力和空气控制影响。当角色离开地面时自动切换到此模式。

## 主要属性

### 空气控制

- `float32 AirControlPercentage` - 空气控制比例（0=无控制，1=完全控制）
- `float32 FallingDeceleration` - 下落时的水平减速度
- `float32 FallingLateralFriction` - 下落时的水平摩擦力

### 终端速度

- `float32 TerminalMovementPlaneSpeed` - 水平终端速度阈值
- `float32 OverTerminalSpeedFallingDeceleration` - 超过水平终端速度时的额外减速度
- `float32 TerminalVerticalSpeed` - 垂直终端速度阈值
- `float32 VerticalFallingDeceleration` - 垂直减速度（仅在 bShouldClampTerminalVerticalSpeed 为 false 时使用）

### 着陆

- `FMover_OnLanded OnLanded` - 着陆时广播
- `bool bCancelVerticalSpeedOnLanding` - 着陆时是否取消垂直速度（true=直接归零，false=根据法线重定向）
- `bool bShouldClampTerminalVerticalSpeed` - 是否硬性钳制垂直终端速度

## 示例

```angelscript
// 配置下落模式参数
UFallingMode FallingMode = Cast<UFallingMode>(Mover.FindMovementModeByName(n"Falling"));
if (FallingMode != nullptr)
{
    FallingMode.AirControlPercentage = 0.3f;
    FallingMode.TerminalVerticalSpeed = 2000.0f;
    FallingMode.bCancelVerticalSpeedOnLanding = true;
}
```

## 相关页面

- [[UMoverComponent]] - Mover 移动组件
- [[UTkWalkingMode]] - 行走移动模式

## 来源

- [UFallingMode.md](../../raw/API/Global/UFallingMode.md)
