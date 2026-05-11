---
title: "Math"
category: entities
date: 2026-05-09
tags:
  - 函数库
  - 数学
  - 命名空间
---

## 定义
`Math::` 是 Angelscript 中的数学函数库命名空间，对应 C++ 中的 `FMath::`。

## 说明
- 脚本中的 `Math::` 命名空间更接近 C++ 的 `FMath::`，而非 Blueprint 的 `UKismetMathLibrary`
- 这样做是为了方便 C++ 程序员过渡，以及代码在两种语言间移植
- `UKismetMathLibrary` 在自动绑定时被忽略

## 常用函数
```angelscript
// 随机数
float RandVal = Math::RandRange(0.0, 1.0);
int RandInt = Math::RandRange(1, 100);

// 插值
float Lerped = Math::Lerp(StartValue, EndValue, Alpha);
FVector LerpedVec = Math::Lerp(StartVec, EndVec, Alpha);

// 近似比较
bool IsClose = Math::IsNearlyEqual(ValueA, ValueB);
bool IsZero = Math::IsNearlyZero(Value);

// 钳制
float Clamped = Math::Clamp(Value, MinValue, MaxValue);

// 三角函数
float SinVal = Math::Sin(Angle);
float CosVal = Math::Cos(Angle);
```

## 来源
[[Source_FunctionLibraries]]
