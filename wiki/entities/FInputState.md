---
title: "FInputState"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 输入
  - 游戏特定

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FInputState.md
verified_by: agent
unverified_items: []
---

## 概述

FInputState 是项目自定义的输入状态结构体，存储角色的各种输入意图标志。它用于在移动系统中传递玩家的输入状态，决定角色应该执行什么动作。

## 主要属性

- `bool WantsToWalk` - 是否想要行走
- `bool WantsToSprint` - 是否想要冲刺
- `bool WantsToCrouch` - 是否想要蹲下
- `bool WantsToJump` - 是否想要跳跃
- `bool WantsToTraversal` - 是否想要翻越/穿越

## 示例

```angelscript
// 读取输入状态
FInputState Input = GetInputState();
if (Input.WantsToJump)
{
    Print("玩家想要跳跃");
}

if (Input.WantsToSprint)
{
    Print("玩家想要冲刺");
}

// 设置输入状态
FInputState NewInput;
NewInput.WantsToWalk = true;
NewInput.WantsToSprint = false;
NewInput.WantsToCrouch = false;
NewInput.WantsToJump = true;
NewInput.WantsToTraversal = false;
```

## 相关页面

- [[UTkWalkingMode]] - 行走移动模式
- [[UTkInputConfig]] - 输入配置

## 来源

- [FInputState.md](../../raw/API/Structs/FInputState.md)
