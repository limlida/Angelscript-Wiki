---
title: "FOnMontageEndedMCDelegate"
category: entities
date: 2026-05-09
source_count: 1
tags:
  - 动画
  - Montage
  - 委托
---

## 概述

`FOnMontageEndedMCDelegate` 是蒙太奇结束时的多播委托。当蒙太奇动画结束（无论正常完成还是被中断）时，引擎会广播此委托通知所有绑定的监听者。

**用途**：监听蒙太奇动画的结束事件，常用于在动画播放完成后执行逻辑（如结束能力、触发效果等）。

**所属**：`UAnimInstance.OnMontageEnded` 属性的类型。

## 回调签名

```angelscript
void OnMontageEnded(UAnimMontage Montage, bool bInterrupted)
```

- `Montage` - 结束的蒙太奇实例
- `bInterrupted` - `true` 表示被中断，`false` 表示正常播放完成

## 方法

- `AddUFunction(const UObject Object, FName FunctionName)` - 绑定监听函数
- `Unbind(UObject Object, FName FunctionName)` - 解绑指定对象的指定函数
- `UnbindObject(UObject Object)` - 解绑指定对象的所有函数
- `Clear()` - 清除所有绑定
- `bool IsBound() const` - 是否有任何绑定
- `Broadcast(UAnimMontage Montage, bool bInterrupted) const` - 广播事件（通常由引擎调用）

## 示例

### 绑定与解绑

```angelscript
UAnimInstance AnimInst = Mesh.GetAnimInstance();

// 绑定
AnimInst.OnMontageEnded.AddUFunction(this, n"OnMontageEnded");

// 解绑单个函数
AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");

// 解绑对象所有函数
AnimInst.OnMontageEnded.UnbindObject(this);

// 清除所有绑定
AnimInst.OnMontageEnded.Clear();
```

### 在 Gameplay Ability 中使用

```angelscript
class UMyAbility : UGameplayAbility
{
    UPROPERTY()
    UAnimMontage MontageToPlay;

    void ActivateAbility() override
    {
        if (!CommitAbility())
        {
            EndAbility();
            return;
        }

        USkeletalMeshComponent Mesh = GetOwningComponentFromActorInfo();
        UAnimInstance AnimInst = Mesh.GetAnimInstance();
        if (AnimInst == nullptr || MontageToPlay == nullptr)
        {
            EndAbility();
            return;
        }

        AnimInst.OnMontageEnded.AddUFunction(this, n"OnMontageEnded");
        float Duration = AnimInst.Montage_Play(MontageToPlay, 1.0f);
        if (Duration <= 0.0f)
        {
            AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
            EndAbility();
        }
    }

    UFUNCTION()
    void OnMontageEnded(UAnimMontage Montage, bool bInterrupted)
    {
        if (Montage != MontageToPlay)
            return;

        USkeletalMeshComponent Mesh = GetOwningComponentFromActorInfo();
        if (Mesh != nullptr)
        {
            UAnimInstance AnimInst = Mesh.GetAnimInstance();
            if (AnimInst != nullptr)
                AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
        }
        EndAbility();
    }
}
```

## 相关委托

- `FOnMontageStartedMCDelegate` - 蒙太奇开始时触发
- `FOnMontageBlendingOutStartedMCDelegate` - 蒙太奇开始混出时触发
- `FOnMontageBlendedInEndedMCDelegate` - 蒙太奇混入完成时触发
- `FOnMontageSectionChangedMCDelegate` - 蒙太奇段落改变时触发

## 相关页面

- [[UAnimInstance]] - 动画实例（包含所有蒙太奇委托）
- [[UAnimMontage]] - 蒙太奇资产
- [[UGameplayAbility]] - 游戏能力

## 来源

- [FOnMontageEndedMCDelegate.md](../../raw/API/Structs/FOnMontageEndedMCDelegate.md)
