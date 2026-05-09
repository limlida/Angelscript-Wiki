### UNarrativeGameplayAbility


The base class for all abilities in the Narrative pro toolkit.

**属性**:

- `ANarrativeCharacter CharacterOwner []`
- `FGameplayTag InputTag [When we grant a set of abilities to the player, this is the input this ability will map to.]`
- `bool bActivateAbilityOnGranted [Tells an ability to activate immediately when its granted]`


**方法**:

- `UWeaponItem GetOwnerEquippedWeapon(bool bMainhand = true) const`
- `AController GetOwningController() const`
- `ANarrativeCharacter GetOwningNarrativeCharacter() const`
- `ANarrativeCharacterVisual GetOwningNarrativeCharacterVisual() const`
- `bool IsBot() const`  
  True if this ability is being ran by a bot

---

