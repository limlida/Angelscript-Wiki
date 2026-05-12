---
title: "格式化字符串摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 格式化字符串
  - f-string
  - 调试

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/format-strings.md
verified_by: agent
unverified_items: []
---

## 概述
本文档介绍了 Angelscript 的格式化字符串（f-strings）功能，灵感来自 Python 的 f-string。

## 核心要点

### 基本语法
- **前缀**：`f""`
- **插值**：`{表达式}` 内放置要替换的变量或表达式
- **转义花括号**：`f"{{"` 等同于 `"{"`

### 功能特性

#### 表达式插值
```angelscript
Print(f"Called from actor {GetName()} at location {ActorLocation}");
```

#### 调试表达式（= 后缀）
```angelscript
Print(f"{DeltaSeconds =}");
// 输出: DeltaSeconds = 0.01
```

#### 格式说明符
- 小数精度：`{Value :.3}`
- 前导零填充：`{400 :010d}`
- 十六进制：`{20 :#x}`
- 二进制：`{1574 :b}` / `{1574 :#032b}`
- 对齐：`{GetName() :>40}` / `{GetName() :_<40}`

#### 枚举格式
- 默认输出完整调试字符串：`ESlateVisibility::Collapsed (1)`
- `:n` 仅输出值名：`Collapsed`

## 相关概念
- [[格式化字符串]]

## 来源
[format-strings.md](../../raw/format-strings.md)
