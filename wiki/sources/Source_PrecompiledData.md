---
title: "预编译脚本摘要"
category: sources
date: 2026-05-09
source_count: 1
tags:
  - 预编译
  - 性能优化
  - JIT
---

## 概述
本文档介绍了预编译脚本功能，用于加速打包版本的启动时间和运行时性能。

## 核心要点

### 功能
1. **预编译缓存**：跳过脚本加载、解析和编译，直接加载字节码
2. **C++ 转译**：生成等效 C++ 代码，利用 JIT 编译实现接近原生性能

### 生成预编译数据
1. 打包游戏
2. 运行 `ProjectName.exe -as-generate-precompiled-data`
3. 生成 `ProjectName/Script/PrecompiledScript.Cache`

### C++ 转译代码
- 生成 `AS_JITTED_CODE/` 文件夹
- 复制到项目源码目录，重新编译游戏
- 需要在 Build.cs 中添加 `AngelscriptCode` 依赖
- 结合预编译缓存使用，自动运行优化的 C++ 代码

### 兼容性注意事项
- **必须使用相同的二进制文件**生成和加载预编译缓存
- 重新构建游戏后必须重新生成缓存
- 修改 `.as` 脚本后可只重新生成缓存，无需重新编译 C++
- 使用预编译缓存时，热重载被禁用

### 开发模式
- 命令行参数 `-as-development-mode` 可绕过预编译缓存加载

## 相关概念
- [[预编译脚本]]
- [[热重载]]

## 来源
[precompiled-data.md](../../raw/precompiled-data.md)
