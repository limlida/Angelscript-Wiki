---
title: "FName"
category: entities
date: 2026-05-09
tags:
  - Struct
  - 基础类型
---

## 概述

FName 是 Unreal Engine 中的轻量级字符串标识符。与 FString 不同，FName 在内部使用索引表存储，比较操作非常快（仅比较索引），但不可修改内容。

**Angelscript 特殊语法**：使用 `n"NameString"` 字面量创建 FName，详见 [[FName字面量]]。

## 主要方法

### 比较

- `bool opEquals(FName Other) const` - 相等比较
- `bool opEquals(FString Other) const` - 与 FString 比较
- `int Compare(FName Other) const` - 比较两个 FName
- `bool IsEqual(FName Other, bool bIgnoreCase = true, bool bCompareNumber = true) const` - 可配置的比较

### 查询

- `bool IsNone() const` - 是否为空名称（None）
- `int GetNumber() const` - 获取编号部分
- `FString GetPlainNameString() const` - 获取不带编号的名称字符串
- `uint GetHash() const` - 获取哈希值

### 修改

- `SetNumber(int NewNumber)` - 设置编号部分

### 转换

- `FString ToString() const` - 转换为字符串
- `FKey opImplConv() const` - 隐式转换为 FKey

## 示例

```angelscript
// 使用 FName 字面量
FName TagName = n"Enemy";
FName SocketName = n"WeaponSocket";

// 比较
if (TagName == n"Enemy")
{
    Print("这是敌人标签");
}

// 检查是否为空
if (!TagName.IsNone())
{
    Print("标签名: " + TagName.ToString());
}

// 获取哈希值
uint Hash = TagName.GetHash();
```

## 相关页面

- [[FName字面量]] - `n""` 字面量语法
- [[FGameplayTag]] - GameplayTag 使用 FName

## 来源

- [FName.md](../../raw/API/Structs/FName.md)
