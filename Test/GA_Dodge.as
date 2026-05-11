/**
 * 闪避 GameplayAbility：空格（及方向子输入）触发。
 * - 破防闪避：当前锁定目标（对手）的 ASC 带有 Animation.Combat.BreakDefense.InWindow 时触发；侧闪为主、可选无敌 GE；不解析方向输入。
 * - 常规闪避：否则按输入方向选择左/右/后闪蒙太奇；前闪与仅 Dodge 输入按后闪处理；不应用无敌 GE。
 *
 * 配置：在授予能力时把 InputTagContainer 设为 Input.Action.Dodge 及其子标签（.Left/.Right/.Bwd/.Fwd），与设计一致。
 * 破防窗口：由敌方 AnimNotify 在对手招式上给「对手自身」ASC AddLooseGameplayTag(InWindow)；玩家按键时本 GA 读锁敌目标的 ASC。
 * 无有效锁敌目标时，不会进入破防闪避分支。
 */

UCLASS()
class UGA_Dodge : UTkGameplayAbility
{
    UPROPERTY(BlueprintHidden)
    UAbilityTask_PlayMontageAndWait MontageTask;

    /** 破防闪避：默认侧闪 */
    UPROPERTY(EditDefaultsOnly, Category = "Dodge|GuardBreak")
    UAnimMontage GuardBreakMontage_Default;

    /** 可选：贴身破防 */
    UPROPERTY(EditDefaultsOnly, Category = "Dodge|GuardBreak")
    UAnimMontage GuardBreakMontage_CloseRange;

    /** 可选：破防追击 */
    UPROPERTY(EditDefaultsOnly, Category = "Dodge|GuardBreak")
    UAnimMontage GuardBreakMontage_FollowUp;

    /** 对手 ASC 上存在此标签且 CloseRange 蒙太奇有效时优先使用 */
    UPROPERTY(EditDefaultsOnly, Category = "Dodge|GuardBreak")
    FGameplayTag GuardBreakVariant_CloseTag;

    /** 对手 ASC 上存在此标签且 FollowUp 蒙太奇有效时优先使用（优先级低于 Close） */
    UPROPERTY(EditDefaultsOnly, Category = "Dodge|GuardBreak")
    FGameplayTag GuardBreakVariant_FollowUpTag;

    /**
     * 破防闪避期间施加的无敌/免伤 GE（如 Duration 或 Infinite + RemoveOnEndAbility 自行清理）。
     * 常规闪避不会应用。
     */
    UPROPERTY(EditDefaultsOnly, Category = "Dodge|GuardBreak")
    TSubclassOf<UGameplayEffect> GuardBreakInvulnerabilityEffect;

    UPROPERTY(EditDefaultsOnly, Category = "Dodge|Regular")
    UAnimMontage RegularDodgeMontage_Left;

    UPROPERTY(EditDefaultsOnly, Category = "Dodge|Regular")
    UAnimMontage RegularDodgeMontage_Right;

    UPROPERTY(EditDefaultsOnly, Category = "Dodge|Regular")
    UAnimMontage RegularDodgeMontage_Back;

    FGameplayTag Cached_Input_Dodge_Left;
    FGameplayTag Cached_Input_Dodge_Right;

    FActiveGameplayEffectHandle GuardBreakInvulnEffectHandle;
    bool bGuardBreakInvulnApplied = false;
    bool bExecutedGuardBreakDodge = false;

    UFUNCTION(BlueprintOverride)
    void OnAbilityAdded()
    {
        Cached_Input_Dodge_Left = FGameplayTag::RequestGameplayTag(FName("Input.Action.Dodge.Left"), false);
        Cached_Input_Dodge_Right = FGameplayTag::RequestGameplayTag(FName("Input.Action.Dodge.Right"), false);
    }

    UFUNCTION(BlueprintOverride)
    void ActivateAbilityFromEvent(const FGameplayEventData TriggerEventData)
    {
        ANarrativeCharacter Char = CharacterOwner;
        if (Char == nullptr)
        {
            Char = Cast<ANarrativeCharacter>(GetAvatarActorFromActorInfo());
        }
        if (Char == nullptr || OwnerASC == nullptr)
        {
            EndAbility();
            return;
        }

        UTkAbilitySystemComponent OpponentASC = ResolveOpponentASC(Char);
        if (IsOpponentInGuardBreakResponseWindow(OpponentASC))
        {
            bExecutedGuardBreakDodge = true;
            UAnimMontage Montage = SelectGuardBreakMontage(OpponentASC);
            TryApplyGuardBreakInvulnerability();
            PlayDodgeMontage(Montage, Char);
            return;
        }

        bExecutedGuardBreakDodge = false;
        UAnimMontage RegularMontage = SelectRegularMontage(TriggerEventData.EventTag);
        PlayDodgeMontage(RegularMontage, Char);
    }

    UTkAbilitySystemComponent ResolveOpponentASC(ANarrativeCharacter Self) const
    {
        if (Self == nullptr)
        {
            return nullptr;
        }
        AActor LockActor = Self.GetLockTarget();
        if (LockActor == nullptr)
        {
            return nullptr;
        }
        ANarrativeCharacter Opponent = Cast<ANarrativeCharacter>(LockActor);
        if (Opponent == nullptr)
        {
            return nullptr;
        }
        return Opponent.GetTkAbilitySystemComponent();
    }

    bool IsOpponentInGuardBreakResponseWindow(UTkAbilitySystemComponent OpponentASC) const
    {
        if (OpponentASC == nullptr)
        {
            return false;
        }
        return OpponentASC.HasGameplayTag(GameplayTags::Animation_Combat_BreakDefense_InWindow);
    }

    UAnimMontage SelectGuardBreakMontage(UTkAbilitySystemComponent OpponentASC) const
    {
        if (OpponentASC != nullptr && GuardBreakVariant_CloseTag.IsValid() && GuardBreakMontage_CloseRange != nullptr
            && OpponentASC.HasGameplayTag(GuardBreakVariant_CloseTag))
        {
            return GuardBreakMontage_CloseRange;
        }
        if (OpponentASC != nullptr && GuardBreakVariant_FollowUpTag.IsValid() && GuardBreakMontage_FollowUp != nullptr
            && OpponentASC.HasGameplayTag(GuardBreakVariant_FollowUpTag))
        {
            return GuardBreakMontage_FollowUp;
        }
        return GuardBreakMontage_Default;
    }

    UAnimMontage SelectRegularMontage(const FGameplayTag& EventTag) const
    {
        if (EventTag.MatchesTagExact(Cached_Input_Dodge_Left) && RegularDodgeMontage_Left != nullptr)
        {
            return RegularDodgeMontage_Left;
        }
        if (EventTag.MatchesTagExact(Cached_Input_Dodge_Right) && RegularDodgeMontage_Right != nullptr)
        {
            return RegularDodgeMontage_Right;
        }
        // 无方向、仅 Dodge、Bwd、Fwd：一律后闪（见需求文档）
        return RegularDodgeMontage_Back;
    }

    void TryApplyGuardBreakInvulnerability()
    {
        if (!bExecutedGuardBreakDodge || OwnerASC == nullptr || GuardBreakInvulnerabilityEffect == nullptr)
        {
            return;
        }
        FGameplayEffectContextHandle EffectContext = OwnerASC.MakeEffectContext();
        FGameplayEffectSpecHandle SpecHandle = OwnerASC.MakeOutgoingSpec(GuardBreakInvulnerabilityEffect, GetAbilityLevel(), EffectContext);
        if (!SpecHandle.IsValid())
        {
            return;
        }
        GuardBreakInvulnEffectHandle = OwnerASC.ApplyGameplayEffectSpecToSelf(SpecHandle);
        bGuardBreakInvulnApplied = true;
    }

    void PlayDodgeMontage(UAnimMontage Montage, ANarrativeCharacter Char)
    {
        if (Montage == nullptr)
        {
            Log::LogWarning(LogChannel::Combat, "GA_Dodge: 蒙太奇未配置，结束能力");
            EndAbility();
            return;
        }

        Char.SwitchCombatState(GameplayTags::State_Combat_Dodge);

        MontageTask = AngelscriptAbilityTask::PlayMontageAndWait(this, NAME_None, Montage);
        MontageTask.OnCompleted.AddUFunction(this, FName("OnDodgeMontageFinished"));
        MontageTask.OnBlendOut.AddUFunction(this, FName("OnDodgeMontageFinished"));
        MontageTask.OnCancelled.AddUFunction(this, FName("OnDodgeMontageCancelled"));
        MontageTask.OnInterrupted.AddUFunction(this, FName("OnDodgeMontageCancelled"));
        MontageTask.ReadyForActivation();
    }

    UFUNCTION()
    void OnDodgeMontageFinished()
    {
        EndAbility();
    }

    UFUNCTION()
    void OnDodgeMontageCancelled()
    {
        EndAbility();
    }

    UFUNCTION(BlueprintOverride)
    void OnEndAbility(bool bWasCancelled)
    {
        if (bGuardBreakInvulnApplied && OwnerASC != nullptr)
        {
            OwnerASC.RemoveActiveGameplayEffect(GuardBreakInvulnEffectHandle);
            bGuardBreakInvulnApplied = false;
        }

        ANarrativeCharacter Char = CharacterOwner;
        if (Char == nullptr)
        {
            Char = Cast<ANarrativeCharacter>(GetAvatarActorFromActorInfo());
        }
        if (Char != nullptr && Char.GetCombatState().MatchesTag(GameplayTags::State_Combat_Dodge))
        {
            Char.SwitchCombatState(GameplayTags::State_Combat_Idle);
        }

        MontageTask = nullptr;
        bExecutedGuardBreakDodge = false;
    }
}
