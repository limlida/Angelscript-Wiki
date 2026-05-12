---
title: "GameplayTag 摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - GameplayTag
  - 命名空间
  - 语法糖

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/gameplay-tags.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了 Angelscript 中 GameplayTag 的自动绑定和命名空间访问方式。

## 核心要点

### 自动绑定到全局命名空间
- 所有 `FGameplayTag` 自动绑定到 `GameplayTags` 全局命名空间
- 非字母数字字符（包括 `.` 分隔符）自动转为下划线 `_`

### 使用示例
```angelscript
// 假设有 GameplayTag "UI.Action.Escape"
FGameplayTag TheTag = GameplayTags::UI_Action_Escape;
```

### 优势
- **编译时检查**：拼写错误在编译时发现
- **IDE 自动补全**：所有标签可自动补全
- **零运行时开销**：编译时解析

## 相关概念
- [[GameplayTag命名空间]]

## 来源
[gameplay-tags.md](../../raw/gameplay-tags.md)
