---
title: "ATkPlayerCharacter"
category: entities
date: 2026-05-09
tags:
  - Actor
  - 游戏特定
  - 玩家角色
---

## 概述

ATkPlayerCharacter 是项目自定义的玩家角色类，继承自 [[ACharacter]]。它提供了玩家角色特有的能力系统组件访问接口。

## 主要方法

- `UTkAbilitySystemComponent GetTkAbilitySystemComponent() const` - 获取项目自定义的能力系统组件

## 示例

```angelscript
// 获取玩家角色的能力系统组件
ATkPlayerCharacter PlayerChar = Cast<ATkPlayerCharacter>(GetPawn());
if (PlayerChar != nullptr)
{
    UTkAbilitySystemComponent ASC = PlayerChar.GetTkAbilitySystemComponent();
}
```

## 相关页面

- [[ACharacter]] - Character 基类
- [[ATkNpcCharacter]] - NPC 角色
- [[UTkAbilitySystemComponent]] - 项目自定义能力系统组件

## 来源

- [ATkPlayerCharacter.md](../../raw/API/Global/ATkPlayerCharacter.md)
