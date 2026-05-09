---
title: "网络功能摘要"
category: sources
date: 2026-05-08
source_count: 1
tags:
  - 网络
  - 复制
  - RPC
  - Networking
---

## 概述
本文档介绍了 Angelscript 对 Unreal 网络功能的支持，包括 RPC 函数、复制属性等核心网络编程概念。

## 核心要点

### RPC 函数
- 使用与 C++ 类似的标记：`NetMulticast`、`Client`、`Server`
- 添加 `BlueprintAuthorityOnly` 只在服务器执行
- **默认**：所有脚本 RPC 都是可靠的
- 使用 `Unreliable` 标记可创建不可靠 RPC

### 复制属性
- 使用 `Replicated` 标记属性
- 可选 `ReplicationCondition` 指定复制条件
- 可用条件与 `ELifetimeCondition` 枚举对应：
  - `OwnerOnly`：仅复制给拥有者
  - `SkipOwner`：不复制给拥有者
  - `InitialOnly`：仅初始复制
  - 等等...

### RepNotify
- 使用 `ReplicatedUsing = FunctionName` 指定通知函数
- 该函数必须是 `UFUNCTION()`

### Actor/Component 必须复制
- Actor 或 Component 的 `bReplicates` 必须为 true
- 可通过 `default` 语句设置：`default bReplicates = true;`

## 参考来源
[networking-features.md](../../raw/networking-features.md)
