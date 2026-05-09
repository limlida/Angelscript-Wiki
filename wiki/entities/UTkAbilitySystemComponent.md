---
title: "UTkAbilitySystemComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - GAS
  - 游戏特定
---

## 概述

UTkAbilitySystemComponent 是项目自定义的能力系统组件，继承自 [[UAbilitySystemComponent]]。它在标准 ASC 的基础上增加了输入缓存、GameplayEvent 处理和激活标签扩展等功能。

## 主要方法

### 输入缓存

- `BeginCacheInput(FGameplayTag InputType)` - 开始缓存指定类型的输入
- `EndCacheInput(FGameplayTag InputType)` - 结束缓存指定类型的输入
- `SimulateInput(FGameplayTag InputTag)` - 模拟输入（用于 AI 或回放）

### 事件处理

- `HandleGameplayEvent(FGameplayTag EventTag, FGameplayEventData Payload)` - 处理 GameplayEvent

### 激活标签

- `GetAdditionalActivationTagRequirements(FGameplayTagContainer AbilityTags, FGameplayTagContainer& OutActivationRequired, FGameplayTagContainer& OutActivationBlocked) const` - 根据能力标签获取额外的激活需求和阻止标签

### 客户端通知

- `ClientNotifyAbilityFailed(const UGameplayAbility Ability, FGameplayTagContainer FailureReason)` - 通知客户端能力激活失败

## 示例

```angelscript
// 获取项目自定义 ASC
UTkAbilitySystemComponent TkASC = Cast<UTkAbilitySystemComponent>(GetAbilitySystemComponent());
if (TkASC != nullptr)
{
    // 缓存输入
    TkASC.BeginCacheInput(n"Input.Combat");
    TkASC.EndCacheInput(n"Input.Combat");

    // 处理 GameplayEvent
    FGameplayEventData Payload;
    TkASC.HandleGameplayEvent(n"Event.Hit", Payload);

    // 模拟输入（AI 使用）
    TkASC.SimulateInput(n"Input.Ability.Attack");
}
```

## 继承关系

- [[UAbilitySystemComponent]] → **UTkAbilitySystemComponent**

## 相关页面

- [[UAbilitySystemComponent]] - 标准 ASC
- [[ATkNpcCharacter]] - NPC 角色（使用此组件）
- [[UTkAbilitySet]] - 能力集

## 来源

- [UTkAbilitySystemComponent.md](../../raw/API/Global/UTkAbilitySystemComponent.md)
