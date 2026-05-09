---
title: "GetAllActorsOfClass"
category: entities
date: 2026-05-09
tags:
  - 全局函数
  - Actor
  - 查询
---

## 定义
`GetAllActorsOfClass` 是全局函数，用于获取世界中指定类型的所有 Actor。

## 用法
传入目标类型的数组，函数自动根据数组类型确定查找的类：
```angelscript
TArray<ANiagaraActor> NiagaraActors;
GetAllActorsOfClass(NiagaraActors);
```

## 注意事项
- **性能警告**：此函数需要遍历关卡中所有 Actor，不应在性能敏感的上下文（如 Tick）中使用
- **推荐做法**：运行一次并存储结果，而非每帧调用

## 来源
[[演员和组件摘要]]
