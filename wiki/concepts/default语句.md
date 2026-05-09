---
title: "default 语句"
category: concepts
date: 2026-05-08
tags:
  - 构造
  - 初始化
  - 默认值
  - 组件
---

## 概述
在 Angelscript 中，不使用 C++ 风格的构造函数。相反，使用 `default` 语句设置子对象的默认值。

## 基本用法

### 设置组件属性的默认值
```angelscript
class AExampleActor : AActor
{
    UPROPERTY(DefaultComponent)
    UStaticMeshComponent Mesh;

    // 使用 default 语句设置子对象默认值
    default Mesh.RelativeLocation = FVector(0, 0, 100);
    default Mesh.SetCollisionEnabled(ECollisionEnabled::NoCollision);
}
```

### 设置 Actor 本身的属性
```angelscript
class AReplicatedActor : AActor
{
    default bReplicates = true;
}
```

## 为什么不使用构造函数
- 构造函数在热重载期间可能会有不确定的行为
- 使用 `default` 语句可以更清晰地表达这是类默认值
- 避免了 C++ 构造函数的复杂性（如成员初始化列表等）

## 注意事项
- 普通类属性的默认值直接在类体中声明
- `default` 语句主要用于子对象（组件等）和调用设置默认值的函数

## 来源
[[演员和组件摘要]]
[[与 C++ 差异摘要]]

## 相关概念
- [[热重载]] - default 语句比构造函数更适合热重载
- [[自动绑定]] - EditAnywhere 属性仅在 default 语句中可访问
