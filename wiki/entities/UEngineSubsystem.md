---
title: "UEngineSubsystem"
category: entities
date: 2026-05-09
tags:
  - 子系统
  - Engine

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UEngineSubsystem.md
verified_by: agent
unverified_items: []
---

## 概述

UEngineSubsystem 是引擎级子系统的基类，与引擎实例共享生命周期。子系统在模块加载时自动实例化和初始化，适合存储全局状态和提供全局服务。

**子系统生命周期**：
- **UEngineSubsystem** - 与引擎同生同灭（编辑器和游戏都存在）
- [[UGameInstanceSubsystem]] - 与 GameInstance 同生同灭
- [[UWorldSubsystem]] - 与 World 同生同灭

## 使用方式

```angelscript
// 获取引擎子系统
UMyEngineSubsystem MySub = GetEngineSubsystem<UMyEngineSubsystem>();
if (MySub != nullptr)
{
    MySub.DoSomething();
}
```

## 相关页面

- [[UGameInstanceSubsystem]] - GameInstance 子系统
- [[UWorldSubsystem]] - World 子系统
- [[子系统]] - 子系统概念

## 来源

- [UEngineSubsystem.md](../../raw/API/Global/UEngineSubsystem.md)
