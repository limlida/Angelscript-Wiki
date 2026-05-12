---
title: "UTkInputContextSubsystem"
category: entities
date: 2026-05-09
tags:
  - 子系统
  - 游戏特定
  - 输入

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UTkInputContextSubsystem.md
verified_by: agent
unverified_items: []
---

## 概述

UTkInputContextSubsystem 是项目自定义的输入上下文子系统，管理输入映射上下文的切换和输入配置的查询。它继承自 [[UGameInstanceSubsystem]]，跨关卡持久化。

**核心用途**：
- 管理输入上下文的推入和弹出（如从步行切换到骑乘输入方案）
- 提供运行时输入配置查询

## 主要方法

- `const UTkInputConfig GetInputConfig() const` - 获取当前输入配置（由 GameData 加载）
- `bool PushInputContext(EInputContext InputContext)` - 推入输入上下文（如切换到骑乘模式输入）
- `PopInputContext()` - 弹出当前输入上下文（恢复上一级输入方案）

## 示例

```angelscript
// 获取输入上下文子系统
UTkInputContextSubsystem InputSub = GetGameInstance().GetSubsystem<UTkInputContextSubsystem>();

// 切换到骑乘输入上下文
InputSub.PushInputContext(EInputContext::Riding);

// 退出骑乘，恢复步行输入
InputSub.PopInputContext();

// 获取输入配置
const UTkInputConfig Config = InputSub.GetInputConfig();
if (Config != nullptr)
{
    UInputAction JumpAction = Config.FindNativeInputActionForTag(n"Input.Jump");
}
```

## 相关页面

- [[UTkInputConfig]] - 输入配置
- [[UGameInstanceSubsystem]] - GameInstance 子系统基类

## 来源

- [UTkInputContextSubsystem.md](../../raw/API/Global/UTkInputContextSubsystem.md)
