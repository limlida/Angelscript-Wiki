---
title: "UAbilitySystemComponent"
category: entities
date: 2026-05-09
tags:
  - Component
  - GAS
  - 能力系统
---

## 概述

UAbilitySystemComponent（ASC）是 Gameplay Ability System（GAS）的核心组件，负责管理能力、效果和属性。它是整个 GAS 架构的中央协调器，通常添加到拥有能力的 Actor 上。

**核心职责**：
- 管理能力的授予、激活和取消
- 管理游戏效果的应用和移除
- 管理属性集的注册
- 处理 GameplayTag 的增删查
- 管理游戏效果间的交互

## 主要方法

### 能力管理

- `FGameplayAbilitySpecHandle GiveAbility(FGameplayAbilitySpec AbilitySpec)` - 授予能力
- `bool TryActivateAbility(FGameplayAbilitySpecHandle AbilityToActivate, bool InputPressed = false)` - 尝试激活能力
- `CancelAbility(UGameplayAbility Ability)` - 取消指定能力
- `CancelAbilities(FGameplayTagContainer WithTags, FGameplayTagContainer WithoutTags, UGameplayAbility Ignore = nullptr)` - 按标签取消能力
- `CancelAllAbilities()` - 取消所有能力
- `ClearAbility(FGameplayAbilitySpecHandle Handle)` - 移除指定能力
- `GetAllAbilities(TArray<FGameplayAbilitySpec>& OutAbilities) const` - 获取所有能力

### 能力查询

- `bool HasAbility(UGameplayAbility Ability) const` - 是否拥有指定能力
- `bool IsAbilityActive(FGameplayAbilitySpecHandle Handle) const` - 指定能力是否激活
- `UGameplayAbility FindAbilitySpecAndActivateAbility(FGameplayAbilitySpecHandle Handle, bool InputPressed, FGameplayTagContainer& OutFailedTags)` - 查找并激活能力

### GameplayTag 管理

- `FGameplayTagContainer GetOwnedGameplayTags(FGameplayTagContainer& OutTagContainer) const` - 获取拥有的所有 GameplayTag
- `bool HasAnyMatchingGameplayTags(FGameplayTagContainer TagContainer) const` - 是否匹配任何标签
- `bool HasAllMatchingGameplayTags(FGameplayTagContainer TagContainer) const` - 是否匹配所有标签
- `bool HasMatchingGameplayTag(FGameplayTag TagToCheck) const` - 是否匹配指定标签
- `bool HasTag(FGameplayTag TagToCheck) const` - 是否拥有指定标签
- `bool HasTagExact(FGameplayTag TagToCheck) const` - 是否精确拥有指定标签

### 游戏效果管理

- `FActiveGameplayEffectHandle ApplyGameplayEffectToSelf(UGameplayEffect GameplayEffect, float32 Level = 1.0, FGameplayEffectContextHandle EffectContext = FGameplayEffectContextHandle())` - 对自身应用效果
- `FActiveGameplayEffectHandle ApplyGameplayEffectToTarget(FGameplayAbilityTargetDataHandle Target, UGameplayEffect GameplayEffect, float32 Level = 1.0, FGameplayEffectContextHandle EffectContext = FGameplayEffectContextHandle())` - 对目标应用效果
- `bool RemoveActiveGameplayEffect(FActiveGameplayEffectHandle Handle, int StacksToRemove = -1)` - 移除活跃效果
- `void RemoveActiveEffects(FGameplayEffectQuery Query, int StacksToRemove = -1)` - 按查询移除效果
- `void ClearAllEffects()` - 清除所有效果

### 属性查询

- `float32 GetNumericAttribute(FGameplayAttribute Attribute) const` - 获取数值属性
- `void SetNumericAttribute(FGameplayAttribute Attribute, float32 NewValue)` - 设置数值属性

### 其他

- `void UpdateTagMap(FGameplayTag Tag, int32 CountDelta)` - 更新标签映射计数
- `void AddLooseGameplayTag(FGameplayTag Tag)` - 添加松散 GameplayTag
- `void RemoveLooseGameplayTag(FGameplayTag Tag)` - 移除松散 GameplayTag
- `void AddLooseGameplayTags(FGameplayTagContainer Tags)` - 批量添加松散 GameplayTag
- `void RemoveLooseGameplayTags(FGameplayTagContainer Tags)` - 批量移除松散 GameplayTag

## 示例

```angelscript
// 获取 AbilitySystemComponent
UAbilitySystemComponent ASC = GetAbilitySystemComponent();

// 授予能力
FGameplayAbilitySpec Spec = FGameplayAbilitySpec(AbilityClass, 1);
FGameplayAbilitySpecHandle Handle = ASC.GiveAbility(Spec);

// 激活能力
ASC.TryActivateAbility(Handle);

// 检查 GameplayTag
if (ASC.HasMatchingGameplayTag(n"State.Stunned"))
{
    Print("角色被眩晕");
}

// 对自身应用效果
ASC.ApplyGameplayEffectToSelf(HealEffect, 1.0f);

// 添加/移除松散标签
ASC.AddLooseGameplayTag(n"State.Invincible");
ASC.RemoveLooseGameplayTag(n"State.Invincible");

// 获取属性值
float32 Health = ASC.GetNumericAttribute(n"Attribute.Health");
Print("当前血量: " + Health);
```

## 相关页面

- [[UGameplayAbility]] - 游戏能力
- [[UGameplayEffect]] - 游戏效果
- [[UAttributeSet]] - 属性集
- [[UTkAbilitySet]] - 项目自定义能力集
- [[FGameplayTag]] - GameplayTag

## 来源

- [UAbilitySystemComponent.md](../../raw/API/Global/UAbilitySystemComponent.md)
