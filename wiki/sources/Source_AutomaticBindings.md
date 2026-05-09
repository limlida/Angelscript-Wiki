---
title: "自动绑定摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 自动绑定
  - C++ 绑定
  - 反射
---

## 概述
本文档介绍了 Angelscript 插件的自动绑定机制，将 C++ 的反射数据自动暴露给脚本。

## 核心要点

### 核心原则
**如果可以从 Blueprint 使用，就应该可以从 Angelscript 使用。**

### 类绑定
- `UCLASS()` + `BlueprintType` 或包含 `BlueprintCallable` 函数 → 自动绑定
- 跳过标记：`NotInAngelscript` 元数据

### 结构体绑定
- `USTRUCT()` + `BlueprintType` 或包含 Blueprint 可访问属性 → 自动绑定
- 跳过标记：`NoAutoAngelscriptBind` 元数据

### 属性绑定
- **BlueprintReadWrite** → 可读写
- **BlueprintReadOnly** → 只读（`const`）
- **ScriptReadWrite / ScriptReadOnly** → 仅脚本可用，不暴露给 Blueprint
- **EditAnywhere / EditInstanceOnly / EditDefaultsOnly** → 仅在 `default` 语句中可访问
- 跳过标记：`NotInAngelscript` 元数据

### 函数绑定
- **BlueprintCallable / BlueprintPure** → 自动绑定
- **ScriptCallable** → 仅脚本可用
- **BlueprintImplementableEvent / BlueprintNativeEvent** → 可从脚本重写
- 跳过标记：`NotInAngelscript` 元数据
- 废弃函数不绑定

### 静态函数
- 绑定为命名空间全局函数
- 类名经过命名空间简化

### 枚举绑定
- 所有 `UENUM()` 自动可用

## 相关概念
- [[自动绑定]]
- [[类型系统与引用]]

## 来源
[automatic-bindings.md](../../raw/automatic-bindings.md)
