---
title: "FMontageWaitSimpleDelegate"
category: entities
date: 2026-05-09
source_count: 1
tags:
  - GAS
  - Montage
  - 委托

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Structs/FMontageWaitSimpleDelegate.md
verified_by: agent
unverified_items:
  - IsBoundAddUFunction Unbind UnbindObject Clear Broadcast
---

## 概述

`FMontageWaitSimpleDelegate` 是 [[UAbilityTask_PlayMontageAndWait]] 使用的无参数多播委托类型。它用于通知蒙太奇播放的各种状态变化（完成、混出、中断、取消等）。

**与 FOnMontageEndedMCDelegate 的区别**：
- `FMontageWaitSimpleDelegate` 是**无参数**回调，仅通知"事件发生了"
- [[FOnMontageEndedMCDelegate]] 传递 `(UAnimMontage, bool bInterrupted)` 参数，提供更多上下文

## 方法

- `AddUFunction(const UObject Object, FName FunctionName)` - 绑定监听函数
- `Unbind(UObject Object, FName FunctionName)` - 解绑指定对象的指定函数
- `UnbindObject(UObject Object)` - 解绑指定对象的所有函数
- `Clear()` - 清除所有绑定
- `bool IsBound() const` - 是否有任何绑定
- `Broadcast() const` - 广播事件（无参数）

## 回调签名

```angelscript
// 无参数回调
void OnMontageCompleted()
{
    EndAbility();
}
```

## 使用场景

主要作为 `UAbilityTask_PlayMontageAndWait` 的委托属性类型：

```angelscript
// Task.OnCompleted 类型即 FMontageWaitSimpleDelegate
MontageTask.OnCompleted.AddUFunction(this, n"OnMontageCompleted");
MontageTask.OnBlendOut.AddUFunction(this, n"OnMontageBlendOut");
MontageTask.OnInterrupted.AddUFunction(this, n"OnMontageInterrupted");
MontageTask.OnCancelled.AddUFunction(this, n"OnMontageCancelled");
```

## 相关页面

- [[UAbilityTask_PlayMontageAndWait]] - 使用此委托的能力任务
- [[FOnMontageEndedMCDelegate]] - 有参数的蒙太奇结束委托（手动方式）
- [[UGameplayAbility]] - 能力基类

## 来源

- [FMontageWaitSimpleDelegate.md](../../raw/API/Structs/FMontageWaitSimpleDelegate.md)
