---
title: "GA播放蒙太奇动画并在结束时终止能力"
category: syntheses
date: 2026-05-09
tags:
  - GAS
  - Ability
  - Montage
  - 实践指南
trust: partial
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UGameplayAbility.md
  - raw/API/Global/UAnimInstance.md
  - raw/API/Global/UAbilityTask_PlayMontageAndWait.md
  - raw/API/Structs/FOnMontageEndedMCDelegate.md
  - raw/API/Structs/FMontageWaitSimpleDelegate.md
verified_by: agent
unverified_items:
  - CreatePlayMontageAndWaitProxy
  - ReadyForActivation
  - ASC.PlayMontage
---

## 概述

本文档总结如何在 Angelscript 中编写一个 Gameplay Ability，该能力在激活时播放蒙太奇动画，并在动画结束时自动终止能力。

## 核心知识点

### 1. 能力生命周期

```
CanActivate → ActivateAbility → CommitAbility → EndAbility
```

### 2. 蒙太奇播放方式

#### 方式A：使用 AbilityTask（推荐）

`UAbilityTask_PlayMontageAndWait` 是专门为GA设计的任务，它会：
- 自动播放蒙太奇
- 提供完成、中断、取消等回调
- 能力结束时自动停止蒙太奇（可配置）

#### 方式B：手动播放蒙太奇

通过 `UAnimInstance.Montage_Play()` 手动播放，并监听 `OnMontageEnded` 委托。

## 实现方案

### 方案一：使用 AbilityTask（推荐）

```angelscript
class UMyMontageAbility : UGameplayAbility
{
    // 要播放的蒙太奇资产
    UPROPERTY()
    UAnimMontage MontageToPlay;
    
    // 播放速率
    UPROPERTY()
    float PlayRate = 1.0;
    
    // 能力任务实例
    UAbilityTask_PlayMontageAndWait MontageTask;
    
    UFUNCTION(BlueprintOverride)
    void ActivateAbility()
    {
        // 1. 提交能力（检查成本和冷却）
        if (!CommitAbility())
        {
            EndAbility();
            return;
        }
        
        // 2. 创建并激活蒙太奇任务
        // 注意：具体的API调用方式需要根据实际项目验证
        // 在C++中通常是：UAbilityTask_PlayMontageAndWait::CreatePlayMontageAndWaitProxy(...)
        // Angelscript中的调用方式可能需要查阅项目API
        
        // 伪代码示例（实际语法需要验证）
        /*
        MontageTask = UAbilityTask_PlayMontageAndWait::CreatePlayMontageAndWaitProxy(
            this, 
            n"PlayMontage", 
            MontageToPlay, 
            PlayRate, 
            n"", 
            false, 
            1.0f
        );
        
        // 绑定完成回调
        MontageTask.OnCompleted.AddUFunction(this, n"OnMontageCompleted");
        MontageTask.OnBlendOut.AddUFunction(this, n"OnMontageBlendOut");
        MontageTask.OnInterrupted.AddUFunction(this, n"OnMontageInterrupted");
        MontageTask.OnCancelled.AddUFunction(this, n"OnMontageCancelled");
        
        MontageTask.ReadyForActivation();
        */
    }
    
    UFUNCTION()
    void OnMontageCompleted()
    {
        Print("蒙太奇播放完成");
        EndAbility();
    }
    
    UFUNCTION()
    void OnMontageBlendOut()
    {
        Print("蒙太奇开始混出");
        EndAbility();
    }
    
    UFUNCTION()
    void OnMontageInterrupted()
    {
        Print("蒙太奇被中断");
        EndAbility();
    }
    
    UFUNCTION()
    void OnMontageCancelled()
    {
        Print("蒙太奇被取消");
        CancelAbility();
    }
}
```

### 方案二：手动播放并监听委托

```angelscript
class UMyMontageAbility : UGameplayAbility
{
    UPROPERTY()
    UAnimMontage MontageToPlay;
    
    UPROPERTY()
    float PlayRate = 1.0;
    
    UFUNCTION(BlueprintOverride)
    void ActivateAbility()
    {
        if (!CommitAbility())
        {
            EndAbility();
            return;
        }
        
        // 获取动画实例
        ACharacter AvatarChar = Cast<ACharacter>(GetAvatarActorFromActorInfo());
        if (AvatarChar == nullptr)
        {
            EndAbility();
            return;
        }
        
        USkeletalMeshComponent Mesh = AvatarChar.GetMesh();
        UAnimInstance AnimInst = Mesh.GetAnimInstance();
        
        if (AnimInst == nullptr || MontageToPlay == nullptr)
        {
            EndAbility();
            return;
        }
        
        // 绑定蒙太奇结束委托
        AnimInst.OnMontageEnded.AddUFunction(this, n"OnMontageEnded");
        
        // 播放蒙太奇
        float Duration = AnimInst.Montage_Play(MontageToPlay, PlayRate);
        
        if (Duration <= 0.0)
        {
            AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
            EndAbility();
            return;
        }
        
        Print(f"蒙太奇开始播放，时长: {Duration}秒");
    }
    
    UFUNCTION()
    void OnMontageEnded(UAnimMontage Montage, bool bInterrupted)
    {
        if (Montage != MontageToPlay)
            return;
        
        // 移除委托绑定
        ACharacter AvatarChar = Cast<ACharacter>(GetAvatarActorFromActorInfo());
        if (AvatarChar != nullptr)
        {
            USkeletalMeshComponent Mesh = AvatarChar.GetMesh();
            UAnimInstance AnimInst = Mesh.GetAnimInstance();
            if (AnimInst != nullptr)
            {
                AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
            }
        }
        
        if (bInterrupted)
        {
            Print("蒙太奇被中断");
        }
        else
        {
            Print("蒙太奇播放完成");
        }
        
        EndAbility();
    }
    
    UFUNCTION(BlueprintOverride)
    void EndAbility()
    {
        // 清理：停止蒙太奇并移除委托
        ACharacter AvatarChar = Cast<ACharacter>(GetAvatarActorFromActorInfo());
        if (AvatarChar != nullptr)
        {
            USkeletalMeshComponent Mesh = AvatarChar.GetMesh();
            UAnimInstance AnimInst = Mesh.GetAnimInstance();
            if (AnimInst != nullptr)
            {
                AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
                AnimInst.Montage_Stop(0.25, MontageToPlay);
            }
        }
        
        Super::EndAbility();
    }
}
```

### 方案三：使用项目的 UTkGameplayAbility

如果项目使用自定义能力基类：

```angelscript
class UMyMontageAbility : UTkGameplayAbility
{
    UPROPERTY()
    UAnimMontage MontageToPlay;
    
    UPROPERTY()
    float PlayRate = 1.0;
    
    UFUNCTION(BlueprintOverride)
    void ActivateAbility()
    {
        Super::ActivateAbility();
        
        if (!CommitAbility())
        {
            EndAbility();
            return;
        }
        
        // [TODO: verify | reason: `ASC.PlayMontage` 在 UAbilitySystemComponent raw API 中未找到，可能是项目自定义扩展 | added: 2026-05-11]
        UAbilitySystemComponent ASC = GetAbilitySystemComponentFromActorInfo();
        if (ASC != nullptr && MontageToPlay != nullptr)
        {
            ASC.PlayMontage(this, MontageToPlay, PlayRate, n"");
        }
        
        // 然后需要监听结束事件...
        // 具体实现参考方案二
    }
}
```

## 关键注意事项

### 1. 网络复制

- 确保蒙太奇在所有客户端同步播放
- 使用 `NetExecutionPolicy` 设置适当的网络策略
- 推荐：`LocalPredicted`（本地预测）

### 2. 根运动

如果蒙太奇包含根运动：
- 确保 AnimInstance 的 `RootMotionMode` 正确设置
- 可能需要使用专门的移动组件处理

### 3. 能力取消

当能力被取消时，应该：
- 停止正在播放的蒙太奇
- 清理所有委托绑定
- 调用 `CancelAbility()` 而不是 `EndAbility()`

### 4. 蒙太奇混出

- `OnBlendOut` 在蒙太奇开始混出时触发
- `OnCompleted` 在蒙太奇完全混出后触发
- 通常在 `OnBlendOut` 就可以结束能力了

## 待验证内容

由于知识库中缺少以下信息，建议在实际项目中验证：

1. **AbilityTask 的创建方式**
   - `UAbilityTask_PlayMontageAndWait` 的 raw API 中仅暴露了 5 个委托属性，**无工厂方法**（C++ 中的 `CreatePlayMontageAndWaitProxy` 未在 Angelscript API 中找到）
   - `UAbilityTask` 基类的 raw API 为空（无 `ReadyForActivation` 等方法），AbilityTask 在 Angelscript 中的可用性需实际验证

2. **ASC.PlayMontage 方法**
   - `UAbilitySystemComponent` 的 raw API 中**不存在** `PlayMontage` 方法
   - 可能是项目自定义扩展（如 MixinLibrary）或已废弃

3. **委托绑定语法（已确认）**
   - 绑定：`AddUFunction(Object, n"FunctionName")` — 来源：[[FOnMontageEndedMCDelegate]] / [[FMontageWaitSimpleDelegate]]
   - 解绑：`Unbind(Object, n"FunctionName")` — **注意不是 `RemoveUFunction`**，该方法不存在
   - 按对象解绑：`UnbindObject(Object)`
   - 全部清除：`Clear()`

## 参考页面

- [[UGameplayAbility]] - 能力基类
- [[UTkGameplayAbility]] - 项目自定义能力基类
- [[UAnimMontage]] - 蒙太奇资产
- [[UAnimInstance]] - 动画实例
- [[UAbilitySystemComponent]] - 能力系统组件
- [[UAbilityTask_PlayMontageAndWait]] - 蒙太奇能力任务
- [[FOnMontageEndedMCDelegate]] - 蒙太奇结束委托
- [[FMontageWaitSimpleDelegate]] - AbilityTask 回调委托
- [[UGameplayAbility_Montage]] - 引擎内置蒙太奇能力

## 来源

- [UGameplayAbility API](../../raw/API/Global/UGameplayAbility.md)
- [UAnimInstance API](../../raw/API/Global/UAnimInstance.md)
- [UAbilityTask_PlayMontageAndWait API](../../raw/API/Global/UAbilityTask_PlayMontageAndWait.md)
- [FOnMontageEndedMCDelegate API](../../raw/API/Structs/FOnMontageEndedMCDelegate.md)
- [FMontageWaitSimpleDelegate API](../../raw/API/Structs/FMontageWaitSimpleDelegate.md)
