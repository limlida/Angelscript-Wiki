### FNPCSpawnParams


Params for overriding the default options set up in the NPC definition.

**属性**:

- `TSoftObjectPtr<UNPCActivityConfiguration> ActivityConfiguration [The NPCs activity config.]`
- `int CharacterRandomSeed [Used if you want to manually set the characters random seed instead of having it auto-generate one.]`
- `TSoftObjectPtr<UCharacterAppearanceBase> DefaultAppearance [The characters default appearance we want to override to]`
- `FGameplayTagContainer DefaultFactions [The factions this character will be in by default - you can set the characters faction to something else later if desired.]`
- `TArray<FLootTableRoll> DefaultItemLoadout [The items we should grant the character by default.]`
- `FGameplayTagContainer DefaultOwnedTags [Add any custom tags the character needs in here, for example State.Invulnerable if you want the character to never take damage, or LockMovement to make the character locked in place.]`
- `int MaxLevel [The NPCs level will be randomized between these values.]`
- `int MinLevel [The NPCs level will be randomized between these values.]`
- `FText NPCName [The icon to use for this location]`
- `ULevelSequence OptionalIdleSequence [Optional sequence to play on the NPC whilst they are milling around. Defined as spawnparam as its more likely to be used that way rather than being tied to an NPC def.]`
- `TArray<TSoftObjectPtr<UTriggerSet>> TriggerSets [The triggers we want to use as the override]`
- `bool bOverride_ActivityConfiguration`
- `bool bOverride_CharacterRandomSeed`
- `bool bOverride_DefaultAppearance`
- `bool bOverride_DefaultFactions`
- `bool bOverride_DefaultItemLoadout`
- `bool bOverride_DefaultOwnedTags`
- `bool bOverride_LevelRange`
- `bool bOverride_NPCName`
- `bool bOverride_TriggerSets`


**方法**:

- `FNPCSpawnParams& opAssign(FNPCSpawnParams Other)`

---

