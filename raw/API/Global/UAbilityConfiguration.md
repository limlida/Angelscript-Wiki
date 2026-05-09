### UAbilityConfiguration


Contains some default abilities to grant, attributes, etc.

**属性**:

- `TArray<TSubclassOf<UNarrativeGameplayAbility>> DefaultAbilities [Default abilities to grant the player]`
- `TSubclassOf<UGameplayEffect> DefaultAttributes [Default attributes for a character for initializing on spawn/respawn.
This is an instant GE that overrides the values for attributes that get reset on spawn/respawn.]`
- `TArray<TSubclassOf<UGameplayEffect>> StartupEffects [These effects are only applied one time on startup]`

---

