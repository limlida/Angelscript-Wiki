---
title: "开发状态摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 开发状态
  - 平台支持
  - 已知限制

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/development-status.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了 UnrealEngine-Angelscript 项目的开发状态、平台支持和已知限制。

## 核心要点

### 生产使用
- Hazelight 自 2018 年起在生产环境使用
- 30+ 开发者日常使用
- 《Split Fiction》包含 1,700,000+ 行 Angelscript 代码，16,000+ 脚本文件
- 《It Takes Two》同样大量使用

### 平台支持
- **正式支持**：Windows、PS5、Xbox Series X|S
- **社区验证**：其他平台已有工作室成功构建

### 已知限制
1. **Super 调用限制**：`Super::Function()` 仅对 Angelscript 中的父函数有效，无法调用 C++ 的 super 函数（重写 BlueprintNativeEvent 时）
2. **接口不支持**：Unreal 接口（IInterface/UInterface）不支持在 Angelscript 中使用

### 维护声明
- Hazelight 不保证超出网站已有内容的维护和支持
- 商业项目建议有引擎程序员处理可能的问题

## 来源
[development-status.md](../../raw/development-status.md)
