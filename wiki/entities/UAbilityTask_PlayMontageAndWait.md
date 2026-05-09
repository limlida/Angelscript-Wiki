---
title: "UAbilityTask_PlayMontageAndWait"
category: entities
date: 2026-05-09
source_count: 1
tags:
  - GAS
  - Montage
  - AbilityTask
---

## 概述

`UAbilityTask_PlayMontageAndWait` 是 GAS 中专门为 Gameplay Ability 设计的能力任务，用于播放蒙太奇动画并等待其完成。它通过委托提供完成、混出、中断和取消等回调。

**核心优势**：
- 自动与能力生命周期绑定
- 能力结束时自动停止蒙太奇（可配置）
- 提供细粒度的状态回调

## 委托属性

所有委托类型均为 [[FMontageWaitSimpleDelegate]]（无参数回调）。

| 委托 | 触发时机 |
|------|---------|
| `OnCompleted` | 蒙太奇完全播放完成 |
| `OnBlendOut` | 蒙太奇开始混出 |
| `OnBlendedIn` | 蒙太奇混入完成 |
| `OnInterrupted` | 蒙太奇被其他蒙太奇中断 |
| `OnCancelled` | 能力被取消导致蒙太奇停止 |

## 创建方式

[TODO: verify] 在 C++ 中通过 `CreatePlayMontageAndWaitProxy(...)` 静态工厂方法创建，但 **Angelscript raw API 中未暴露此工厂方法**。`UAbilityTask` 基类的 API 也为空（无 `ReadyForActivation` 等方法）。

在 Angelscript 中使用此任务的可行性需要在实际项目中验证。如果不可用，推荐使用手动方式：通过 [[UAnimInstance]] 的 `Montage_Play()` + [[FOnMontageEndedMCDelegate]] 实现同等功能。

### 伪代码参考（语法待验证）

```angelscript
// 以下代码基于 C++ 用法推断，Angelscript 中可能需要调整
UAbilityTask_PlayMontageAndWait MontageTask;

MontageTask = UAbilityTask_PlayMontageAndWait::CreatePlayMontageAndWaitProxy(
    this,
    n"PlayMontage",
    MontageToPlay,
    1.0f,       // PlayRate
    n"",        // StartSection
    false,      // bStopWhenAbilityEnds
    1.0f        // AnimRootMotionTranslationScale
);

MontageTask.OnCompleted.AddUFunction(this, n"OnMontageCompleted");
MontageTask.OnBlendOut.AddUFunction(this, n"OnMontageBlendOut");
MontageTask.OnInterrupted.AddUFunction(this, n"OnMontageInterrupted");
MontageTask.OnCancelled.AddUFunction(this, n"OnMontageCancelled");

MontageTask.ReadyForActivation();
```

## 相关页面

- [[UGameplayAbility]] - 能力基类
- [[FMontageWaitSimpleDelegate]] - 回调委托类型
- [[UAnimMontage]] - 蒙太奇资产
- [[UAnimInstance]] - 动画实例（手动播放替代方案）
- [[FOnMontageEndedMCDelegate]] - 手动方式的蒙太奇结束委托

## 来源

- [UAbilityTask_PlayMontageAndWait.md](../../raw/API/Global/UAbilityTask_PlayMontageAndWait.md)
