---
title: "Angelscript 全量 API 文档摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - API
  - 参考
  - 结构体

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/api-reference.md
verified_by: agent
unverified_items: []
---

## 概述
这是 UnrealEngine-Angelscript 的全量 API 文档，包含超过 18,000 个类型，主要分为两大部分：
- **Structs (结构体)**：5,604 个类型
- **Global (全局)**：9,005 个类型

## 主要内容

### 1. 结构体分类
文档包含大量 Unreal 核心结构体，如：

**AI 相关**
- `FAIDamageEvent`
- `FAIStimulus`
- `FAIPerceptionBlueprintInfo`
- `FAINoiseEvent`

**Actor 相关**
- `FActorTickFunction`
- `FActorPerceptionUpdateInfo`
- `FActorDestroyedSignature`
- `FActorBeginOverlapSignature`

**动画相关**
- `FAimConstraintDescription`
- `FAnimNotifyEvent`
- `FAnimInstanceProxy`

**数学和几何**
- `FVector`
- `FRotator`
- `FTransform`
- `FMatrix`
- `FQuat`

**游戏性**
- `FActiveGameplayEffect`
- `FGameplayTag`
- `FGameplayAbilitySpec`

### 2. 结构体通用模式
大部分结构体包含：
- **属性**：以 `UPROPERTY` 暴露
- **方法**：主要包括
  - 赋值运算符：`opAssign(Other)`
  - 其他操作符和函数

### 3. 全局类型
包括全局函数、命名空间、枚举等。

## 特点
- **生成时间**：2026-05-08T06:31:37.839Z
- **自动生成**：基于 Unreal 反射系统自动绑定
- **完整性**：包含大部分 Unreal 核心类型

## 使用方式
此文档主要作为参考使用，查找特定结构体的属性和方法。

## 来源
[AngelScript_API.md](../../raw/AngelScript_API.md)
