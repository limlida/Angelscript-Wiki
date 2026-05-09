### UGameplayEffectItem


A "consumable" item that applies the selected gameplay effect to the user when consumed. Great for potions, food, bandages, etc. Can technically be non-consumable via unchecking consume on use if you want a re-usable item that applies a GE

**属性**:

- `TSubclassOf<UGameplayEffect> GameplayEffectClass [Default attributes for a character for initializing on spawn/respawn.
This is an instant GE that overrides the values for attributes that get reset on spawn/respawn.]`
- `TMap<FGameplayTag,float32> SetByCallerValues [A list of all the set by caller tags, along with the values we should set them to.]`

---

