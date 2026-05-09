### UNarrativeAbilitySystemComponent


Custom Ability system component for Narrative pro. Has ISavableComponent for saving attributes.

**属性**:

- `float32 AttackPriority [NPCs will use this value when they decide whether they should attack us or not. Higher priority people are attacked first]`
- `TArray<FGameplayAttribute> AttributesToSave [This defines the attributes that should be saved to disk]`
- `int NumAttackTokens [ATTACK TOKENS - maintained really just on the server, clients don't need to worry about these]`
- `FOnDamagedBy OnDamagedBy [Any ASC owner wishing to do something OnDamagedby should bind to this - it fires on server and all clients when the ASC is damaged]`
- `FOnDealtDamage OnDealtDamage [Any ASC owner wishing to do something OnDamage should bind to this - it fires on server and all clients when the ASC dies.]`
- `FOnDied OnDied [Any ASC owner wishing to do something OnDeath should bind to this - it fires on server and all clients when the ASC dies.]`
- `FOnHealedBy OnHealedBy [Any ASC owner wishing to do something OnHeal should bind to this - it fires on server and all clients when the ASC dies.]`
- `bool bIsDead []`


**方法**:

- `AbilityInputTagPressed(FGameplayTag InputTag)`  
  Called when ability input tags are pressed. BP callable incase BP needs to manually send one of these.
- `AbilityInputTagReleased(FGameplayTag InputTag)`
- `FActiveGameplayEffectHandle AddDynamicTagsGameplayEffect(FGameplayTagContainer TagsToAdd)`  
  Cleaner way to add some tags to the player that can be removed later. We opt for this over adding loose tags.
- `TArray<FActiveGameplayEffectHandle> ApplyGameplayEffectSpecToTargetData(FGameplayEffectSpecHandle SpecHandle, FGameplayAbilityTargetDataHandle TargetData)`  
  By default GAS only lets you do this inside a gameplay ability, but we often need damage to happen AFTER the ability ends, because we need to end the
       ability to free up the player for another attack. So for projectiles we expose this function to let those damage the target AFTER ability ends.
       Requires Authority as obviously we dont have a prediction key to apply.
- `FindAbilitiesWithTag(FGameplayTag InputTag, TArray<FGameplayAbilitySpecHandle>& OutAbilitySpecs)`
- `AActor GetAvatarOwner() const`  
  Get the owning avatar - UE doesn't expose this to BP in base ASC.
- `float32 GetBotAttackFrequency(FGameplayTag InputTag)`  
  Get the frequency a given attack should fire off at, provided we have one. Used for bots. InputTag must have a combat ability on it. IE Input.Attack, AltAttack, etc.
- `float32 GetBotAttackRange(FGameplayTag InputTag)`  
  Get the range a given attack should cover, Used for bots. InputTag must have a combat ability on it. IE Input.Attack, AltAttack, etc.
- `ANarrativeCharacter GetCharacterOwner() const`  
  Get the owning narrative char.
- `bool IsDead() const`

---

