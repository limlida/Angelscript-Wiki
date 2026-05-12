---
title: "FName 字面量语法糖"
category: concepts
date: 2026-05-08
tags:
  - FName
  - 字符串
  - 性能

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/fname-literals.md
verified_by: agent
unverified_items: []
---

## 概述
FName 字面量是 Angelscript 中的重要性能优化特性，让 FName 创建更简洁高效。

## 语法对比

### 传统方式（C++ 风格）
```angelscript
FName MyName = FName("MyString");  // 运行时哈希计算
```

### Angelscript 语法糖
```angelscript
FName MyName = n"MyString";  // 编译时处理
```

## 实际示例

### 基础使用
```angelscript
// 直接创建 FName
FName EventId = n"Combat.Attack.Begin";
FName SocketName = n"WeaponSocket";

// 在函数调用中使用
Events.RegisterListener(n"MyEvent", this, n"OnEvent");
```

### 在 Delegate/Event 绑定中
```angelscript
class AMyActor : AActor
{
    FMyDelegate MyDelegate;
    
    UFUNCTION()
    void BindEvents()
    {
        // 使用 n"" 绑定函数名
        MyDelegate.BindUFunction(this, n"OnDelegateExecuted");
    }
    
    UFUNCTION()
    void OnDelegateExecuted()
    {
        Print("Delegate executed!");
    }
}
```

## 优势

### 1. 性能优化
- **编译时哈希**：哈希值在编译时计算
- **零运行时开销**：无需在游戏运行时计算哈希
- **更好的性能**：相比 `FName("...")` 更快

### 2. 类型安全
- 编译器验证语法
- 早期发现拼写错误

### 3. 代码简洁
- 更短的写法
- 更易读的代码

## 注意事项
- `n""` 中的字符串应为有效的 FName 格式
- 避免使用特殊字符（取决于项目设置）
- 建议使用 PascalCase 或 Snake_Case 格式

## 来源
[[Source_FNameLiterals]]、[[Source_SyntaxSugar]]

## 相关概念
- [[Mixin模式]] - Mixin 方法中常用 `n""` 绑定函数名
- [[类型系统与引用]] - FName 是值类型结构体
