---
title: "编辑器脚本摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 编辑器
  - 预处理器
  - 打包
---

## 概述
本文档介绍了如何在 Angelscript 中使用编辑器专用代码，包括预处理器条件和编辑器专用目录。

## 核心要点

### 编辑器专用代码
- 某些 C++ 属性、函数或类仅在编辑器中可用
- 在打包版本中使用会导致编译失败

### `#if EDITOR` 预处理器
- 包裹编辑器专用代码，在非编辑器构建中不编译
```angelscript
#if EDITOR
default PivotOffset = FVector(0, 0, 10);
#endif
```

### 其他预处理器宏
- **`EDITORONLY_DATA`**：编辑器专用属性是否可读
- **`RELEASE`**：是否为 Shipping 或 Test 构建配置
- **`TEST`**：是否为 Debug、Development 或 Test 构建配置

### 编辑器专用目录
- 名为 `Editor`、`Examples`、`Dev` 的文件夹在打包构建中被完全忽略

### 模拟打包模式
- 命令行参数：`-as-simulate-cooked`
- 用于检测编辑器专用代码在打包后是否会编译失败
- 可与 `AngelscriptTest` commandlet 组合使用

## 相关概念
- [[编辑器脚本]]
- [[热重载]]

## 来源
[editor-script.md](../../raw/editor-script.md)
