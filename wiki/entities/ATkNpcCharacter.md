---
title: "ATkNpcCharacter"
category: entities
date: 2026-05-09
tags:
  - Actor
  - 游戏特定
  - NPC

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/ATkNpcCharacter.md
verified_by: agent
unverified_items: []
---

## 概述

ATkNpcCharacter 是项目自定义的 NPC 角色基类，继承自 [[ACharacter]]。它提供了 NPC 特有的能力系统组件访问接口。

## 主要方法

- `UTkAbilitySystemComponent GetTkAbilitySystemComponent() const` - 获取项目自定义的能力系统组件

## 示例

```angelscript
// 获取 NPC 的能力系统组件
ATkNpcCharacter Npc = Cast<ATkNpcCharacter>(TargetActor);
if (Npc != nullptr)
{
    UTkAbilitySystemComponent ASC = Npc.GetTkAbilitySystemComponent();
    if (ASC != nullptr)
    {
        ASC.AddLooseGameplayTag(n"State.Stunned");
    }
}
```

## 相关页面

- [[ACharacter]] - Character 基类
- [[UTkAbilitySystemComponent]] - 项目自定义能力系统组件

## 来源

- [ATkNpcCharacter.md](../../raw/API/Global/ATkNpcCharacter.md)
