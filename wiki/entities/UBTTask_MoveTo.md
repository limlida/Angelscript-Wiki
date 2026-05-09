---
title: "UBTTask_MoveTo"
category: entities
date: 2026-05-09
tags:
  - AI
  - 行为树
  - Task
  - 导航
---

## 概述

UBTTask_MoveTo 是行为树的移动任务节点，使 AI Pawn 使用导航系统向指定的 Actor 或位置黑板条目移动。这是行为树中最常用的任务之一。

## 主要属性

### 距离判定

- `FValueOrBBKey_Float AcceptableRadius` - AI 与目标位置之间可接受的距离阈值
- `FValueOrBBKey_Bool bReachTestIncludesAgentRadius` - 是否将 AI 的胶囊体半径加入距离判定
- `FValueOrBBKey_Bool bReachTestIncludesGoalRadius` - 是否将目标的胶囊体半径加入距离判定

### 路径配置

- `FValueOrBBKey_Bool bAllowPartialPath` - 是否在目标不可达时使用不完整路径
- `FValueOrBBKey_Bool bProjectGoalLocation` - 是否将目标位置投影到导航数据上
- `FValueOrBBKey_Bool bRequireNavigableEndLocation` - 目标位置是否需要可导航
- `FValueOrBBKey_Bool bStartFromPreviousPath` - 是否从上一条路径的末端开始路径请求
- `FValueOrBBKey_Class FilterClass` - 导航查询过滤器类，None 使用默认过滤器

### 移动配置

- `FValueOrBBKey_Bool bAllowStrafe` - 是否允许横移
- `FValueOrBBKey_Bool bTrackMovingGoal` - 是否在目标 Actor 移动时更新路径
- `FValueOrBBKey_Float ObservedBlackboardValueTolerance` - 黑板值变化检测的灵敏度，建议小于 AcceptableRadius

## 示例

```angelscript
// 在行为树中使用 MoveTo 任务
// 通常在编辑器中配置，黑板键 "Target" 指向目标 Actor
// AcceptableRadius 设为 100.0 表示到达目标 100 单位内即视为完成
```

## 相关页面

- [[UBTTaskNode]] - 任务节点基类
- [[AAIController]] - AI 控制器
- [[UBehaviorTree]] - 行为树

## 来源

- [UBTTask_MoveTo.md](../../raw/API/Global/UBTTask_MoveTo.md)
