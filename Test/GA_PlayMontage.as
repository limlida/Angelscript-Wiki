class UGA_PlayMontage : UGameplayAbility
{
    UPROPERTY(DefaultComponent)
    UAnimMontage MontageToPlay;

    UPROPERTY()
    float PlayRate = 1.0f;

    UFUNCTION(BlueprintOverride)
    void ActivateAbility()
    {
        if (!CommitAbility())
        {
            EndAbility();
            return;
        }

        USkeletalMeshComponent Mesh = GetOwningComponentFromActorInfo();
        if (Mesh == nullptr)
        {
            EndAbility();
            return;
        }

        UAnimInstance AnimInst = Mesh.GetAnimInstance();
        if (AnimInst == nullptr || MontageToPlay == nullptr)
        {
            EndAbility();
            return;
        }

        AnimInst.OnMontageEnded.AddUFunction(this, n"OnMontageEnded");

        float Duration = AnimInst.Montage_Play(MontageToPlay, PlayRate);
        if (Duration <= 0.0f)
        {
            AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
            EndAbility();
            return;
        }
    }

    UFUNCTION()
    void OnMontageEnded(UAnimMontage Montage, bool bInterrupted)
    {
        if (Montage != MontageToPlay)
            return;

        CleanupMontageBinding();

        if (bInterrupted)
        {
            CancelAbility();
        }
        else
        {
            EndAbility();
        }
    }

    UFUNCTION(BlueprintOverride)
    void OnEndAbility(bool bWasCancelled)
    {
        CleanupMontageBinding();

        if (bWasCancelled)
        {
            MontageStop(0.25f);
        }
    }

    void CleanupMontageBinding()
    {
        USkeletalMeshComponent Mesh = GetOwningComponentFromActorInfo();
        if (Mesh == nullptr)
            return;

        UAnimInstance AnimInst = Mesh.GetAnimInstance();
        if (AnimInst == nullptr)
            return;

        AnimInst.OnMontageEnded.Unbind(this, n"OnMontageEnded");
    }
}