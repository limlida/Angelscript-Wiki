---
title: "UGameplayAbility"
category: entities
date: 2026-05-09
tags:
  - GAS
  - 能力系统

trust: verified
verified_at: 2026-05-11
verified_against:
  - raw/API/Global/UGameplayAbility.md
verified_by: agent
unverified_items: []
---

## 概述

UGameplayAbility 是 GAS 中的能力基类，定义了自定义游戏逻辑，可以由玩家或外部游戏逻辑激活。能力是 GAS 中最灵活的部分，可以表示攻击、技能、状态、被动效果等。

**能力生命周期**：`CanActivate` → `ActivateAbility` → `CommitAbility` → `EndAbility`

## 主要属性

### 标签配置

- `FGameplayTagContainer AbilityTags` - 此能力拥有的标签
- `FGameplayTagContainer ActivationRequiredTags` - 激活所需标签（必须全部拥有）
- `FGameplayTagContainer ActivationBlockedTags` - 激活阻止标签（拥有任一则阻止）
- `FGameplayTagContainer ActivationOwnedTags` - 激活时授予所有者的标签
- `FGameplayTagContainer BlockAbilitiesWithTag` - 激活时阻止拥有这些标签的其他能力
- `FGameplayTagContainer CancelAbilitiesWithTag` - 激活时取消拥有这些标签的其他能力

### 成本和冷却

- `TSubclassOf<UGameplayEffect> CooldownGameplayEffectClass` - 冷却效果类
- `TSubclassOf<UGameplayEffect> CostGameplayEffectClass` - 成本效果类（法力、体力等）

### 实例化策略

- `EGameplayAbilityInstancingPolicy InstancingPolicy` - 实例化策略
  - `NonInstanced` - 非实例化（共享，不可存储状态）
  - `InstancedPerActor` - 每个 Actor 一个实例（**最常用**）
  - `InstancedPerExecution` - 每次执行一个实例

### 网络策略

- `EGameplayAbilityNetExecutionPolicy NetExecutionPolicy` - 网络执行策略
  - `LocalOnly` - 仅本地
  - `LocalPredicted` - 本地预测（**最常用**）
  - `ServerInitiated` - 服务器发起
  - `ServerOnly` - 仅服务器

## 主要方法

### 生命周期

- `ActivateAbility()` - **核心方法**，定义能力做什么。必须调用 CommitAbility 和 EndAbility
- `EndAbility()` - 结束能力
- `CancelAbility()` - 取消能力
- `OnEndAbility(bool bWasCancelled)` - 能力结束时的蓝图事件

### 提交

- `bool CommitAbility()` - 提交能力（消耗资源、应用冷却）。**必须在 ActivateAbility 中调用**
- `bool CommitAbilityCooldown(bool BroadcastCommitEvent = false, bool ForceCooldown = false)` - 仅提交冷却
- `bool CommitAbilityCost(bool BroadcastCommitEvent = false)` - 仅提交成本

### 检查

- `bool CanActivateAbility(FGameplayAbilityActorInfo ActorInfo, FGameplayAbilitySpecHandle Handle, FGameplayTagContainer& RelevantTags) const` - 是否可以激活
- `bool CheckAbilityCooldown()` - 检查冷却
- `bool CheckAbilityCost()` - 检查成本

### 效果应用

- `FActiveGameplayEffectHandle ApplyGameplayEffectToOwner(TSubclassOf<UGameplayEffect> GameplayEffectClass, int GameplayEffectLevel = 1, int Stacks = 1)` - 对自身应用效果
- `TArray<FActiveGameplayEffectHandle> ApplyGameplayEffectToTarget(FGameplayAbilityTargetDataHandle TargetData, TSubclassOf<UGameplayEffect> GameplayEffectClass, int GameplayEffectLevel = 1, int Stacks = 1)` - 对目标应用效果
- `FGameplayEffectSpecHandle MakeOutgoingGameplayEffectSpec(TSubclassOf<UGameplayEffect> GameplayEffectClass, float32 Level = 1.0) const` - 创建输出效果规格

### 效果移除

- `RemoveGameplayEffectFromOwnerWithAssetTags(FGameplayTagContainer WithAssetTags, int StacksToRemove = -1)` - 按资产标签移除效果
- `RemoveGameplayEffectFromOwnerWithGrantedTags(FGameplayTagContainer WithGrantedTags, int StacksToRemove = -1)` - 按授予标签移除效果
- `RemoveGameplayEffectFromOwnerWithHandle(FActiveGameplayEffectHandle Handle, int StacksToRemove = -1)` - 按句柄移除效果

### GameplayCue

- `AddGameplayCue(FGameplayTag GameplayCueTag, FGameplayEffectContextHandle Context, bool bRemoveOnAbilityEnd = true)` - 添加持续 GameplayCue
- `RemoveGameplayCue(FGameplayTag GameplayCueTag)` - 移除 GameplayCue
- `ExecuteGameplayCue(FGameplayTag GameplayCueTag, FGameplayEffectContextHandle Context)` - 执行瞬时 GameplayCue

### Montage 控制

- `MontageJumpToSection(FName SectionName)` - 跳转到 Montage 段落
- `MontageSetNextSectionName(FName FromSectionName, FName ToSectionName)` - 设置下一段落
- `MontageStop(float32 OverrideBlendOutTime = -1.0)` - 停止 Montage
- `UAnimMontage GetCurrentMontage() const` - 获取当前播放的 Montage

### 信息获取

- `UAbilitySystemComponent GetAbilitySystemComponentFromActorInfo() const` - 获取 ASC
- `AActor GetAvatarActorFromActorInfo() const` - 获取执行能力的物理 Actor
- `AActor GetOwningActorFromActorInfo() const` - 获取拥有此能力的 Actor
- `USkeletalMeshComponent GetOwningComponentFromActorInfo() const` - 获取骨骼网格体组件（便利方法，可直接获取 AnimInstance）
- `int GetAbilityLevel() const` - 获取能力等级
- `float32 GetCooldownTimeRemaining() const` - 获取剩余冷却时间
- `bool IsLocallyControlled() const` - 是否本地控制
- `bool HasAuthority() const` - 是否有权威

## 示例

```angelscript
class UMyAttackAbility : UGameplayAbility
{
    UPROPERTY()
    UAnimMontage AttackMontage;

    void ActivateAbility() override
    {
        if (!CommitAbility())
        {
            EndAbility();
            return;
        }

        // 通过 GetOwningComponentFromActorInfo 获取骨骼网格体，再获取 AnimInstance
        USkeletalMeshComponent Mesh = GetOwningComponentFromActorInfo();
        UAnimInstance AnimInst = Mesh.GetAnimInstance();
        if (AnimInst != nullptr && AttackMontage != nullptr)
        {
            AnimInst.OnMontageEnded.AddUFunction(this, n"OnMontageEnded");
            float Duration = AnimInst.Montage_Play(AttackMontage, 1.0f);
            if (Duration <= 0.0f)
            {
                AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
                EndAbility();
                return;
            }
        }

        ApplyGameplayEffectToOwner(BuffEffectClass, GetAbilityLevel());
        AddGameplayCue(n"GameplayCue.Attack.Impact", FGameplayEffectContextHandle());
    }

    UFUNCTION()
    void OnMontageEnded(UAnimMontage Montage, bool bInterrupted)
    {
        if (Montage != AttackMontage)
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

## 相关页面

- [[UAbilitySystemComponent]] - 能力系统组件
- [[UGameplayEffect]] - 游戏效果
- [[UAttributeSet]] - 属性集
- [[UTkAbilitySet]] - 项目自定义能力集
- [[UAnimInstance]] - 动画实例（Montage 播放入口）
- [[FOnMontageEndedMCDelegate]] - 蒙太奇结束委托
- [[UAbilityTask_PlayMontageAndWait]] - 蒙太奇能力任务
- [[UGameplayAbility_Montage]] - 引擎内置蒙太奇能力

## 来源

- [UGameplayAbility.md](../../raw/API/Global/UGameplayAbility.md)
