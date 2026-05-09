---
title: "System"
category: entities
date: 2026-05-09
tags:
  - 函数库
  - 系统
  - 命名空间
---

## 定义
`System::` 是系统级函数库命名空间，来源于 C++ 的 `UKismetSystemLibrary`。

## 常用函数

### 定时器
```angelscript
// 2秒后执行 this.OnTimerExecuted()
System::SetTimer(this, n"OnTimerExecuted", 2.0, bLooping = false);
```

### 射线检测
```angelscript
FHitResult HitResult;
bool bHit = System::LineTraceSingle(StartLocation, EndLocation, TraceChannel, bTraceComplex, HitResult);
```

### 调试绘制
```angelscript
System::DrawDebugLine(StartLocation, EndLocation, FLinearColor::Red, 5.0f);
System::DrawDebugSphere(Location, Radius, 12, FLinearColor::Green);
```

## 来源
[[函数库摘要]]
