---
title: "UTkInputConfig"
category: entities
date: 2026-05-09
tags:
  - DataAsset
  - 游戏特定
  - 输入

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UTkInputConfig.md
verified_by: agent
unverified_items: []
---

## 概述

UTkInputConfig 是项目自定义的不可变数据资产，包含输入配置属性。它将 Enhanced Input 的 UInputAction 与 [[FGameplayTag]] 关联起来，实现输入到能力的自动映射。

**核心用途**：定义输入动作与 GameplayTag 的映射关系，使输入系统能够自动或手动绑定到对应的游戏能力。

## 主要属性

- `TArray<FTkInputAction> NativeInputActions` - 原生输入动作列表，映射到 GameplayTag 但需要手动绑定
- `TArray<FTkInputAction> AbilityInputActions` - 能力输入动作列表，映射到 GameplayTag 并自动绑定到匹配输入标签的能力
- `TMap<EInputContext, FInputContextArrayWrapper> InputContextToIMC` - 输入上下文到 InputMappingContext 的映射

## 主要方法

- `const UInputAction FindNativeInputActionForTag(FGameplayTag InputTag, bool bLogNotFound = true) const` - 根据 GameplayTag 查找原生输入动作
- `const UInputAction FindAbilityInputActionForTag(FGameplayTag InputTag, bool bLogNotFound = true) const` - 根据 GameplayTag 查找能力输入动作

## 示例

```angelscript
// 根据 Tag 查找输入动作
UTkInputConfig InputConfig = GetInputConfig();
UInputAction JumpAction = InputConfig.FindNativeInputActionForTag(n"Input.Jump");
if (JumpAction != nullptr)
{
    Print("找到跳跃输入动作");
}

// 查找能力输入动作
UInputAction AttackAction = InputConfig.FindAbilityInputActionForTag(n"Input.Ability.Attack");
if (AttackAction != nullptr)
{
    Print("找到攻击能力输入动作");
}
```

## 相关页面

- [[FGameplayTag]] - GameplayTag 结构体
- [[UTkAbilitySet]] - 能力集

## 来源

- [UTkInputConfig.md](../../raw/API/Global/UTkInputConfig.md)
