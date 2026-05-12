---
title: "FLatentActionInfo"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 异步
  - 延迟动作

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FLatentActionInfo.md
verified_by: agent
unverified_items: []
---

## 概述

FLatentActionInfo 是延迟动作信息结构体，用于指定异步操作完成后的回调。在 Angelscript 中，许多需要等待的操作使用此结构体来指定回调函数。

## 主要属性

- `UObject CallbackTarget` - 回调目标对象
- `FName ExecutionFunction` - 回调函数名称
- `int Linkage` - 链接ID
- `int UUID` - 唯一标识符

## 示例

```angelscript
// 创建延迟动作信息
FLatentActionInfo LatentInfo;
LatentInfo.CallbackTarget = this;
LatentInfo.ExecutionFunction = n"OnDelayComplete";
LatentInfo.Linkage = 0;
LatentInfo.UUID = 0;

// 用于延迟操作
System.Delay(2.0f, LatentInfo);

void OnDelayComplete()
{
    Print("延迟完成！");
}
```

## 相关页面

- [[System]] - 系统函数库

## 来源

- [FLatentActionInfo.md](../../raw/API/Structs/FLatentActionInfo.md)
