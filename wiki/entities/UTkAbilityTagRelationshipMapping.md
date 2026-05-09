---
title: "UTkAbilityTagRelationshipMapping"
category: entities
date: 2026-05-09
tags:
  - GAS
  - 游戏特定
  - DataAsset
---

## 概述

UTkAbilityTagRelationshipMapping 是项目自定义的数据资产，定义了能力标签之间的阻止和取消关系。它用于控制不同能力之间的互斥逻辑。

**核心用途**：当一个能力激活时，自动阻止或取消拥有特定标签的其他能力。

## 主要属性

- `TArray<FTkAbilityTagRelationship> AbilityTagRelationships` - 能力标签关系列表，定义哪些标签阻止或取消其他标签

## 示例

```angelscript
// 在编辑器中配置 UTkAbilityTagRelationshipMapping 资产
// 例如：
// - 标签 "Ability.Attack.Heavy" 阻止 "Ability.Attack.Light"
// - 标签 "Ability.Dodge" 取消 "Ability.Attack.*"
// - 标签 "Ability.Stun" 取消所有 "Ability.*"
```

## 相关页面

- [[UAbilitySystemComponent]] - 能力系统组件
- [[FGameplayTag]] - GameplayTag
- [[UTkGameplayAbility]] - 项目自定义能力

## 来源

- [UTkAbilityTagRelationshipMapping.md](../../raw/API/Global/UTkAbilityTagRelationshipMapping.md)
