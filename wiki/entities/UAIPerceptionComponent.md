---
title: "UAIPerceptionComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - AI
  - 感知
---

## 概述

UAIPerceptionComponent 是 AI 感知组件，注册为 AI 感知系统的刺激监听器，收集已注册的刺激信息。当组件收到新刺激时调用 `OnPerceptionUpdated`。

**核心用途**：让 AI 能够"感知"周围的 Actor（看见、听见等），是 AI 行为决策的输入来源。

## 主要属性

### 感知配置

- `TArray<UAISenseConfig> SensesConfig` - 感知配置列表（视觉、听觉等）
- `TSubclassOf<UAISense> DominantSense` - 主导感知类型，确定感知到 Actor 位置时优先使用的感知

### 事件

- `FPerceptionUpdatedDelegate OnPerceptionUpdated` - 感知更新时调用
- `FActorPerceptionUpdatedDelegate OnTargetPerceptionUpdated` - 特定目标感知更新时调用
- `FActorPerceptionInfoUpdatedDelegate OnTargetPerceptionInfoUpdated` - 目标感知信息更新时调用（即使 Actor 已失效）
- `FActorPerceptionForgetUpdatedDelegate OnTargetPerceptionForgotten` - 目标被遗忘时调用

## 主要方法

### 感知查询

- `bool GetActorsPerception(AActor Actor, FActorPerceptionBlueprintInfo& Info)` - 获取指定 Actor 的感知信息
- `GetCurrentlyPerceivedActors(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors) const` - 获取当前感知到的所有 Actor
- `GetKnownPerceivedActors(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors) const` - 获取已知（未遗忘）的所有感知 Actor
- `GetPerceivedHostileActors(TArray<AActor>& OutActors) const` - 获取感知到的敌对 Actor
- `GetPerceivedHostileActorsBySense(TSubclassOf<UAISense> SenseToUse, TArray<AActor>& OutActors) const` - 按感知类型获取敌对 Actor

### 控制

- `ForgetAll()` - 清除所有感知数据
- `SetSenseEnabled(TSubclassOf<UAISense> SenseClass, bool bEnable)` - 启用/禁用指定感知
- `bool IsSenseEnabled(TSubclassOf<UAISense> SenseClass) const` - 指定感知是否启用
- `RequestStimuliListenerUpdate()` - 通知感知系统更新此监听器的属性

## 示例

```angelscript
// 绑定感知更新事件
UAIPerceptionComponent Perception = AIController.GetAIPerceptionComponent();
Perception.OnTargetPerceptionUpdated.AddUFunction(this, n"OnTargetPerceived");

void OnTargetPerceived(AActor SourceActor, FAIStimulus Stimulus)
{
    if (Stimulus.WasSuccessfullySensed())
    {
        Print("感知到目标: " + SourceActor.GetName());
    }
    else
    {
        Print("失去目标: " + SourceActor.GetName());
    }
}

// 获取当前感知到的所有 Actor
TArray<AActor> PerceivedActors;
Perception.GetCurrentlyPerceivedActors(nullptr, PerceivedActors);
for (int i = 0; i < PerceivedActors.Num(); ++i)
{
    Print("感知中: " + PerceivedActors[i].GetName());
}

// 获取敌对 Actor
TArray<AActor> Hostiles;
Perception.GetPerceivedHostileActors(Hostiles);
```

## 相关页面

- [[AAIController]] - AI 控制器
- [[UAIPerceptionStimuliSourceComponent]] - 感知刺激源组件

## 来源

- [UAIPerceptionComponent.md](../../raw/API/Global/UAIPerceptionComponent.md)
