---
title: "函数库摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - 函数库
  - Math
  - System
---

## 概述
本文档介绍了 Angelscript 中的函数库（Function Library）概念，以及如何通过命名空间使用这些函数库，特别是 Math 命名空间的特殊处理。

## 核心要点

### 函数库作为命名空间
- Blueprint 函数库自动作为命名空间暴露
- 例如：`System::SetTimer()`、`Math::Sin()`

### 常见内置函数库
- **Math::**：数学函数（与 C++ 的 FMath 保持一致）
- **Gameplay::**：游戏功能（流送、伤害、玩家等）
- **System::**：引擎功能（定时器、射线检测、调试绘制）
- **Niagara::**：Niagara 粒子系统
- **Widget::**：UMG 控件功能

### 命名空间简化
- 自动移除常见前缀/后缀：
  - U...Statics
  - U...Library / U...FunctionLibrary
  - UKismet...Library / UKismet...FunctionLibrary
  - UBlueprint...Library / UBlueprint...FunctionLibrary
- 例如：`UKismetSystemLibrary` → `System::`

### Math 命名空间特殊处理
- `UKismetMathLibrary` **不会**被自动绑定
- Math 命名空间直接与 C++ 的 `FMath` 保持一致
- 这样更易于经验丰富的程序员使用，也便于代码在脚本和 C++ 之间移植

## 参考来源
[function-libraries.md](../../raw/function-libraries.md)
