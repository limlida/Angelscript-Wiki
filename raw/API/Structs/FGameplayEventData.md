### FGameplayEventData


Metadata for a tag-based Gameplay Event, that can activate other abilities or run ability-specific logic

**属性**:

- `FGameplayEffectContextHandle ContextHandle [Polymorphic context information]`
- `float32 EventMagnitude [The magnitude of the triggering event]`
- `FGameplayTag EventTag [Tag of the event that triggered this]`
- `const AActor Instigator [The instigator of the event]`
- `FGameplayTagContainer InstigatorTags [Tags that the instigator has]`
- `const UObject OptionalObject [An optional ability-specific object to be passed though the event]`
- `const UObject OptionalObject2 [A second optional ability-specific object to be passed though the event]`
- `const AActor Target [The target of the event]`
- `FGameplayAbilityTargetDataHandle TargetData [The polymorphic target information for the event]`
- `FGameplayTagContainer TargetTags [Tags that the target has]`


**方法**:

- `FGameplayEventData& opAssign(FGameplayEventData Other)`

---

