### FGameplayModifierInfo


FGameplayModifierInfo
    Tells us "Who/What we" modify
    Does not tell us how exactly

**属性**:

- `FGameplayAttribute Attribute [The Attribute we modify or the GE we modify modifies.]`
- `FGameplayModEvaluationChannelSettings EvaluationChannelSettings [Evaluation channel settings of the modifier]`
- `FGameplayEffectModifierMagnitude ModifierMagnitude [Magnitude of the modifier]`
- `EGameplayModOp ModifierOp [The numeric operation of this modifier: Override, Add, Multiply, etc
When multiple modifiers aggregate together, the equation is:
((BaseValue + AddBase) * MultiplyAdditive / DivideAdditive * MultiplyCompound) + AddFinal]`
- `FGameplayTagRequirements SourceTags []`
- `FGameplayTagRequirements TargetTags []`


**方法**:

- `FGameplayModifierInfo& opAssign(FGameplayModifierInfo Other)`

---

