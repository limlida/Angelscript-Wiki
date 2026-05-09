### FGameplayAbilitySpecConfig


Options on how to configure a GameplayAbilitySpec to grant an Actor

**属性**:

- `TSubclassOf<UGameplayAbility> Ability [What ability to grant]`
- `int InputID [Input ID to bind this ability to]`
- `FScalableFloat LevelScalableFloat [What level to grant this ability at]`
- `EGameplayEffectGrantedAbilityRemovePolicy RemovalPolicy [What will remove this ability later]`


**方法**:

- `FGameplayAbilitySpecConfig& opAssign(FGameplayAbilitySpecConfig Other)`

---

