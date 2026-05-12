---
title: "UGameplayAbility_Montage"
category: entities
date: 2026-05-09
source_count: 1
tags:
  - GAS
  - Montage
  - 能力系统

trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UGameplayAbility_Montage.md
verified_by: agent
unverified_items: []
---

## 概述

`UGameplayAbility_Montage` 是引擎内置的蒙太奇能力类，继承自 [[UGameplayAbility]]。它提供了一个简单的预制能力：播放单个蒙太奇动画，并在动画播放期间应用/移除 GameplayEffect。

**适用场景**：当只需要"播放动画 + 应用效果"而不需要自定义逻辑时，可直接使用或继承此类，无需手动编写蒙太奇播放代码。

## 属性

- `UAnimMontage MontageToPlay` - 要播放的蒙太奇资产
- `float32 PlayRate` - 播放速率
- `FName SectionName` - 起始段落名称
- `TArray<TSubclassOf<UGameplayEffect>> GameplayEffectClassesWhileAnimating` - 动画播放期间应用的 GameplayEffect 列表（动画结束时自动移除）

## 示例

```angelscript
// 简单用法：直接在编辑器中配置属性即可
// MontageToPlay = 攻击蒙太奇
// PlayRate = 1.0
// GameplayEffectClassesWhileAnimating = [增伤Buff]

// 自定义用法：继承并扩展
class UMySpecialMontageAbility : UGameplayAbility_Montage
{
    void ActivateAbility() override
    {
        Super::ActivateAbility();
        // 额外逻辑...
    }
}
```

## 继承关系

- [[UGameplayAbility]] → **UGameplayAbility_Montage**

## 相关页面

- [[UGameplayAbility]] - 能力基类
- [[UAnimMontage]] - 蒙太奇资产
- [[UGameplayEffect]] - 游戏效果
- [[UAbilityTask_PlayMontageAndWait]] - 更灵活的蒙太奇能力任务

## 来源

- [AngelScript_API.md 第145657行](../../raw/AngelScript_API.md) — `UGameplayAbility_Montage` 定义
