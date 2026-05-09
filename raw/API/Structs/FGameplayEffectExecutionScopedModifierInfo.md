### FGameplayEffectExecutionScopedModifierInfo


Struct representing modifier info used exclusively for "scoped" executions that happen instantaneously. These are
folded into a calculation only for the extent of the calculation and never permanently added to an aggregator.

**属性**:

- `FGameplayModEvaluationChannelSettings EvaluationChannelSettings [Evaluation channel settings of the scoped modifier]`
- `FGameplayEffectModifierMagnitude ModifierMagnitude [Magnitude of the scoped modifier]`
- `EGameplayModOp ModifierOp [Modifier operation to perform]`
- `FGameplayTagRequirements SourceTags [Source tag requirements for the modifier to apply]`
- `FGameplayTagRequirements TargetTags [Target tag requirements for the modifier to apply]`


**方法**:

- `EGameplayEffectScopedModifierAggregatorType& GetAggregatorType()`
- `FGameplayEffectAttributeCaptureDefinition& GetCapturedAttribute()`
- `FGameplayTag& GetTransientAggregatorIdentifier()`
- `FGameplayEffectExecutionScopedModifierInfo& opAssign(FGameplayEffectExecutionScopedModifierInfo Other)`

---

