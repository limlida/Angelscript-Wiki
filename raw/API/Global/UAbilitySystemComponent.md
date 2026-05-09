### UAbilitySystemComponent


The core ActorComponent for interfacing with the GameplayAbilities System

**属性**:

- `FGameplayAbilitySpecContainer ActivatableAbilities [The abilities we can activate.
        -This will include CDOs for non instanced abilities and per-execution instanced abilities.
        -Actor-instanced abilities will be the actual instance (not CDO)

This array is not vital for things to work. It is a convenience thing for 'giving abilities to the actor'. But abilities could also work on things
without an AbilitySystemComponent. For example an ability could be written to execute on a StaticMeshActor. As long as the ability doesn't require
instancing or anything else that the AbilitySystemComponent would provide, then it doesn't need the component to function.]`
- `FName AffectedAnimInstanceTag [The linked Anim Instance that this component will play montages in. Use NAME_None for the main anim instance.]`
- `TArray<FAttributeDefaults> DefaultStartingData []`


**方法**:

- `CancelAbilities(FGameplayTagContainer WithTags = FGameplayTagContainer ( ), FGameplayTagContainer WithoutTags = FGameplayTagContainer ( ), UGameplayAbility Ignore = nullptr)`
- `FActiveGameplayEffectHandle ApplyGameplayEffectSpecToSelf(FGameplayEffectSpecHandle SpecHandle)`  
  Applies a previously created gameplay effect spec to this component
- `FActiveGameplayEffectHandle ApplyGameplayEffectSpecToTarget(FGameplayEffectSpecHandle SpecHandle, UAbilitySystemComponent Target)`  
  Applies a previously created gameplay effect spec to a target
- `FActiveGameplayEffectHandle ApplyGameplayEffectToSelf(TSubclassOf<UGameplayEffect> GameplayEffectClass, float32 Level, FGameplayEffectContextHandle EffectContext)`  
  Apply a gameplay effect to self
- `FActiveGameplayEffectHandle ApplyGameplayEffectToTarget(TSubclassOf<UGameplayEffect> GameplayEffectClass, UAbilitySystemComponent Target, float32 Level, FGameplayEffectContextHandle Context)`  
  Apply a gameplay effect to passed in target
- `ClearAbility(FGameplayAbilitySpecHandle Handle)`  
  Removes the specified ability.
This will be ignored if the actor is not authoritative.

@param Handle Ability Spec Handle of the ability we want to remove
- `ClearAllAbilities()`  
  Wipes all 'given' abilities. This will be ignored if the actor is not authoritative.
- `ClearAllAbilitiesWithInputID(int InputID = 0)`  
  Clears all abilities bound to a given Input ID
This will be ignored if the actor is not authoritative

@param InputID The numeric Input ID of the abilities to remove
- `ClientActivateAbilityFailed(FGameplayAbilitySpecHandle AbilityToActivate, int16 PredictionKey)`
- `ClientCancelAbility(FGameplayAbilitySpecHandle AbilityToCancel, FGameplayAbilityActivationInfo ActivationInfo)`
- `ClientEndAbility(FGameplayAbilitySpecHandle AbilityToEnd, FGameplayAbilityActivationInfo ActivationInfo)`
- `ClientPrintDebug_Response(TArray<FString> Strings, int GameFlags)`
- `ClientTryActivateAbility(FGameplayAbilitySpecHandle AbilityToActivate)`
- `FindAllAbilitiesMatchingQuery(TArray<FGameplayAbilitySpecHandle>& OutAbilityHandles, FGameplayTagQuery Query) const`  
  Returns an array with all abilities that match the provided Gameplay Tag Query

@param OutAbilityHandles This array will be filled with matching Ability Spec Handles
@param Query Gameplay Tag Query to match
- `FindAllAbilitiesWithInputID(TArray<FGameplayAbilitySpecHandle>& OutAbilityHandles, int InputID = 0) const`  
  Returns an array with all abilities bound to an Input ID value

@param OutAbilityHandles This array will be filled with matching Ability Spec Handles
@param InputID The Input ID to match
- `FindAllAbilitiesWithTags(TArray<FGameplayAbilitySpecHandle>& OutAbilityHandles, FGameplayTagContainer Tags, bool bExactMatch = true) const`  
  Returns an array with all abilities that match the provided tags

@param OutAbilityHandles This array will be filled with matching Ability Spec Handles
@param Tags Gameplay Tags to match
@param bExactMatch If true, tags must be matched exactly. Otherwise, abilities matching any of the tags will be returned
- `TArray<FActiveGameplayEffectHandle> GetActiveEffects(FGameplayEffectQuery Query) const`  
  Returns list of active effects, for a query
- `TArray<FActiveGameplayEffectHandle> GetActiveEffectsWithAllTags(FGameplayTagContainer Tags) const`  
  Returns list of active effects that have all of the passed in tags
- `GetAllAbilities(TArray<FGameplayAbilitySpecHandle>& OutAbilityHandles) const`  
  Returns an array with all granted ability handles
NOTE: currently this doesn't include abilities that are mid-activation

@param OutAbilityHandles This array will be filled with the granted Ability Spec Handles
- `GetAllAttributes(TArray<FGameplayAttribute>& OutAttributes)`  
  Returns a list of all attributes for this abilty system component
- `const UAttributeSet GetAttributeSet(TSubclassOf<UAttributeSet> AttributeSetClass) const`  
  Returns a reference to the Attribute Set instance, if one exists in this component

@param AttributeSetClass The type of attribute set to look for
@param bFound Set to true if an instance of the Attribute Set exists
- `float32 GetGameplayAttributeValue(FGameplayAttribute Attribute, bool& bFound) const`  
  Returns the current value of the given gameplay attribute, or zero if the attribute is not found.
NOTE: This doesn't take predicted gameplay effect modifiers into consideration, so the value may not be accurate on clients at all times.

@param Attribute The gameplay attribute to query
@param bFound Set to true if the attribute exists in this component
- `int GetGameplayEffectCount(TSubclassOf<UGameplayEffect> SourceGameplayEffect, UAbilitySystemComponent OptionalInstigatorFilterComponent, bool bEnforceOnGoingCheck = true) const`  
  Get the count of the specified source effect on the ability system component. For non-stacking effects, this is the sum of all active instances.
For stacking effects, this is the sum of all valid stack counts. If an instigator is specified, only effects from that instigator are counted.

@param SourceGameplayEffect                                  Effect to get the count of
@param OptionalInstigatorFilterComponent             If specified, only count effects applied by this ability system component

@return Count of the specified source effect
- `int GetGameplayEffectCount_IfLoaded(TSoftClassPtr<UGameplayEffect> SoftSourceGameplayEffect, UAbilitySystemComponent OptionalInstigatorFilterComponent, bool bEnforceOnGoingCheck = true) const`  
  Get the count of the specified source effect on the ability system component. For non-stacking effects, this is the sum of all active instances.
For stacking effects, this is the sum of all valid stack counts. If an instigator is specified, only effects from that instigator are counted.

@param SoftSourceGameplayEffect                              Effect to get the count of. If this is not currently loaded, the count is 0
@param OptionalInstigatorFilterComponent             If specified, only count effects applied by this ability system component

@return Count of the specified source effect
- `float32 GetGameplayEffectMagnitude(FActiveGameplayEffectHandle Handle, FGameplayAttribute Attribute) const`  
  Raw accessor to ask the magnitude of a gameplay effect, not necessarily always correct. How should outside code (UI, etc) ask things like 'how much is this gameplay effect modifying my damage by'
(most likely we want to catch this on the backend - when damage is applied we can get a full dump/history of how the number got to where it is. But still we may need polling methods like below (how much would my damage be)
- `int GetGameplayTagCount(FGameplayTag GameplayTag) const`  
  Returns the current count of the given gameplay tag.
This includes both loose tags, and tags granted by gameplay effects and abilities.
This function can be called on the client, but it may not display the most current count on the server.

@param GameplayTag The gameplay tag to query
- `bool GetUserAbilityActivationInhibited() const`  
  This is meant to be used to inhibit activating an ability from an input perspective. (E.g., the menu is pulled up, another game mechanism is consuming all input, etc)
This should only be called on locally owned players.
This should not be used to game mechanics like silences or disables. Those should be done through gameplay effects.
- `InputCancel()`  
  Sends a local player Input Cancel event, notifying abilities
- `InputConfirm()`  
  Sends a local player Input Confirm event, notifying abilities
- `bool IsGameplayCueActive(FGameplayTag GameplayCueTag) const`  
  Allows polling to see if a GameplayCue is active. We expect most GameplayCue handling to be event based, but some cases we may need to check if a GameplayCue is active (Animation Blueprint for example)
- `FGameplayAbilitySpecHandle GiveAbility(TSubclassOf<UGameplayAbility> AbilityClass, int Level = 0, int InputID = - 1)`  
  Grants a Gameplay Ability and returns its handle.
This will be ignored if the actor is not authoritative.

@param AbilityClass Type of ability to grant
@param Level Level to grant the ability at
@param InputID Input ID value to bind ability activation to.
- `FGameplayAbilitySpecHandle GiveAbilityAndActivateOnce(TSubclassOf<UGameplayAbility> AbilityClass, int Level = 0, int InputID = - 1)`  
  Grants a Gameplay Ability, activates it once, and removes it.
This will be ignored if the actor is not authoritative.

@param AbilityClass Type of ability to grant
@param Level Level to grant the ability at
@param InputID Input ID value to bind ability activation to.
- `InitStats(TSubclassOf<UAttributeSet> Attributes, const UDataTable DataTable)`
- `FGameplayEffectContextHandle MakeEffectContext() const`  
  Create an EffectContext for the owner of this AbilitySystemComponent
- `FGameplayEffectSpecHandle MakeOutgoingSpec(TSubclassOf<UGameplayEffect> GameplayEffectClass, float32 Level, FGameplayEffectContextHandle Context) const`  
  Get an outgoing GameplayEffectSpec that is ready to be applied to other things.
- `PressInputID(int InputID)`  
  * Sends a local player Input Pressed event with the provided Input ID, notifying any bound abilities
*
* @param InputID The Input ID to match
- `ReleaseInputID(int InputID)`  
  Sends a local player Input Released event with the provided Input ID, notifying any bound abilities
@param InputID The Input ID to match
- `int RemoveActiveEffectsWithAppliedTags(FGameplayTagContainer Tags)`  
  Removes all active effects that apply any of the tags in Tags
- `int RemoveActiveEffectsWithGrantedTags(FGameplayTagContainer Tags)`  
  Removes all active effects that grant any of the tags in Tags
- `int RemoveActiveEffectsWithSourceTags(FGameplayTagContainer Tags)`  
  Removes all active effects with captured source tags that contain any of the tags in Tags
- `int RemoveActiveEffectsWithTags(FGameplayTagContainer Tags)`  
  Removes all active effects that contain any of the tags in Tags
- `bool RemoveActiveGameplayEffect(FActiveGameplayEffectHandle Handle, int StacksToRemove = - 1)`  
  Removes the specified GameplayEffect by Handle.
@param Handle                                                         The handle of the gameplay effect to remove
@param StacksToRemove                                         Number of stacks to remove, -1 means remove all

@return Whether the effect was successfully removed.
- `RemoveActiveGameplayEffectBySourceEffect(TSubclassOf<UGameplayEffect> GameplayEffect, UAbilitySystemComponent InstigatorAbilitySystemComponent, int StacksToRemove = - 1)`  
  Remove active gameplay effects whose backing definition are the specified gameplay effect class

@param GameplayEffect                                        Class of gameplay effect to remove; Does nothing if left null
@param InstigatorAbilitySystemComponent      If specified, will only remove gameplay effects applied from this instigator ability system component
@param StacksToRemove                                        Number of stacks to remove, -1 means remove all
- `ServerCancelAbility(FGameplayAbilitySpecHandle AbilityToCancel, FGameplayAbilityActivationInfo ActivationInfo)`
- `ServerCurrentMontageJumpToSectionName(UAnimSequenceBase ClientAnimation, FName SectionName)`  
  RPC function called from CurrentMontageJumpToSection, replicates to other clients
- `ServerCurrentMontageSetNextSectionName(UAnimSequenceBase ClientAnimation, float32 ClientPosition, FName SectionName, FName NextSectionName)`  
  RPC function called from CurrentMontageSetNextSectionName, replicates to other clients
- `ServerCurrentMontageSetPlayRate(UAnimSequenceBase ClientAnimation, float32 InPlayRate)`  
  RPC function called from CurrentMontageSetPlayRate, replicates to other clients
- `ServerPrintDebug_Request()`  
  Ask the server to send ability system debug information back to the client, via ClientPrintDebug_Response
- `ServerPrintDebug_RequestWithStrings(TArray<FString> Strings)`  
  Same as ServerPrintDebug_Request but this includes the client debug strings so that the server can embed them in replays
- `ServerSetInputPressed(FGameplayAbilitySpecHandle AbilityHandle)`  
  Direct Input state replication. These will be called if bReplicateInputDirectly is true on the ability and is generally not a good thing to use. (Instead, prefer to use Generic Replicated Events).
- `ServerSetInputReleased(FGameplayAbilitySpecHandle AbilityHandle)`
- `SetActiveGameplayEffectLevel(FActiveGameplayEffectHandle ActiveHandle, int NewLevel)`  
  Updates the level of an already applied gameplay effect. The intention is that this is 'seemless' and doesnt behave like removing/reapplying
- `SetActiveGameplayEffectLevelUsingQuery(FGameplayEffectQuery Query, int NewLevel)`  
  Updates the level of an already applied gameplay effect. The intention is that this is 'seemless' and doesnt behave like removing/reapplying
- `SetUserAbilityActivationInhibited(bool NewInhibit)`  
  Disable or Enable a local user from being able to activate abilities. This should only be used for input/UI etc related inhibition. Do not use for game mechanics.
- `TargetCancel()`  
  Any active targeting actors will be stopped and canceled, not returning any targeting data
- `TargetConfirm()`  
  Any active targeting actors will be told to stop and return current targeting data
- `bool TryActivateAbilitiesByTag(FGameplayTagContainer GameplayTagContainer, bool bAllowRemoteActivation = true)`  
  Attempts to activate every gameplay ability that matches the given tag and DoesAbilitySatisfyTagRequirements().
Returns true if anything attempts to activate. Can activate more than one ability and the ability may fail later.
If bAllowRemoteActivation is true, it will remotely activate local/server abilities, if false it will only try to locally activate abilities.
- `bool TryActivateAbility(FGameplayAbilitySpecHandle AbilityToActivate, bool bAllowRemoteActivation = true)`  
  Attempts to activate the given ability, will check costs and requirements before doing so.
Returns true if it thinks it activated, but it may return false positives due to failure later in activation.
If bAllowRemoteActivation is true, it will remotely activate local/server abilities, if false it will only try to locally activate the ability
- `bool TryActivateAbilityByClass(TSubclassOf<UGameplayAbility> InAbilityToActivate, bool bAllowRemoteActivation = true)`  
  Attempts to activate the ability that is passed in. This will check costs and requirements before doing so.
Returns true if it thinks it activated, but it may return false positives due to failure later in activation.
If bAllowRemoteActivation is true, it will remotely activate local/server abilities, if false it will only try to locally activate the ability
- `UpdateActiveGameplayEffectSetByCallerMagnitude(FActiveGameplayEffectHandle ActiveHandle, FGameplayTag SetByCallerTag, float32 NewValue)`  
  Dynamically update the set-by-caller magnitude for an active gameplay effect
- `UpdateActiveGameplayEffectSetByCallerMagnitudes(FActiveGameplayEffectHandle ActiveHandle, TMap<FGameplayTag,float32> NewSetByCallerValues)`  
  Dynamically update multiple set-by-caller magnitudes for an active gameplay effect
- `AddGameplayCueWithEffectContext(FGameplayTag GameplayCueTag, FGameplayEffectContextHandle EffectContext)`
- `AddGameplayCueWithParameters(FGameplayTag GameplayCueTag, FGameplayCueParameters GameplayCueParameters)`
- `AddLooseGameplayTag(FGameplayTag GameplayTag, int Count = 1, EGameplayTagReplicationState TagRepState = EGameplayTagReplicationState :: None)`
- `AddLooseGameplayTags(FGameplayTagContainer GameplayTags, int Count = 1, EGameplayTagReplicationState TagRepState = EGameplayTagReplicationState :: None)`
- `AddSpawnedAttribute(UAttributeSet Attribute)`
- `bool AreAbilityTagsBlocked(FGameplayTagContainer Tags) const`
- `ExecuteGameplayCueWithEffectContext(FGameplayTag GameplayCueTag, FGameplayEffectContextHandle EffectContext)`
- `ExecuteGameplayCueWithParameters(FGameplayTag GameplayCueTag, FGameplayCueParameters GameplayCueParameters)`
- `bool FindAbilitySpecFromClass(TSubclassOf<UGameplayAbility> InAbilityClass, FGameplayAbilitySpec& OutSpec)`
- `bool FindAbilitySpecFromGEHandle(FActiveGameplayEffectHandle Handle, FGameplayAbilitySpec& OutSpec)`
- `bool FindAbilitySpecFromHandle(FGameplayAbilitySpecHandle Handle, FGameplayAbilitySpec& OutSpec)`
- `bool FindAbilitySpecFromInputID(int InputID, FGameplayAbilitySpec& OutSpec)`
- `GetOwnedGameplayTags(FGameplayTagContainer& TagContainer) const`
- `TArray<UAttributeSet> GetSpawnedAttributes() const`
- `FGameplayAbilitySpecHandle GiveAbility(FGameplayAbilitySpec Spec)`
- `FGameplayAbilitySpecHandle GiveAbilityAndActivateOnce(FGameplayAbilitySpec& Spec)`
- `FGameplayAbilitySpecHandle GiveAbilityAndActivateOnceWithEventData(FGameplayAbilitySpec& Spec, FGameplayEventData EventData)`
- `InitDefaultGameplayCueParameters(FGameplayCueParameters& Parameters)`
- `MarkAbilitySpecDirty(FGameplayAbilitySpec& Spec, bool bWasAddOrRemove = false)`
- `RemoveAllGameplayCues()`
- `RemoveAllSpawnedAttributes()`
- `RemoveGameplayCue(FGameplayTag GameplayCueTag)`
- `RemoveLooseGameplayTag(FGameplayTag GameplayTag, int Count = 1, EGameplayTagReplicationState TagRepState = EGameplayTagReplicationState :: None)`
- `RemoveLooseGameplayTags(FGameplayTagContainer GameplayTags, int Count = 1, EGameplayTagReplicationState TagRepState = EGameplayTagReplicationState :: None)`
- `RemoveSpawnedAttribute(UAttributeSet Attribute)`
- `SendGameplayEvent(FGameplayTag EventTag, FGameplayEventData Payload)`
- `SetLooseGameplayTagCount(FGameplayTag GameplayTag, int NewCount, EGameplayTagReplicationState TagRepState = EGameplayTagReplicationState :: None)`

---

