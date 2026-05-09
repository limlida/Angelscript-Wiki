---
title: "UTkGameplayAbility"
category: entities
date: 2026-05-09
tags:
  - GAS
  - 游戏特定
  - 能力
---

## 概述

UTkGameplayAbility 是项目自定义的游戏能力基类，继承自 [[UGameplayAbility]]。它在标准能力的基础上增加了激活策略、激活组和输入标签等扩展功能。

## 主要属性

### 激活策略

- `ETkAbilityActivationPolicy ActivationPolicy` - 定义能力的激活方式
  - `OnInputTriggered` - 输入触发时激活
  - `WhileInputActive` - 输入持续期间激活
  - `OnSpawn` - 生成时自动激活

### 激活组

- `ETkAbilityActivationGroup ActivationGroup` - 激活组，控制能力互斥
  - `Independent` - 独立激活，不阻止其他能力
  - `Exclusive_Replaceable` - 独占但可被替换
  - `Exclusive_Blocking` - 独占且阻止其他

### 输入

- `FGameplayTagContainer InputTagContainer` - 此能力响应的输入标签

### 其他

- `UTkAbilitySystemComponent OwnerASC` - 拥有此能力的 ASC
- `bool bLogCancelation` - 取消时是否记录额外信息（调试用）

## 主要方法

### 激活组管理

- `bool CanChangeActivationGroup(ETkAbilityActivationGroup NewGroup) const` - 是否可以切换到新的激活组
- `bool ChangeActivationGroup(ETkAbilityActivationGroup NewGroup)` - 尝试切换激活组

### 生命周期

- `OnAbilityAdded()` - 能力被授予时调用
- `OnAbilityRemoved()` - 能力被移除时调用
- `OnPawnAvatarSet()` - 能力系统初始化 Pawn Avatar 时调用

### 信息获取

- `UTkAbilitySystemComponent GetTkAbilitySystemComponentFromActorInfo() const` - 获取项目自定义 ASC
- `AController GetControllerFromActorInfo() const` - 获取控制器

## 示例

```angelscript
// 自定义能力
class UMyAttackAbility : UTkGameplayAbility
{
    void ActivateAbility() override
    {
        Super::ActivateAbility();

        if (!CommitAbility())
        {
            EndAbility();
            return;
        }

        Print("攻击能力激活，组: " + ActivationGroup);
        EndAbility();
    }
}
```

## 继承关系

- [[UGameplayAbility]] → **UTkGameplayAbility**

## 相关页面

- [[UGameplayAbility]] - 标准 GameplayAbility
- [[UTkAbilitySystemComponent]] - 项目自定义 ASC
- [[UTkAbilitySet]] - 能力集

## 来源

- [UTkGameplayAbility.md](../../raw/API/Global/UTkGameplayAbility.md)
