---
title: "脚本入门介绍摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - 入门
  - 教程
---

## 概述
本文档提供了创建第一个 Angelscript 演员（Actor）并与 Blueprint 交互的完整教程。

## 核心要点

### 开始项目
- 启动自定义引擎并打开项目
- 自动创建 `Script/` 文件夹
- 使用 "Open Angelscript workspace" 工具菜单快捷方式

### 创建演员类
```angelscript
class AIntroductionActor : AActor
{
}
```

### 为 Actor 添加功能
- 使用 `UPROPERTY()` 暴露属性到编辑器
- 使用 `BlueprintOverride` 重写事件（如 `BeginPlay`、`Tick`）
- 使用 `Print()` 输出调试信息

### 组件和默认值
- 使用 `DefaultComponent` 标记默认组件
- 使用 `default` 语句设置组件默认值
- 例如：
```angelscript
UPROPERTY(DefaultComponent, RootComponent)
USceneComponent SceneRoot;

default SceneRoot.RelativeLocation = FVector(0, 0, 100);
```

### Blueprint 交互
- 使用 `BlueprintEvent` 标记可被 Blueprint 重写的函数
- 调用 `Super::Function()` 调用父类实现

## 参考来源
[scripting-introduction.md](../../raw/scripting-introduction.md)
