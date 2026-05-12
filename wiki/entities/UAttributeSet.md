---
title: "UAttributeSet"
category: entities
date: 2026-05-09
tags:
  - GAS
  - 能力系统
  - 属性

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UAttributeSet.md
verified_by: agent
unverified_items: []
---

## 概述

UAttributeSet 定义了游戏中所有 GameplayAttribute 的集合。游戏应继承此类并添加 `FGameplayAttributeData` 属性来表示血量、伤害等数值。

**核心用途**：
- 定义角色的属性（血量、法力、体力、攻击力等）
- AttributeSet 作为子对象添加到 Actor，然后注册到 [[UAbilitySystemComponent]]
- 可以通过继承创建多层属性集（基础属性集 → 玩家属性集 → 特殊属性集）

## 使用方式

AttributeSet 通常在 C++ 中定义属性，Angelscript 中通过 [[UAbilitySystemComponent]] 的 `GetNumericAttribute` / `SetNumericAttribute` 方法访问。

```angelscript
// 获取属性值
UAbilitySystemComponent ASC = GetAbilitySystemComponent();
float32 Health = ASC.GetNumericAttribute(n"Attribute.Health");
float32 MaxHealth = ASC.GetNumericAttribute(n"Attribute.MaxHealth");

// 设置属性值
ASC.SetNumericAttribute(n"Attribute.Health", 100.0f);
```

## 相关页面

- [[UAbilitySystemComponent]] - 能力系统组件
- [[UGameplayEffect]] - 游戏效果（修改属性值）
- [[UGameplayAbility]] - 游戏能力

## 来源

- [UAttributeSet.md](../../raw/API/Global/UAttributeSet.md)
