### FGameplayEffectSpecHandle


Allows blueprints to generate a GameplayEffectSpec once and then reference it by handle, to apply it multiple times/multiple targets.

**方法**:

- `AddDynamicAssetTag(FGameplayTag TagToAdd)`
- `AddDynamicAssetTags(FGameplayTagContainer TagsToAdd)`
- `FGameplayEffectSpec& GetSpec()`
- `FGameplayEffectSpec GetSpec() const`
- `bool IsValid() const`
- `FGameplayEffectSpecHandle& opAssign(FGameplayEffectSpecHandle Other)`

---

