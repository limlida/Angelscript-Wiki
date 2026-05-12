---
title: "UWorldSubsystem"
category: entities
date: 2026-05-09
tags:
  - 子系统
  - World

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UWorldSubsystem.md
verified_by: agent
unverified_items: []
---

## 概述

UWorldSubsystem 是 World 级子系统的基类，与 World（关卡）共享生命周期。适合存储关卡级数据和提供关卡级服务。

**子系统生命周期**：
- [[UEngineSubsystem]] - 与引擎同生同灭
- [[UGameInstanceSubsystem]] - 与 GameInstance 同生同灭
- **UWorldSubsystem** - 与 World 同生同灭（关卡级）

## 使用方式

```angelscript
// 获取 World 子系统
UMyWorldSubsystem MySub = GetWorld().GetSubsystem<UMyWorldSubsystem>();
if (MySub != nullptr)
{
    MySub.DoSomething();
}
```

## 相关页面

- [[UEngineSubsystem]] - 引擎子系统
- [[UGameInstanceSubsystem]] - GameInstance 子系统
- [[UWorld]] - 世界对象

## 来源

- [UWorldSubsystem.md](../../raw/API/Global/UWorldSubsystem.md)
