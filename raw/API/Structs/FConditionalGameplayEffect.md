### FConditionalGameplayEffect


Struct for gameplay effects that apply only if another gameplay effect (or execution) was successfully applied.

**属性**:

- `TSubclassOf<UGameplayEffect> EffectClass [gameplay effect that will be applied to the target]`
- `FGameplayTagContainer RequiredSourceTags [Tags that the source must have for this GE to apply.  If this is blank, then there are no requirements to apply the EffectClass.]`


**方法**:

- `FConditionalGameplayEffect& opAssign(FConditionalGameplayEffect Other)`

---

