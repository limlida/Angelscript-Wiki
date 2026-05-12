---
title: "GetWorld"
category: entities
date: 2026-05-09
tags:
  - 全局函数
  - World
  - 上下文

trust: unverified
verified_at: 2026-05-11
verified_against: []
verified_by: agent
unverified_items: []
---

## 定义
`GetWorld` 是全局函数，用于获取当前脚本执行上下文的 [[UWorld]] 对象。

## 用法
```angelscript
UWorld CurrentWorld = GetWorld();
```

## 说明
- 在 Actor 或 Component 的方法中，`GetWorld()` 返回该对象所在的世界
- 在全局函数中，返回当前脚本上下文的世界
- 可用于访问世界级别的功能，如生成 Actor、获取 GameMode 等

## 来源
[[Source_ScriptingIntroduction]]
