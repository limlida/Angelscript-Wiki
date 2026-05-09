### FAngelscriptAttributeChangedData


The RegisterAttributeChangedCallback functions use this as their parameter, not the wrapped one!
Since no type checking occurs for delegates, this still works as the base offset of the wrapper and the wrapped are the same.

**方法**:

- `FGameplayEffectSpec GetEffectSpec(bool& bIsValid) const`
- `FGameplayAttribute GetGameplayAttribute() const`
- `FGameplayModifierEvaluatedData GetGameplayModifierEvaluatedData(bool& bIsValid) const`
- `float32 GetNewValue() const`
- `float32 GetOldValue() const`
- `UAbilitySystemComponent GetTargetAbilitySystemComponent() const`
- `FAngelscriptAttributeChangedData& opAssign(FAngelscriptAttributeChangedData Other)`

---

