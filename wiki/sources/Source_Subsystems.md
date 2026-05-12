---
title: "子系统摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 子系统
  - 单例
  - USubsystem

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/subsystems.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了如何在 Angelscript 中使用和创建 Unreal 子系统（Subsystem）。

## 核心要点

### 使用子系统
- 通过 `USubsystemClass::Get()` 获取子系统实例
```angelscript
auto LevelEditorSubsystem = ULevelEditorSubsystem::Get();
LevelEditorSubsystem.NewLevel("/Game/NewLevel");
```
- **注意**：许多子系统是编辑器子系统，不能在打包游戏中使用

### 创建脚本子系统
- 继承以下基类：
  - `UScriptWorldSubsystem` - 世界子系统
  - `UScriptGameInstanceSubsystem` - 游戏实例子系统
  - `UScriptLocalPlayerSubsystem` - 本地玩家子系统
  - `UScriptEditorSubsystem` - 编辑器子系统
  - `UScriptEngineSubsystem` - 引擎子系统

### 可重写函数
- `Initialize()` - 子系统初始化
- `Tick(float DeltaTime)` - 每帧更新
- `UFUNCTION()` 声明的函数可在 Blueprint 中访问

### 本地玩家子系统
- 获取时需传入 `ULocalPlayer` 或 `APlayerController`
```angelscript
auto MySubsystem = UMyPlayerSubsystem::Get(RelevantPlayer);
```

## 相关概念
- [[子系统]]

## 来源
[subsystems.md](../../raw/subsystems.md)
