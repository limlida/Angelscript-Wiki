### UTkAbilitySystemComponent


UTkAbilitySystemComponent

    Base ability system component class used by this project.

**方法**:

- `BeginCacheInput(FGameplayTag InputType)`
- `HandleGameplayEvent(FGameplayTag EventTag, FGameplayEventData Payload)`
- `ClientNotifyAbilityFailed(const UGameplayAbility Ability, FGameplayTagContainer FailureReason)`  
  Notify client that an ability failed to activate
- `EndCacheInput(FGameplayTag InputType)`
- `GetAdditionalActivationTagRequirements(FGameplayTagContainer AbilityTags, FGameplayTagContainer& OutActivationRequired, FGameplayTagContainer& OutActivationBlocked) const`  
  Looks at ability tags and gathers additional required and blocking tags
- `SimulateInput(FGameplayTag InputTag)`

---

