### FComboGraphGameplayEffectContainer


Struct defining a list of gameplay effects, a tag, and targeting info

These containers are defined statically in blueprints or assets and then turn into Specs at runtime

**属性**:

- `FGameplayTag SetByCallerDataTag [UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = GameplayEffectContainer, meta = (EditCondition = "bUseSetByCallerMagnitude"))
FGameplayTag SetByCallerDataTag;

UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = GameplayEffectContainer, meta = (EditCondition = "bUseSetByCallerMagnitude"))
float SetByCallerMagnitude = 1.0f;]`
- `float32 SetByCallerMagnitude`
- `TArray<TSubclassOf<UGameplayEffect>> TargetGameplayEffectClasses [List of gameplay effects to apply to the targets]`
- `bool bUseSetByCallerMagnitude`


**方法**:

- `FComboGraphGameplayEffectContainer& opAssign(FComboGraphGameplayEffectContainer Other)`

---

