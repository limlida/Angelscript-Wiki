---
title: "UFlyingMode"
category: entities
date: 2026-05-09
tags:
  - MovementMode
  - 游戏特定
  - 移动
---

## 概述

UFlyingMode 是 Mover 2.0 的飞行移动模式，管理角色在空中自由移动的行为。与下落模式不同，飞行模式不受重力影响，但仍与阻挡几何体交互。

## 主要属性

- `bool bRespectDistanceOverWalkableSurfaces` - 是否在可行走表面上方保持固定高度。启用可防止切换到地面模式时的视觉跳动，但需要额外的地面检测

## 示例

```angelscript
// 切换到飞行模式
UMoverComponent Mover = GetMoverComponent();
Mover.QueueNextMode(n"Flying");

// 配置飞行模式
UFlyingMode FlyingMode = Cast<UFlyingMode>(Mover.FindMovementModeByName(n"Flying"));
if (FlyingMode != nullptr)
{
    FlyingMode.bRespectDistanceOverWalkableSurfaces = true;
}
```

## 相关页面

- [[UMoverComponent]] - Mover 移动组件
- [[UFallingMode]] - 下落移动模式
- [[UTkWalkingMode]] - 行走移动模式

## 来源

- [UFlyingMode.md](../../raw/API/Global/UFlyingMode.md)
