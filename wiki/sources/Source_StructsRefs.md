---
title: "结构体与引用摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 结构体
  - 引用
  - 值类型

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/structs-refs.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了 Angelscript 中结构体的声明、传递和引用机制。

## 核心要点

### 声明结构体
- 使用 `struct` 关键字声明值类型
- `UPROPERTY()` 属性可在 Blueprint 中访问
- 非 `UPROPERTY()` 属性仅在脚本内可见
- **结构体不能有 `UFUNCTION()`**，但可以有普通脚本方法

### 传递和返回结构体
- 结构体可作为函数参数和返回值正常传递
- 默认参数是只读的（`const` 引用语义）

### 结构体引用
- 使用 `&` 获取可修改的引用
```angelscript
void RandomizeNumberInStruct(FExampleStruct& Struct)
{
    Struct.ExampleNumber = Math::RandRange(0.0, 1.0);
}
```

### 输出参数 `&out`
- `&out` 声明输出参数，在 Blueprint 中创建输出引脚
- 适用于结构体和基本类型

### 自动引用优化
- 脚本函数的结构体参数始终以 `const &` 传递
- `FVector` 和 `const FVector&` 参数在性能和语义上完全相同
- 无需手动添加 `const &` 优化

## 相关概念
- [[类型系统与引用]]

## 来源
[structs-refs.md](../../raw/structs-refs.md)
