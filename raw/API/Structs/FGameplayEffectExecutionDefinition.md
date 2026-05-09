### FGameplayEffectExecutionDefinition


Struct representing the definition of a custom execution for a gameplay effect.
Custom executions run special logic from an outside class each time the gameplay effect executes.

**属性**:

- `TSubclassOf<UGameplayEffectExecutionCalculation> CalculationClass [Custom execution calculation class to run when the gameplay effect executes]`
- `TArray<FGameplayEffectExecutionScopedModifierInfo> CalculationModifiers [Modifiers that are applied "in place" during the execution calculation]`
- `TArray<FConditionalGameplayEffect> ConditionalGameplayEffects [Other Gameplay Effects that will be applied to the target of this execution if the execution is successful. Note if no execution class is selected, these will always apply.]`
- `FGameplayTagContainer PassedInTags [These tags are passed into the execution as is, and may be used to do conditional logic]`


**方法**:

- `AddCalculationModifier(FGameplayEffectExecutionScopedModifierInfo CalculationModifier)`
- `AddConditionalGameplayEffect(FConditionalGameplayEffect ConditionalGameplayEffect)`
- `TSubclassOf<UGameplayEffectExecutionCalculation> GetCalculationClass() const`
- `TArray<FGameplayEffectExecutionScopedModifierInfo>& GetCalculationModifiers()`
- `TArray<FConditionalGameplayEffect>& GetConditionalGameplayEffects()`
- `FGameplayTagContainer& GetPassedInTags()`
- `SetCalculationClass(TSubclassOf<UGameplayEffectExecutionCalculation> CalculationClass)`
- `SetCalculationModifiers(TArray<FGameplayEffectExecutionScopedModifierInfo> CalculationModifiers)`
- `SetConditionalGameplayEffects(TArray<FConditionalGameplayEffect> ConditionalGameplayEffects)`
- `SetPassedInTags(FGameplayTagContainer PassedInTags)`
- `FGameplayEffectExecutionDefinition& opAssign(FGameplayEffectExecutionDefinition Other)`

---

