---
title: "APlayerStart"
category: entities
date: 2026-05-09
tags:
  - Actor
  - 生成点
---

## 概述

APlayerStart 标记玩家在游戏开始时的生成位置。GameMode 在生成玩家时查找 PlayerStart Actor 来确定生成点。

## 主要属性

- `FName PlayerStartTag` - 搜索 PlayerStart 时使用的标签，可用于区分不同类型的生成点

## 示例

```angelscript
// 在编辑器中放置 PlayerStart 并设置标签
// PlayerStartTag = "TeamA" 或 "TeamB" 用于团队生成点

// 在 GameMode 中使用标签查找特定生成点
// GameMode.FindPlayerStart() 会根据标签选择合适的生成点
```

## 相关页面

- [[AGameModeBase]] - GameMode 基类（使用 PlayerStart 生成玩家）

## 来源

- [APlayerStart.md](../../raw/API/Global/APlayerStart.md)
