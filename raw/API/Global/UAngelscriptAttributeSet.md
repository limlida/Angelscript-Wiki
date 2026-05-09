### UAngelscriptAttributeSet


**属性**:

- `TArray<FName> ReplicatedAttributeBlackList [The default behavior of the attribute set is to replicate all attributes for the entire lifetime of the set. If you don't want an attribute to be replicated, add its name to this list.]`


**方法**:

- `FGameplayAbilityActorInfo& GetActorInfo() const`
- `UAngelscriptAbilitySystemComponent GetOwningAbilitySystemComponent() const`
- `AActor GetOwningActor() const`
- `bool OnInitFromMetaDataTable(const UDataTable DataTable)`  
  Return true if you could load the data. False if you want to use the default loading function
- `PostAttributeBaseChange(FGameplayAttribute Attribute, float OldValue, float NewValue) const`
- `PostAttributeChange(FGameplayAttribute Attribute, float OldValue, float NewValue)`
- `PostGameplayEffectExecute(FGameplayEffectSpec EffectSpec, FGameplayModifierEvaluatedData& EvaluatedData, UAngelscriptAbilitySystemComponent AbilitySystemComponent)`
- `PreAttributeBaseChange(FGameplayAttribute Attribute, float32& NewValue) const`
- `PreAttributeChange(FGameplayAttribute Attribute, float32& NewValue)`
- `bool PreGameplayEffectExecute(FGameplayEffectSpec EffectSpec, FGameplayModifierEvaluatedData& EvaluatedData, UAngelscriptAbilitySystemComponent AbilitySystemComponent)`  
  Return true if you want to allow the effect to execute
- `InitFromMetaDataTable(const UDataTable DataTable)`
- `OnRep_Attribute(FAngelscriptGameplayAttributeData& OldAttributeData)`
- `bool TryGetAttributeBaseValue(FName AttributeName, float32& OutBaseValue) const`
- `bool TryGetAttributeCurrentValue(FName AttributeName, float32& OutCurrentValue) const`
- `bool TrySetAttributeBaseValue(FName AttributeName, float32 NewBaseValue)`  
  Use these functions when you are not sure if the attribute you are trying to manipulate will exist on the set.

---

