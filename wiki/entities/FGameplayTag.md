---
title: "FGameplayTag"
category: entities
date: 2026-05-09
tags:
  - Struct
  - GameplayTag
  - GAS

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FGameplayTag.md
verified_by: agent
unverified_items: []
---

## 概述

FGameplayTag 是单个 GameplayTag，表示形如 `x.y.z` 的层级名称，在 GameplayTagsManager 中注册。GameplayTag 是 GAS（Gameplay Ability System）的核心数据结构，用于标记状态、分类和过滤。

**Angelscript 中的特殊语法**：可以使用 `n"Tag.Path"` 字面量创建 FName，再用于 GameplayTag 查找。详见 [[FName字面量]] 和 [[GameplayTag命名空间]]。

## 主要方法

### 比较

- `bool opEquals(FGameplayTag Other) const` - 相等比较运算符
- `bool MatchesTag(FGameplayTag TagToCheck) const` - 是否匹配指定标签（含父标签）
- `bool MatchesTagExact(FGameplayTag TagToCheck) const` - 是否精确匹配指定标签（不含父标签）
- `bool MatchesAny(FGameplayTagContainer ContainerToCheck) const` - 是否匹配容器中的任何标签
- `bool MatchesAnyExact(FGameplayTagContainer ContainerToCheck) const` - 是否精确匹配容器中的任何标签
- `int MatchesTagDepth(FGameplayTag TagToCheck) const` - 返回与指定标签的匹配深度

### 查询

- `FName GetTagName() const` - 获取标签名称
- `FString ToString() const` - 转换为字符串
- `bool IsValid() const` - 标签是否有效
- `FGameplayTagContainer GetGameplayTagParents() const` - 获取此标签的所有父标签
- `FGameplayTagContainer GetSingleTagContainer() const` - 获取仅包含此标签的容器
- `FGameplayTag RequestDirectParent() const` - 获取直接父标签

### 赋值

- `FGameplayTag& opAssign(FGameplayTag Other)` - 赋值运算符

## 示例

```angelscript
// 检查标签匹配
FGameplayTag Tag = GetGameplayTag();
if (Tag.MatchesTag(n"State.Alive"))
{
    Print("角色存活");
}

// 精确匹配（不包含父标签）
if (Tag.MatchesTagExact(n"State.Alive.Walking"))
{
    Print("角色正在行走");
}

// 检查标签有效性
if (Tag.IsValid())
{
    Print("标签名: " + Tag.GetTagName().ToString());
}

// 获取父标签
FGameplayTagContainer Parents = Tag.GetGameplayTagParents();
Print("父标签数量: " + Parents.Num());
```

## 相关页面

- [[ATkPlayerState]] - 包含 GameplayTag 查询方法
- [[UTkAbilitySet]] - 使用 GameplayTag 关联能力
- [[UTkInputConfig]] - 使用 GameplayTag 映射输入
- [[GameplayTag命名空间]] - GameplayTag 命名空间概念

## 来源

- [FGameplayTag.md](../../raw/API/Structs/FGameplayTag.md)
