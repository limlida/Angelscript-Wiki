---
title: "Niagara"
category: entities
date: 2026-05-09
tags:
  - 函数库
  - 特效
  - 命名空间

trust: unverified
verified_at: 2026-05-11
verified_against: []
verified_by: agent
unverified_items: []
---

## 定义
`Niagara::` 是粒子系统函数库命名空间，来源于 C++ 的 `UNiagaraFunctionLibrary`。

## 常用函数

### 生成粒子
```angelscript
// 在指定位置生成 Niagara 系统
UNiagaraComponent Comp = Niagara::SpawnSystemAtLocation(SystemAsset, Location);
```

## 来源
[[Source_FunctionLibraries]]
