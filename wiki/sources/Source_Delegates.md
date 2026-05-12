---
title: "委托和事件摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - 委托
  - 事件
  - Delegate
  - Event

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/delegates.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了 Angelscript 中如何定义、使用委托（Delegate）和事件（Event）。

## 核心要点

### 声明委托
```angelscript
delegate void FExampleDelegate(UObject Object, float Value);
```
- 类似 C++ 的 `DECLARE_DYNAMIC_DELEGATE()`
- 绑定的函数必须是 `UFUNCTION()`

### 使用委托
- `BindUFunction(Object, FunctionName)`：绑定到对象的函数
- `ExecuteIfBound(Args...)`：执行绑定的函数（如已绑定）
- 可通过构造函数直接创建绑定的委托

### 声明事件
```angelscript
event void FExampleEvent(int Counter);
```
- 类似 C++ 的 `DECLARE_DYNAMIC_MULTICAST_DELEGATE()`
- 可绑定多个函数
- 绑定的函数必须是 `UFUNCTION()`

### 使用事件
- `AddUFunction(Object, FunctionName)`：添加绑定函数
- `Broadcast(Args...)`：广播事件，调用所有绑定函数
- 如果声明为 `UPROPERTY()`，可在 Blueprint 中绑定

### VS Code 快捷方式
- 当绑定到不存在的函数时，VS Code 扩展可自动生成函数

## 参考来源
[delegates.md](../../raw/delegates.md)
