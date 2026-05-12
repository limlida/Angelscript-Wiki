---
title: "FTimerHandle"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 定时器

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FTimerHandle.md
verified_by: agent
unverified_items:
  - IsValidInvalidate
---

## 概述

FTimerHandle 是定时器的唯一句柄，用于区分具有相同委托的定时器。通过 [[System]] 函数库的定时器方法获取。

## 主要方法

- `Invalidate()` - 使句柄失效
- `bool IsValid() const` - 句柄是否有效

## 示例

```angelscript
// 设置定时器
FTimerHandle TimerHandle;
System.SetTimer(TimerHandle, 2.0f, false, n"OnTimerElapsed");

void OnTimerElapsed()
{
    Print("定时器触发！");
}

// 检查定时器是否有效
if (TimerHandle.IsValid())
{
    Print("定时器仍在运行");
}

// 清除定时器
System.ClearTimer(TimerHandle);

// 使句柄失效
TimerHandle.Invalidate();
```

## 相关页面

- [[System]] - 系统函数库（包含定时器方法）

## 来源

- [FTimerHandle.md](../../raw/API/Structs/FTimerHandle.md)
