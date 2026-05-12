---
title: "与 C++ 差异摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - C++
  - 差异
  - 对比

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/cpp-differences.md
verified_by: agent
unverified_items: []
---

## 概述
本文档总结了 Angelscript 与 Unreal C++ 之间的主要差异，帮助有 C++ 经验的开发者快速上手。

## 核心差异

### 对象与指针
- 脚本中所有 `UObject` 都是引用，没有指针
- 使用 `.` 而不是 `->`
- 无需 `UPROPERTY()` 来避免垃圾回收 - 所有脚本对象引用自动被 GC 追踪

### UPROPERTY 默认值
- 默认是 `EditAnywhere` + `BlueprintReadWrite`
- 可通过项目设置更改此行为

### UFUNCTION 默认值
- 默认是 `BlueprintCallable`
- 可通过项目设置要求显式声明

### 构造函数与 default 语句
- 不使用构造函数
- 在类体中设置属性默认值
- 使用 `default` 语句设置子对象默认值

### 浮点数宽度
- `float` 在脚本中实际上是 64 位双精度
- 要使用特定宽度，显式使用 `float32` 或 `float64`
- 这样设计是为了简化，与蓝图的行为一致

## 参考来源
[cpp-differences.md](../../raw/cpp-differences.md)
