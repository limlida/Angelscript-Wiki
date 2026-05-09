### FGameplayModifierEvaluatedData


Data that describes what happened in an attribute modification. This is passed to ability set callbacks

**方法**:

- `FGameplayAttribute GetAttribute() const`
- `FActiveGameplayEffectHandle GetHandle() const`
- `bool GetIsValid() const`
- `float32 GetMagnitude() const`
- `EGameplayModOp GetModifierOp() const`
- `SetAttribute(FGameplayAttribute NewValue)`
- `SetHandle(FActiveGameplayEffectHandle NewValue)`
- `SetIsValid(bool NewValue)`
- `SetMagnitude(float32 NewValue)`
- `SetModifierOp(EGameplayModOp NewValue)`
- `FString ToSimpleString() const`
- `FGameplayModifierEvaluatedData& opAssign(FGameplayModifierEvaluatedData Other)`

---

