---
title: "UAIPerceptionStimuliSourceComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - AI
  - 感知
---

## 概述

UAIPerceptionStimuliSourceComponent 使拥有此组件的 Actor 自动注册为 AI 感知系统的刺激源。如果希望 AI 能够"看见"或"听见"某个 Actor，该 Actor 需要拥有此组件。

**核心用途**：让 Actor 成为 AI 感知系统的目标，使 AI 能够检测到此 Actor。

## 主要属性

- `TArray<TSubclassOf<UAISense>> RegisterAsSourceForSenses` - 自动注册为哪些感知类型的刺激源
- `bool bAutoRegisterAsSource` - 是否在 BeginPlay 时自动注册

## 主要方法

- `RegisterForSense(TSubclassOf<UAISense> SenseClass)` - 注册为指定感知类型的刺激源
- `RegisterWithPerceptionSystem()` - 注册到感知系统（bAutoRegisterAsSource 为 true 时无需手动调用）
- `UnregisterFromPerceptionSystem()` - 从感知系统注销
- `UnregisterFromSense(TSubclassOf<UAISense> SenseClass)` - 从指定感知类型注销

## 示例

```angelscript
// 让玩家角色成为视觉和听觉刺激源
UAIPerceptionStimuliSourceComponent StimuliSource = UAIPerceptionStimuliSourceComponent(this);
StimuliSource.RegisterAsSourceForSenses.Add(UAISense_Sight);
StimuliSource.RegisterAsSourceForSenses.Add(UAISense_Hearing);
StimuliSource.bAutoRegisterAsSource = true;

// 手动注册
StimuliSource.RegisterForSense(UAISense_Sight);
StimuliSource.RegisterWithPerceptionSystem();
```

## 相关页面

- [[UAIPerceptionComponent]] - AI 感知组件
- [[AAIController]] - AI 控制器

## 来源

- [UAIPerceptionStimuliSourceComponent.md](../../raw/API/Global/UAIPerceptionStimuliSourceComponent.md)
