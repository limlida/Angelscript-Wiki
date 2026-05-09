### UGameplayAbilitiesDeveloperSettings


Expose Global Gameplay Ability Settings in an easy to understand Developer Settings interface (usable through the Editor's Project Settings).
This the preferred way to configure the config variables previously found in AbilitySystemGlobals.  Projects may still opt to override the
AbilitySystemGlobals class with their own customized class to modify Gameplay Ability functionality across their project.

**属性**:

- `FSoftClassPath AbilitySystemGlobalsClassName [The global ability system class to use]`
- `FGameplayTag ActivateFailCanActivateAbilityTag [TryActive failed due to GameplayAbility's CanActivateAbility function (Blueprint or Native)]`
- `FGameplayTag ActivateFailCooldownTag [TryActivate failed due to being on cooldown]`
- `FGameplayTag ActivateFailCostTag [TryActivate failed due to not being able to spend costs]`
- `FGameplayTag ActivateFailNetworkingTag [Failed to activate due to invalid networking settings, this is designer error]`
- `FGameplayTag ActivateFailTagsBlockedTag [TryActivate failed due to being blocked by other abilities]`
- `FGameplayTag ActivateFailTagsMissingTag [TryActivate failed due to missing required tags]`
- `EGameplayModEvaluationChannel DefaultGameplayModEvaluationChannel [The default mod evaluation channel for the game]`
- `TArray<FString> GameplayCueNotifyPaths [Look in these paths for GameplayCueNotifies. These are your "always loaded" set.]`
- `FName GameplayModEvaluationChannelAliases [Game-specified named aliases for gameplay mod evaluation channels; Only those with valid aliases are eligible to be used in a game (except Channel0, which is always valid)]`
- `FSoftObjectPath GameplayTagResponseTableName [The class to instantiate as the GameplayTagResponseTable.]`
- `FSoftObjectPath GlobalAttributeMetaDataTableName [Holds information about the valid attributes' min and max values and stacking rules]`
- `TArray<FSoftObjectPath> GlobalAttributeSetDefaultsTableNames [Array of curve table names to use for default values for attribute sets, keyed off of Name/Levels]`
- `FSoftObjectPath GlobalCurveTableName [Name of global curve table to use as the default for scalable floats, etc.]`
- `FSoftClassPath GlobalGameplayCueManagerClass [Class reference to gameplay cue manager. Use this if you want to just instantiate a class for your gameplay cue manager without having to create an asset.]`
- `FSoftObjectPath GlobalGameplayCueManagerName [Class reference to gameplay cue manager. Use this if you want to just instantiate a class for your gameplay cue manager without having to create an asset.]`
- `int MinimalReplicationTagCountBits [How many bits to use for "number of tags" in FMinimalReplicationTagCountMap::NetSerialize.]`
- `bool PredictTargetGameplayEffects [Set to true if you want clients to try to predict gameplay effects done to targets. If false it will only predict self effects]`
- `bool ReplicateActivationOwnedTags [Set to true if you want tags granted to owners from ability activations to be replicated. If false, ActivationOwnedTags are only applied locally.
This should only be disabled for legacy game code that depends on non-replication of ActivationOwnedTags.]`
- `bool bAllowGameplayModEvaluationChannels [Whether the game should allow the usage of gameplay mod evaluation channels or not]`
- `bool bUseDebugTargetFromHud [Set to true if you want the "ShowDebug AbilitySystem" cheat to use the hud's debug target instead of the ability system's debug target.]`

---

