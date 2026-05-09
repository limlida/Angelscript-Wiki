---
title: "UTkAttributeSetBase"
category: entities
date: 2026-05-09
tags:
  - GAS
  - 游戏特定
  - 属性
---

## 概述

UTkAttributeSetBase 是项目自定义的属性集基类，继承自 [[UAttributeSet]]。它定义了项目通用的战斗属性。

## 主要属性

- `FGameplayAttributeData AttackPower` - 攻击力/冲击力，用于削韧/破防计算
- `FGameplayAttributeData Block` - 格挡值

## 主要方法

- `UTkAbilitySystemComponent GetTkAbilitySystemComponent() const` - 获取项目自定义 ASC

## 示例

```angelscript
// 访问属性
UTkAbilitySystemComponent ASC = GetTkAbilitySystemComponent();
float32 AttackPower = ASC.GetNumericAttribute(n"Attribute.AttackPower");
float32 Block = ASC.GetNumericAttribute(n"Attribute.Block");
Print("攻击力: " + AttackPower + " 格挡: " + Block);
```

## 继承关系

- [[UAttributeSet]] → **UTkAttributeSetBase**

## 相关页面

- [[UAttributeSet]] - 属性集基类
- [[UAbilitySystemComponent]] - 能力系统组件

## 来源

- [UTkAttributeSetBase.md](../../raw/API/Global/UTkAttributeSetBase.md)
