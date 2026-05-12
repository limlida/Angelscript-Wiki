---
title: "脚本 Mixin 库摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - Mixin
  - C++ 绑定
  - ScriptMixin

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/script-mixin-libraries.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了如何在 C++ 中创建 Mixin 库，为现有类型添加脚本可用的方法。

## 核心要点

### C++ Mixin 库
- 使用 `UCLASS(Meta = (ScriptMixin = "TypeName"))` 标记
- 静态函数的第一个参数匹配目标类型时，自动绑定为该类型的方法

### 为结构体添加 Mixin
```cpp
UCLASS(Meta = (ScriptMixin = "FVector"))
class UFVectorScriptMixinLibrary : public UObject
{
    UFUNCTION(ScriptCallable)
    static void ResetTo(FVector& Vector, float NewValue);

    UFUNCTION(ScriptCallable)
    static float GetSummedValue(const FVector& Vector);
};
```
- `const &` 参数 → const 方法（可作为属性访问器）
- `&` 参数 → 可修改方法

### 为类添加 Mixin
```cpp
UCLASS(Meta = (ScriptMixin = "AActor"))
class UMyActorMixinLibrary : public UObject
{
    UFUNCTION(ScriptCallable)
    static void TeleportToOrigin(AActor* Actor);
};
```
- 使用指针作为第一个参数

### 内置 Mixin 库
- 插件自带多个 Mixin 库，暴露 C++ 中无法通过 Blueprint 暴露的功能
- 例如：`TimelineComponentMixinLibrary`

## 相关概念
- [[Mixin模式]]

## 来源
[script-mixin-libraries.md](../../raw/script-mixin-libraries.md)
