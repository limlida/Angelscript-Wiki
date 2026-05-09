---
title: "演员和组件摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - Actor
  - Component
  - 演员
  - 组件
---

## 概述
本文档详细介绍了 Angelscript 中如何定义演员（Actor）、组件（Component），以及如何设置默认组件、附加关系、生成演员等核心功能。

## 核心要点

### 创建 Actor
- 继承自 `AActor` 或其他 Actor 子类
- **注意**：无需显式声明 `UCLASS()`，插件自动处理

### 默认组件
- 使用 `DefaultComponent` 标记默认组件
- 使用 `RootComponent` 标记根组件
- 例如：
```angelscript
UPROPERTY(DefaultComponent, RootComponent)
USceneComponent SceneRoot;
```

### 组件附加
- 使用 `Attach = ComponentName` 标记附加关系
- 使用 `AttachSocket = SocketName` 指定附加插槽
- 未显式指定时，组件自动附加到根

### default 语句
- 使用 `default` 语句设置组件默认值
- 可调用函数设置默认值（如 `SetCollisionEnabled()`）

### 组件操作
- `UComponentClass::Get(Actor)`：获取组件，返回 null 如不存在
- `UComponentClass::GetOrCreate(Actor)`：获取或创建组件
- `UComponentClass::Create(Actor, Name)`：创建新组件

### 生成 Actor
- 使用全局 `SpawnActor()` 函数
- 可生成脚本类或 Blueprint 类
- Blueprint 类需通过 `TSubclassOf<>` 属性引用

### 构造脚本
- 重写 `ConstructionScript()` 事件
- 可在构造脚本中创建和配置组件

### 获取所有组件/演员
- `Actor.GetComponentsByClass(Array)`：获取指定类型的所有组件
- `GetAllActorsOfClass(Array)`：获取场景中指定类型的所有演员

### 覆盖组件
- 使用 `OverrideComponent = ParentComponentName` 覆盖父类的默认组件
- 类似于 C++ 中的 `SetDefaultSubobjectClass()`

## 参考来源
[actors-components.md](../../raw/actors-components.md)
