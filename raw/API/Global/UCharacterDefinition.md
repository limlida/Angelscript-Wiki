### UCharacterDefinition


Data asset containing character data - the characters default appearance, etc.

**属性**:

- `UAbilityConfiguration AbilityConfiguration [Contains some default abilities to grant, attributes, etc.]`
- `float32 AttackPriority [Bots use this in their EQS query when looking for targets. Higher values make bots more drawn to us.]`
- `TSoftObjectPtr<UCharacterAppearanceBase> DefaultAppearance [The characters default appearance]`
- `int DefaultCurrency [Default currency this character should have in their inventory]`
- `FGameplayTagContainer DefaultFactions [The factions this character will be in by default - you can set the characters faction to something else later if desired.]`
- `TArray<FLootTableRoll> DefaultItemLoadout [The items we should grant the character by default.]`
- `FGameplayTagContainer DefaultOwnedTags [Add any custom tags the character needs in here, for example State.Invulnerable if you want the character to never take damage.]`
- `TArray<TSoftObjectPtr<UTriggerSet>> TriggerSets [The triggers that should exist on this character by default.]`

---

