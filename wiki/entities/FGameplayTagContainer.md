---
title: "FGameplayTagContainer"
category: entities
date: 2026-05-09
tags:
  - Struct
  - GameplayTag
  - GAS
---

## 概述

FGameplayTagContainer 是 [[FGameplayTag]] 的容器，持有一组 GameplayTag。添加标签时，子标签会被隐式包含。这是 GAS 中最常用的标签查询和存储结构。

## 主要属性

- `TArray<FGameplayTag> GameplayTags` - 显式添加的 GameplayTag 数组

## 主要方法

### 添加标签

- `AddTag(FGameplayTag TagToAdd)` - 添加标签（含隐式父标签）
- `AddLeafTag(FGameplayTag TagToAdd)` - 添加叶标签（仅添加显式标签）
- `AddTagFast(FGameplayTag TagToAdd)` - 快速添加标签（不检查重复）
- `AppendTags(FGameplayTagContainer TagsToAdd)` - 批量添加标签

### 移除标签

- `bool RemoveTag(FGameplayTag TagToRemove)` - 移除标签
- `RemoveTags(FGameplayTagContainer TagsToRemove)` - 批量移除标签

### 查询

- `bool HasTag(FGameplayTag TagToCheck) const` - 是否包含指定标签（含父标签匹配）
- `bool HasTagExact(FGameplayTag TagToCheck) const` - 是否精确包含指定标签
- `bool HasAny(FGameplayTagContainer ContainerToCheck) const` - 是否包含容器中的任一标签
- `bool HasAnyExact(FGameplayTagContainer ContainerToCheck) const` - 是否精确包含容器中的任一标签
- `bool HasAll(FGameplayTagContainer ContainerToCheck) const` - 是否包含容器中的所有标签
- `bool HasAllExact(FGameplayTagContainer ContainerToCheck) const` - 是否精确包含容器中的所有标签
- `bool MatchesQuery(FGameplayTagQuery Query) const` - 是否匹配查询

### 过滤

- `FGameplayTagContainer Filter(FGameplayTagContainer OtherContainer) const` - 过滤出同时存在于两个容器中的标签
- `FGameplayTagContainer FilterExact(FGameplayTagContainer OtherContainer) const` - 精确过滤

### 其他

- `int Num() const` - 标签数量
- `bool IsEmpty() const` - 是否为空
- `bool IsValid() const` - 是否有效
- `FGameplayTag First() const` - 获取第一个标签
- `FGameplayTag Last() const` - 获取最后一个标签
- `FGameplayTagContainer GetGameplayTagParents() const` - 获取所有父标签

## 示例

```angelscript
// 创建标签容器
FGameplayTagContainer Tags;
Tags.AddTag(n"State.Alive");
Tags.AddTag(n"State.Walking");

// 查询标签
if (Tags.HasTag(n"State.Alive"))
{
    Print("存活"); // 匹配，因为 State.Alive 是显式添加的
}

if (Tags.HasTag(n"State")) // 也匹配！因为 State 是 State.Alive 的父标签
{
    Print("有状态标签");
}

// 精确查询
if (!Tags.HasTagExact(n"State")) // 不匹配，因为 State 不是显式添加的
{
    Print("没有精确的 State 标签");
}

// 批量查询
FGameplayTagContainer RequiredTags;
RequiredTags.AddTag(n"State.Alive");
if (Tags.HasAll(RequiredTags))
{
    Print("满足所有必需标签");
}

// 过滤
FGameplayTagContainer FilterContainer;
FilterContainer.AddTag(n"State.Alive");
FilterContainer.AddTag(n"State.Dead");
FGameplayTagContainer Result = Tags.Filter(FilterContainer);
// Result 包含 n"State.Alive"
```

## 相关页面

- [[FGameplayTag]] - 单个 GameplayTag
- [[UAbilitySystemComponent]] - 能力系统组件
- [[ATkPlayerState]] - 包含 GameplayTagContainer 查询

## 来源

- [FGameplayTagContainer.md](../../raw/API/Structs/FGameplayTagContainer.md)
