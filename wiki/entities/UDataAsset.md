---
title: "UDataAsset"
category: entities
date: 2026-05-09
tags:
  - DataAsset
  - 数据驱动

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UDataAsset.md
verified_by: agent
unverified_items: []
---

## 概述

UDataAsset 是简单的数据资产基类，用于存储与特定系统相关的数据。可以在内容浏览器中使用任何继承自 UDataAsset 的原生类创建资产。如果需要数据继承或复杂层次结构，应创建 Data Only Blueprint Class。

**核心用途**：将游戏配置数据从代码中分离，以资产形式存储和编辑。

## 常见子类

- [[UTkAbilitySet]] - 项目自定义能力集
- [[UTkInputConfig]] - 项目自定义输入配置

## 示例

```angelscript
// 创建和使用自定义 DataAsset
UDataAsset MyData = Cast<UDataAsset>(DataAssetAsset);
if (MyData != nullptr)
{
    Print("数据资产: " + MyData.GetName());
}
```

## 相关页面

- [[UDataTable]] - 数据表（结构化表格数据）
- [[UTkAbilitySet]] - 能力集
- [[UTkInputConfig]] - 输入配置

## 来源

- [UDataAsset.md](../../raw/API/Global/UDataAsset.md)
