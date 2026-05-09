### FGameplayAbilitySpecDef


This is data that can be used to create an FGameplayAbilitySpec. Has some data that is only relevant when granted by a GameplayEffect

**属性**:

- `TSubclassOf<UGameplayAbility> Ability [What ability to grant]`
- `int InputID [Input ID to bind this ability to]`
- `FScalableFloat LevelScalableFloat [What level to grant this ability at]`
- `EGameplayEffectGrantedAbilityRemovePolicy RemovalPolicy [What will remove this ability later]`


**方法**:

- `FGameplayAbilitySpecDef& opAssign(FGameplayAbilitySpecDef Other)`

---

