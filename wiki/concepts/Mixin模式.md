---
title: "Mixin 模式"
category: concepts
date: 2026-05-08
tags:
  - Mixin
  - 扩展方法
  - 设计模式
---

## 概述
Mixin 模式允许在类外部为现有类型添加方法，无需修改原类或继承。这是一种灵活的代码组织方式。

## 在 Angelscript 中的用法

### 声明 Mixin 方法
使用 `mixin` 关键字，第一个参数是该方法要附加到的类型。
```angelscript
mixin void ExampleMixinMethod(AActor Self, FVector Offset)
{
    Self.ActorLocation += Offset;
}
```

### 使用 Mixin 方法
就像调用该类型的原生方法一样调用。
```angelscript
AActor SomeActor;
SomeActor.ExampleMixinMethod(FVector(0, 0, 100));
```

### 为结构体添加 Mixin
可以通过引用参数修改结构体。
```angelscript
mixin void Reset(FVector& Vec)
{
    Vec = FVector(0, 0, 0);
}

// 使用
FVector Vec(1, 2, 3);
Vec.Reset();
```

## 在 C++ 中添加 Mixin 库
也可以在 C++ 中为脚本创建 Mixin 库，详情见：
- [[Source_ScriptMixinLibraries]]

## 来源
[[Source_MixinMethods]]
[[Source_ScriptMixinLibraries]]

## 相关概念
- [[FName字面量]] - Mixin 绑定函数时使用 `n""` 语法
- [[自动绑定]] - C++ ScriptMixin 是自动绑定机制的扩展
