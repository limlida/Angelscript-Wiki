---
title: "Print 函数"
category: entities
date: 2026-05-08
tags:
  - 调试
  - 日志
  - 输出
---

## 定义
`Print()` 是 Angelscript 中的内置函数，用于输出调试信息到屏幕和日志。

## 基本用法
```angelscript
Print("Hello World!");
Print(SomeStringVariable);
```

## 与格式化字符串配合
配合格式化字符串（f-strings）使用更强大：
```angelscript
int Health = 100;
float Time = 5.5;
Print(f"Health: {Health}, Time: {Time}");

// 使用 = 同时显示表达式和值
Print(f"{DeltaSeconds = :.2f}"); // 输出: "DeltaSeconds = 0.02"
```

## 注意事项
- 只用于调试，发布版本应考虑禁用或使用其他日志系统
- 消息同时显示在屏幕和日志文件中

## 来源
[[Source_ScriptingIntroduction]]
[[Source_FormatStrings]]
