---
title: "属性和访问器摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - 属性
  - UPROPERTY
---

## 概述
本文档介绍了 Angelscript 中属性的定义、编辑器暴露、Blueprint 访问权限、以及属性访问器函数的使用。

## 核心要点

### 属性定义
- 普通属性只能在脚本中使用
- 添加 `UPROPERTY()` 使属性暴露给编辑器和 Blueprint

### UPROPERTY 修饰符
- **默认**：`EditAnywhere` 和 `BlueprintReadWrite`（无需显式声明）
- `EditDefaultsOnly`：只能在 Blueprint 编辑，实例中不可改
- `EditInstanceOnly`：只能在场景实例中编辑，Blueprint 默认值不可改
- `VisibleAnywhere`：可查看但不可编辑
- `NotEditable`：完全不可编辑
- `BlueprintReadOnly`：Blueprint 只能读不能写
- `BlueprintHidden`：Blueprint 完全无法访问

### 分类
使用 `Category` 组织属性，例如：
```angelscript
UPROPERTY(Category = "Movement Settings")
float MoveSpeed = 100.0;
```

### 属性访问器
- 使用 `property` 关键字将 Get/Set 函数转换为属性访问
- 例如：`FVector GetRotatedOffset() const property`
- 所有绑定的 C++ 函数都可作为属性访问（例如 `ActorLocation` 和 `GetActorLocation()` 等效）

### 访问修饰符
- `private`：仅类内访问
- `protected`：类内和子类访问
- 同时适用于属性和函数

## 参考来源
[properties-and-accessors.md](../../raw/properties-and-accessors.md)
