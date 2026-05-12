---
title: "Mixin 方法摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - Mixin
  - 扩展方法
  - 设计模式

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/mixin-methods.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了 Angelscript 中 Mixin 方法的声明和使用，允许在类外部为现有类型添加方法。

## 核心要点

### 声明 Mixin 方法
- 使用 `mixin` 关键字声明全局函数
- 第一个参数是方法附加到的对象（`Self`）
- 调用时 `Self` 参数自动填充

```angelscript
mixin void ExampleMixinTeleportActor(AActor Self, FVector Location)
{
    Self.ActorLocation = Location;
}
```

### 为结构体添加 Mixin
- 使用引用参数 `&` 修改结构体

```angelscript
mixin void SetVectorToZero(FVector& Vector)
{
    Vector = FVector(0, 0, 0);
}
```

### C++ Mixin 库
- 可通过 C++ 的 `ScriptMixin` 元数据创建 Mixin 库
- 详见 [[Source_ScriptMixinLibraries]]

## 相关概念
- [[Mixin模式]]

## 来源
[mixin-methods.md](../../raw/mixin-methods.md)
