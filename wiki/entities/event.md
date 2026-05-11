---
title: "event"
category: entities
date: 2026-05-09
tags:
  - 事件
  - 多播
  - 委托
---

## 定义
`event` 关键字用于声明多播委托类型，等价于 C++ 的 `DECLARE_DYNAMIC_MULTICAST_DELEGATE()`。与 `delegate` 不同，event 可以绑定多个函数。

## 声明
```angelscript
event void FExampleEvent(int Counter);
```

## 使用
```angelscript
class AEventExample : AActor
{
    UPROPERTY()
    FExampleEvent OnExampleEvent;

    UFUNCTION(BlueprintOverride)
    void BeginPlay()
    {
        OnExampleEvent.AddUFunction(this, n"FirstHandler");
        OnExampleEvent.AddUFunction(this, n"SecondHandler");
    }

    UFUNCTION()
    private void FirstHandler(int Counter)
    {
        Print("Called first handler");
    }

    UFUNCTION()
    private void SecondHandler(int Counter)
    {
        Print("Called second handler");
    }

    UFUNCTION(BlueprintOverride)
    void Tick(float DeltaSeconds)
    {
        OnExampleEvent.Broadcast(CallCounter);
    }
}
```

## 关键方法
- `AddUFunction(Object, n"FunctionName")` - 添加绑定
- `Broadcast(Args...)` - 广播给所有绑定函数
- `Unbind(Object, n"FunctionName")` - 解绑指定函数
- `UnbindObject(Object)` - 解绑指定对象的所有函数
- `Clear()` - 清除所有绑定
- `IsBound()` - 是否有任何绑定

## Blueprint 集成
- 声明为 `UPROPERTY()` 的事件会出现在 Blueprint 的 Event Dispatchers 列表中
- 可从 Level Blueprint 绑定

## 注意
- 添加的函数必须声明为 `UFUNCTION()`

## 相关概念
- [[Source_Delegates]]

## 来源
[[Source_Delegates]]
