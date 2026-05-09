### ANarrativeASCActor


Basic actor that comes with an Ability System Comp and some attributes.

Added mostly for testing purposes, however would be useful for perhaps an attack dummy etc.

**属性**:

- `UNarrativeAbilitySystemComponent AbilitySystemComponent`
- `UNarrativeAttributeSetBase AttributeSetBase`
- `TSubclassOf<UGameplayEffect> DefaultAttributes [Default attributes to apply to the actor - we can probably move this to the ASC itself.]`
- `int Level [The level to assign to the ASC.]`


**方法**:

- `HandleDeath(AActor KilledActor, UNarrativeAbilitySystemComponent KilledActorASC)`
- `InitializeAttributes()`

---

