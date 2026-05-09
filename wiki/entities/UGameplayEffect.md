---
title: "UGameplayEffect"
category: entities
date: 2026-05-09
tags:
  - GAS
  - 能力系统
---

## 概述

UGameplayEffect 是 GAS 中的游戏效果，用于修改属性、应用标签和执行其他状态变更。**GameplayEffect 是纯数据资产，不包含逻辑。** 它定义了"什么发生了变化"，而 [[UGameplayAbility]] 定义了"如何触发"。

**核心用途**：
- 修改属性值（伤害、治疗、buff/debuff）
- 授予/移除 GameplayTag
- 触发 GameplayCue
- 定义能力的成本和冷却

## 主要属性

### 持续时间

- `float32 DurationMagnitude` - 持续时间策略
  - `Instant` - 瞬时（立即应用并销毁）
  - `Infinite` - 无限（持续到手动移除）
  - `HasDuration` - 有持续时间

### 修饰器

- `TArray<FGameplayModifierInfo> Modifiers` - 属性修饰器列表，定义如何修改属性

### 授予标签

- `FGameplayTagContainer GrantedTags` - 效果激活时授予的标签
- `FGameplayTagContainer AssetTags` - 效果本身的标签（不授予目标）
- `FGameplayTagContainer GrantedApplicationTags` - 应用时授予的标签

### 条件标签

- `FGameplayTagContainer ApplicationRequiredTags` - 应用所需标签
- `FGameplayTagContainer ApplicationBlockedTags` - 应用阻止标签
- `FGameplayTagContainer RemoveGameplayEffectsWithTags` - 应用时移除拥有这些标签的效果

### 堆叠

- `EGameplayEffectStackingType StackingType` - 堆叠类型
  - `None` - 不堆叠
  - `AggregateBySource` - 按来源聚合堆叠
  - `AggregateByTarget` - 按目标聚合堆叠
- `int StackLimitCount` - 堆叠上限

### 应用概率

- `float32 ChanceToApplyToTarget` - 应用到目标的概率（0~1）

## 示例

```angelscript
// 在编辑器中创建 GameplayEffect 资产
// GE_Damage: Instant, 修改 Health 属性（加法 -50）
// GE_Heal: Instant, 修改 Health 属性（加法 +30）
// GE_SpeedBuff: HasDuration(10s), 修改 MoveSpeed 属性（乘法 1.5）
// GE_Stun: Infinite, 授予 State.Stunned 标签

// 在能力中应用效果
ApplyGameplayEffectToOwner(GE_DamageClass, 1);
ApplyGameplayEffectToOwner(GE_HealClass, 1);
ApplyGameplayEffectToOwner(GE_SpeedBuffClass, 1);
```

## 相关页面

- [[UAbilitySystemComponent]] - 能力系统组件
- [[UGameplayAbility]] - 游戏能力
- [[UAttributeSet]] - 属性集

## 来源

- [UGameplayEffect.md](../../raw/API/Global/UGameplayEffect.md)
