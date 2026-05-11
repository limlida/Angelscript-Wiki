---
title: "UFUNCTION 宏"
category: entities
date: 2026-05-08
tags:
  - 函数
  - Blueprint
  - 宏
---

## 定义
`UFUNCTION()` 是 Angelscript 中用于标记函数的宏，使函数可被 Blueprint 访问和重写。

## 常用参数

### 可访问性标记
- **默认（无需显式声明）**：`BlueprintCallable` - 可从 Blueprint 调用
- `BlueprintHidden`：对 Blueprint 隐藏

### 蓝图事件
- `BlueprintOverride`：重写父类定义的 Blueprint 事件
- `BlueprintEvent`：定义可由子类 Blueprint 重写的事件

### 网络相关
- `Server`：服务器 RPC
- `Client`：客户端 RPC
- `NetMulticast`：多播 RPC
- `BlueprintAuthorityOnly`：仅在服务器执行
- `Unreliable`：不可靠 RPC（默认是可靠的）

## 示例

### 简单 Blueprint 可调用函数
```angelscript
UFUNCTION()
void SayHello()
{
    [[Print]]("Hello!");
}
```

### 重写 Blueprint 事件
```angelscript
UFUNCTION(BlueprintOverride)
void BeginPlay()
{
    Super::BeginPlay();
    [[Print]]("Actor Spawned!");
}
```

### 定义 Blueprint 可重写事件
```angelscript
UFUNCTION(BlueprintEvent)
void OnCustomEvent()
{
    // 默认实现（可为空）
}
```

### RPC 函数
```angelscript
UFUNCTION(Server, Reliable)
void ServerDoSomething()
{
    // 在服务器执行
}
```

## 注意事项
- 与 C++ 不同，不需要区分 `BlueprintImplementableEvent` 和 `BlueprintNativeEvent`
- 所有脚本函数都是虚函数，可被子类重写
- 重写 C++ 的 `BlueprintNativeEvent` 时，无法调用 C++ 的 Super 实现

## 来源
[[Source_FunctionsAndEvents]]
