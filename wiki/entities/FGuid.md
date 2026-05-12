---
title: "FGuid"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 基础类型

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FGuid.md
verified_by: agent
unverified_items: []
---

## 概述

FGuid 是全局唯一标识符（GUID），由四个 32 位整数组成。用于在系统中唯一标识对象，如 Actor 的 GUID、资产标识等。

## 主要属性

- `int A` - GUID 的第一个分量
- `int B` - GUID 的第二个分量
- `int C` - GUID 的第三个分量
- `int D` - GUID 的第四个分量

## 主要方法

### 比较

- `bool opEquals(FGuid Other) const` - 相等比较
- `int opCmp(FGuid Other) const` - 排序比较

### 查询

- `bool IsValid() const` - GUID 是否有效（非全零）
- `uint GetTypeHash() const` - 获取类型哈希

### 操作

- `Invalidate()` - 使 GUID 失效（设为全零）
- `uint& opIndex(int Index)` - 按索引访问分量

### 转换

- `FString ToString() const` - 转换为 'A-B-C-D' 格式的字符串
- `FString ToString(EGuidFormats Format) const` - 按指定格式转换为字符串

## 示例

```angelscript
// 检查 GUID 有效性
FGuid Id = Actor.ActorGuid;
if (Id.IsValid())
{
    Print("Actor GUID: " + Id.ToString());
}

// 比较两个 GUID
FGuid IdA = ActorA.ActorGuid;
FGuid IdB = ActorB.ActorGuid;
if (IdA == IdB)
{
    Print("两个 Actor 的 GUID 相同");
}

// 使 GUID 失效
Id.Invalidate();
```

## 来源

- [FGuid.md](../../raw/API/Structs/FGuid.md)
