---
title: "UAnimNotifyState"
category: entities
date: 2026-05-09
tags:
  - 动画
  - 通知
---

## 概述

UAnimNotifyState 是状态型动画通知基类，与 [[UAnimNotify]]（瞬时通知）不同，它跨越一段时间范围，有开始和结束事件。常用于持续效果，如碰撞检测窗口、运动扭曲等。

**核心用途**：在动画的一段持续时间内触发和维持游戏逻辑。

## 核心虚函数

- `NotifyBegin(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float32 TotalDuration)` - 通知范围开始时调用
- `NotifyTick(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float32 FrameDeltaTime)` - 通知范围内每帧调用
- `NotifyEnd(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation)` - 通知范围结束时调用

## 示例

```angelscript
// 自定义状态型动画通知：攻击碰撞窗口
class UMyAttackWindowNotify : UAnimNotifyState
{
    UPROPERTY(Category = "AttackWindow")
    float32 AttackRadius = 100.0f;

    void NotifyBegin(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float32 TotalDuration) override
    {
        Print("攻击碰撞窗口开始，半径: " + AttackRadius);
        EnableAttackCollision(MeshComp, AttackRadius);
    }

    void NotifyTick(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation, float32 FrameDeltaTime) override
    {
        CheckAttackCollision(MeshComp);
    }

    void NotifyEnd(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation) override
    {
        Print("攻击碰撞窗口结束");
        DisableAttackCollision(MeshComp);
    }
}
```

## 相关页面

- [[UAnimNotify]] - 瞬时动画通知
- [[UAnimSequence]] - 动画序列

## 来源

- [UAnimNotifyState.md](../../raw/API/Global/UAnimNotifyState.md)
