---
title: "UGameInstanceSubsystem"
category: entities
date: 2026-05-09
tags:
  - 子系统
  - GameInstance

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UGameInstanceSubsystem.md
verified_by: agent
unverified_items: []
---

## 概述

UGameInstanceSubsystem 是 GameInstance 级子系统的基类，与 GameInstance 共享生命周期。适合存储跨关卡持久化的数据和提供跨关卡服务。

**子系统生命周期**：
- [[UEngineSubsystem]] - 与引擎同生同灭
- **UGameInstanceSubsystem** - 与 GameInstance 同生同灭（跨关卡持久化）
- [[UWorldSubsystem]] - 与 World 同生同灭

## 使用方式

```angelscript
// 获取 GameInstance 子系统
UMyGISubsystem MySub = GetGameInstance().GetSubsystem<UMyGISubsystem>();
if (MySub != nullptr)
{
    MySub.DoSomething();
}
```

## 相关页面

- [[UEngineSubsystem]] - 引擎子系统
- [[UWorldSubsystem]] - World 子系统
- [[UGameInstance]] - GameInstance

## 来源

- [UGameInstanceSubsystem.md](../../raw/API/Global/UGameInstanceSubsystem.md)
