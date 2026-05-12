---
title: "UAnimNotify"
category: entities
date: 2026-05-09
tags:
  - 动画
  - 通知

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UAnimNotify.md
verified_by: agent
unverified_items: []
---

## 概述

UAnimNotify 是动画通知基类，允许在动画序列的特定时间点触发事件。动画通知是动画驱动游戏逻辑的核心机制，常用于同步音效、粒子效果、伤害判定等。

**核心用途**：在动画播放到特定帧时触发游戏逻辑。

## 核心虚函数

- `bool Notify(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation)` - 通知触发时调用。返回 true 表示已处理

## 常见子类

- UAnimNotify_PlaySound - 播放声音
- UAnimNotify_PlayParticleEffect - 播放粒子效果
- UAnimNotify_SpawnMonster - 生成怪物

## 示例

```angelscript
// 自定义动画通知
class UMyAnimNotify : UAnimNotify
{
    UPROPERTY(Category = "MyNotify")
    float32 DamageAmount = 10.0f;

    bool Notify(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation) override
    {
        AActor Owner = MeshComp.GetOwner();
        if (Owner != nullptr)
        {
            Print("动画通知触发！伤害: " + DamageAmount);
        }
        return true;
    }
}
```

## 相关页面

- [[UAnimNotifyState]] - 状态型动画通知
- [[UAnimSequence]] - 动画序列
- [[UAnimMontage]] - 动画蒙太奇

## 来源

- [UAnimNotify.md](../../raw/API/Global/UAnimNotify.md)
