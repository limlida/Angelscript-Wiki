---
title: "delegate"
category: entities
date: 2026-05-09
tags:
  - 委托
  - 单播
  - 事件
---

## 定义
`delegate` 关键字用于声明单播委托类型，等价于 C++ 的 `DECLARE_DYNAMIC_DELEGATE()`。

## 声明
```angelscript
delegate void FExampleDelegate(UObject Object, float Value);
```

## 使用
```angelscript
class ADelegateExample : AActor
{
    FExampleDelegate StoredDelegate;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        StoredDelegate.BindUFunction(this, n"OnDelegateExecuted");
    }

    UFUNCTION()
    private void OnDelegateExecuted(UObject Object, float Value)
    {
        Print(f"Delegate executed with value {Value}");
    }

    UFUNCTION(BlueprintOverride)
    void Tick(float DeltaSeconds)
    {
        StoredDelegate.ExecuteIfBound(this, DeltaSeconds);
    }
}
```

## 关键方法
- `BindUFunction(Object, n"FunctionName")` - 绑定到 UFUNCTION
- `ExecuteIfBound(Args...)` - 如果已绑定则执行
- `IsBound()` - 检查是否已绑定

## 注意
- 绑定的函数必须声明为 `UFUNCTION()`
- 也可通过构造函数语法创建：`FExampleDelegate(this, n"FuncName")`

## 相关概念
- [[委托和事件摘要]]

## 来源
[[委托和事件摘要]]
