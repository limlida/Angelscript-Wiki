### UGameplayEffect


UGameplayEffect
    The GameplayEffect definition. This is the data asset defined in the editor that drives everything.
 This is only blueprintable to allow for templating gameplay effects. Gameplay effects should NOT contain blueprint graphs.

**属性**:

- `FGameplayEffectModifierMagnitude DurationMagnitude [Duration in seconds. 0.0 for instantaneous effects; -1.0 for infinite duration. When applying stacks onto an existing active effect, the new spec's Duration is considered.]`
- `EGameplayEffectDurationType DurationPolicy [Policy for the duration of this effect]`
- `TArray<FGameplayEffectExecutionDefinition> Executions [Array of executions that will affect the target of this effect]`
- `TArray<TObjectPtr<UGameplayEffectComponent>> GEComponents [These Gameplay Effect Components define how this Gameplay Effect behaves when applied]`
- `TArray<FGameplayEffectCue> GameplayCues [Cues to trigger non-simulated reactions in response to this GameplayEffect such as sounds, particle effects, etc]`
- `TArray<FGameplayAbilitySpecDef> GrantedAbilities []`
- `FGameplayEffectModifierMagnitude MaxDurationMagnitude [MaxDuration in seconds. <= 0.0 for unlimited. When applying stacks onto an existing active effect, the new spec's MaxDuration is considered.]`
- `TArray<FGameplayModifierInfo> Modifiers [Array of modifiers that will affect the target of this effect]`
- `TArray<TSubclassOf<UGameplayEffect>> OverflowEffects [Effects to apply when a stacking effect "overflows" its stack count through another attempted application. Added whether the overflow application succeeds or not. Overflow occurs for each added stack if stack count limit is infinite (0 or -1)]`
- `FScalableFloat Period [Period in seconds. 0.0 for non-periodic effects]`
- `EGameplayEffectPeriodInhibitionRemovedPolicy PeriodicInhibitionPolicy [How we should respond when a periodic gameplay effect is no longer inhibited // EditCondition in FGameplayEffectDetails]`
- `EGameplayEffectStackingDurationPolicy StackDurationRefreshPolicy [Policy for how the effect duration should be refreshed while stacking]`
- `EGameplayEffectStackingExpirationPolicy StackExpirationPolicy [Policy for how to handle duration expiring on this gameplay effect]`
- `int StackLimitCount [Stack limit for StackingType. A value of -1 or 0 means no limit.]`
- `EGameplayEffectStackingPeriodPolicy StackPeriodResetPolicy [Policy for how the effect period should be reset (or not) while stacking]`
- `EGameplayEffectStackingType StackingType`
- `bool bClearStackOnOverflow [If true, the entire stack of the effect will be cleared once it overflows]`
- `bool bDenyOverflowApplication [If true, stacking attempts made while at the stack count will fail, resulting in the duration and context not being refreshed]`
- `bool bExecutePeriodicEffectOnApplication [If true, the effect executes on application and then at every period interval. If false, no execution occurs until the first period elapses. // EditCondition in FGameplayEffectDetails]`
- `bool bFactorInStackCount [If true, the calculation will include the stack count for Modifier Magnitudes]`
- `bool bRequireModifierSuccessToTriggerCues [If true, cues will only trigger when GE modifiers succeed being applied (whether through modifiers or executions)]`
- `bool bSuppressStackingCues [If true, GameplayCues will only be triggered for the first instance in a stacking GameplayEffect.]`

---

