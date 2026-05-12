---
title: "函数和 Blueprint 事件摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - 函数
  - BlueprintEvent

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/functions-and-events.md
verified_by: agent
unverified_items: []
---

## 概述
本文档详细介绍了 Angelscript 中函数的定义、Blueprint 事件的重写、全局函数、以及 Super 调用等核心概念。

## 核心要点

### 函数定义
- 默认函数只能从脚本调用
- 添加 `UFUNCTION()` 使函数可被 Blueprint 访问
- `BlueprintCallable` 是默认设置，无需显式添加

### Blueprint 事件重写
- 使用 `BlueprintOverride` 重写 C++ 父类定义的 Blueprint 事件
- 常见例子：`BeginPlay`、`Tick`
- VS Code 提供快捷方式自动生成重写函数
- 常见前缀（Receive、BP_、K2_、Received_）会被自动简化

### 可被 Blueprint 重写的函数
- 使用 `BlueprintEvent` 标记可由子类 Blueprint 重写的函数
- **注意**：与 C++ 不同，不需要 `BlueprintImplementableEvent` 或 `BlueprintNativeEvent`
- 始终需要一个基类实现（即使为空）

### 分离 Blueprint 事件的最佳实践
建议模式：先运行脚本代码，再调用单独的 Blueprint 事件，确保脚本逻辑始终执行。

### 全局函数
- 全局函数也可以使用 `UFUNCTION()`，在 Blueprint 中可用
- 类似 Blueprint Function Library

### Super 调用
- 使用 `Super::Function()` 调用父类实现
- 脚本函数即使没有 `BlueprintEvent` 也可以被重写（所有脚本方法都是虚函数）
- **限制**：重写 C++ 的 `BlueprintNativeEvent` 时，无法调用 C++ 的 Super 实现

## 参考来源
[functions-and-events.md](../../raw/functions-and-events.md)
