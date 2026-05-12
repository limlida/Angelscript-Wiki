---
title: "FName 字面量摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - FName
  - 语法糖
  - 性能优化

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/fname-literals.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了 Angelscript 中 FName 字面量（`n""`）的用法，这是一种编译时优化的 FName 创建方式。

## 核心要点

### FName 的背景
- Unreal 大量使用 `FName` 进行高效名称传递
- `FName` 本质上是名称表的索引，创建时需要表查找或插入
- C++ 中常用全局/静态变量缓存 `FName` 常量以避免重复查找

### 语法糖：`n""` 字面量
- **语法**：`n"NameLiteral"`
- **优势**：在 Angelscript 编译时初始化，消除运行时名称表查找
- **零运行时开销**

### 使用示例
```angelscript
FName NameVariable = n"MyName";
ValuesByName.Add(NameVariable, 1);

FExampleDelegate Delegate;
Delegate.BindUFunction(this, n"FunctionBoundToDelegate");
Delegate.ExecuteIfBound();
```

### 典型用途
- 委托绑定时指定函数名
- TMap 的键
- 任何需要 FName 的场景

## 相关概念
- [[FName 字面量语法糖]]
- [[类型系统与引用]]

## 来源
[fname-literals.md](../../raw/fname-literals.md)
