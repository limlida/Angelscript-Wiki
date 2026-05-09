---
title: "UBTTask_Wait"
category: entities
date: 2026-05-09
tags:
  - AI
  - 行为树
  - Task
---

## 概述

UBTTask_Wait 是行为树的等待任务节点，执行时等待指定的时间。这是行为树中最简单的任务之一，常用于在动作之间添加延迟。

## 主要属性

- `FValueOrBBKey_Float WaitTime` - 等待时间（秒）
- `FValueOrBBKey_Float RandomDeviation` - 为等待时间添加随机偏移

**实际等待时间** = `WaitTime ± RandomDeviation` 范围内的随机值

## 示例

```angelscript
// 在行为树中使用 Wait 任务
// 通常在编辑器中配置
// WaitTime = 2.0, RandomDeviation = 0.5
// 实际等待时间在 1.5 ~ 2.5 秒之间随机
```

## 相关页面

- [[UBTTaskNode]] - 任务节点基类
- [[UBTTask_MoveTo]] - 移动任务

## 来源

- [UBTTask_Wait.md](../../raw/API/Global/UBTTask_Wait.md)
