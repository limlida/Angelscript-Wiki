---
title: "UTkAbilitySet"
category: entities
date: 2026-05-09
tags:
  - DataAsset
  - 游戏特定
  - GAS
---

## 概述

UTkAbilitySet 是项目自定义的不可变数据资产，用于批量授予 Gameplay Ability System（GAS）中的能力、效果和属性集。它是 GAS 初始化流程中的关键组件，通常在角色初始化时通过 [[UTkAbilitySystemComponent]] 授予。

**核心用途**：将一组相关的能力、效果和属性打包成一个资产，方便一次性授予给角色的 AbilitySystemComponent。

## 主要属性

- `TArray<FTkAbilitySet_AttributeSet> GrantedAttributes` - 授予时要添加的属性集列表
- `TArray<FTkAbilitySet_GameplayAbility> GrantedGameplayAbilities` - 授予时要添加的游戏能力列表
- `TArray<FTkAbilitySet_GameplayEffect> GrantedGameplayEffects` - 授予时要添加的游戏效果列表

## 主要方法

- `GiveToAbilitySystem(UTkAbilitySystemComponent TkASC) const` - 将此能力集中的所有能力、效果和属性授予指定的 AbilitySystemComponent

## 示例

```angelscript
// 在角色初始化时授予能力集
UTkAbilitySet AbilitySet = Cast<UTkAbilitySet>(MyAbilitySetAsset);
if (AbilitySet != nullptr)
{
    UTkAbilitySystemComponent ASC = GetAbilitySystemComponent();
    AbilitySet.GiveToAbilitySystem(ASC);
    Print("能力集已授予");
}
```

## 相关页面

- [[APlayerState]] - 玩家状态
- [[FGameplayTag]] - GameplayTag 结构体

## 来源

- [UTkAbilitySet.md](../../raw/API/Global/UTkAbilitySet.md)
