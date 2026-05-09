### FGameplayAbilitySpec


An activatable ability spec, hosted on the ability system component. This defines both what the ability is (what class, what level, input binding etc)
and also holds runtime state that must be kept outside of the ability being instanced/activated.

**属性**:

- `UGameplayAbility Ability`
- `FGameplayAbilityActivationInfo ActivationInfo`
- `uint8 ActiveCount`
- `FGameplayTagContainer DynamicAbilityTags`
- `FActiveGameplayEffectHandle GameplayEffectHandle`
- `FGameplayAbilitySpecHandle Handle`
- `int InputID`
- `int Level`
- `TArray<TObjectPtr<UGameplayAbility>> NonReplicatedInstances`
- `TArray<TObjectPtr<UGameplayAbility>> ReplicatedInstances`
- `TMap<FGameplayTag,float32> SetByCallerTagMagnitudes`
- `TWeakObjectPtr<UObject> SourceObject`


**方法**:

- `bool GetbInputPressed() const`
- `SetbInputPressed(bool bValue)`
- `bool GetbRemoveAfterActivation() const`
- `SetbRemoveAfterActivation(bool bValue)`
- `bool GetbPendingRemove() const`
- `SetbPendingRemove(bool bValue)`
- `bool GetbActivateOnce() const`
- `SetbActivateOnce(bool bValue)`
- `UGameplayAbility GetPrimaryInstance() const`
- `bool ShouldReplicateAbilitySpec() const`
- `TArray<UGameplayAbility> GetAbilityInstances() const`
- `bool IsActive() const`
- `PreReplicatedRemoved(FGameplayAbilitySpecContainer InArraySerializer)`
- `PostReplicatedAdd(FGameplayAbilitySpecContainer InArraySerializer)`
- `FString GetDebugString()`
- `FGameplayAbilitySpec& opAssign(FGameplayAbilitySpec Other)`

---

