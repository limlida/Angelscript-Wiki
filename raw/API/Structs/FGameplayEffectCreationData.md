### FGameplayEffectCreationData


**属性**:

- `FString BaseName [The default BaseName of the new asset. E.g "Damage" -> GE_Damage or GE_HeroName_AbilityName_Damage]`
- `FString MenuPath [Where to show this in the menu. Use "|" for sub categories. E.g, "Status|Hard|Stun|Root".]`
- `TSubclassOf<UGameplayEffect> ParentGameplayEffect []`


**方法**:

- `FGameplayEffectCreationData& opAssign(FGameplayEffectCreationData Other)`

---

