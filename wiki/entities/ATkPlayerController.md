---
title: "ATkPlayerController"
category: entities
date: 2026-05-09
tags:
  - Actor
  - 游戏特定
  - PlayerController

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/ATkPlayerController.md
verified_by: agent
unverified_items: []
---

## 概述

ATkPlayerController 是项目自定义的玩家控制器，继承自 APlayerController。它负责输入配置绑定和输入后处理。

## 主要方法

### 输入配置

- `BindInputConfig(const UTkInputConfig InputConfig)` - 绑定输入配置，将 [[UTkInputConfig]] 中定义的输入动作与能力系统关联

### 输入处理

- `SetupInputComponent()` - 初始化输入组件
- `PostProcessInput(float DeltaTime, bool bGamePaused)` - 输入后处理

## 示例

```angelscript
// 绑定输入配置
ATkPlayerController TkPC = Cast<ATkPlayerController>(GetController());
if (TkPC != nullptr)
{
    UTkInputConfig Config = Cast<UTkInputConfig>(InputConfigAsset);
    TkPC.BindInputConfig(Config);
}
```

## 相关页面

- [[UTkInputConfig]] - 输入配置
- [[AController]] - 控制器基类

## 来源

- [ATkPlayerController.md](../../raw/API/Global/ATkPlayerController.md)
