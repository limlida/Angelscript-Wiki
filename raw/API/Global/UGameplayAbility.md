### UGameplayAbility


Abilities define custom gameplay logic that can be activated by players or external game logic

**属性**:

- `FGameplayTagContainer AbilityTags []`
- `TArray<FAbilityTriggerData> AbilityTriggers [Triggers to determine if this ability should execute in response to an event]`
- `FGameplayTagContainer ActivationBlockedTags [This ability is blocked if the activating actor/component has any of these tags]`
- `FGameplayTagContainer ActivationOwnedTags [Tags to apply to activating owner while this ability is active. These are replicated if ReplicateActivationOwnedTags is enabled in AbilitySystemGlobals.]`
- `FGameplayTagContainer ActivationRequiredTags [This ability can only be activated if the activating actor/component has all of these tags]`
- `FGameplayTagContainer BlockAbilitiesWithTag [Abilities with these tags are blocked while this ability is active]`
- `FGameplayTagContainer CancelAbilitiesWithTag [Abilities with these tags are cancelled when this ability is executed]`
- `TSubclassOf<UGameplayEffect> CooldownGameplayEffectClass [This GameplayEffect represents the cooldown. It will be applied when the ability is committed and the ability cannot be used again until it is expired.]`
- `TSubclassOf<UGameplayEffect> CostGameplayEffectClass [This GameplayEffect represents the cost (mana, stamina, etc) of the ability. It will be applied when the ability is committed.]`
- `FGameplayAbilityActivationInfo CurrentActivationInfo [This is information specific to this instance of the ability. E.g, whether it is predicting, authoring, confirmed, etc.]`
- `FGameplayEventData CurrentEventData [Information specific to this instance of the ability, if it was activated by an event]`
- `EGameplayAbilityInstancingPolicy InstancingPolicy [How the ability is instanced when executed. This limits what an ability can do in its implementation.]`
- `EGameplayAbilityNetExecutionPolicy NetExecutionPolicy [How does an ability execute on the network. Does a client "ask and predict", "ask and wait", "don't ask (just do it)".]`
- `EGameplayAbilityNetSecurityPolicy NetSecurityPolicy [What protections does this ability have? Should the client be allowed to request changes to the execution of the ability?]`
- `EGameplayAbilityReplicationPolicy ReplicationPolicy [How an ability replicates state/events to everyone on the network. Replication is not required for NetExecutionPolicy.]`
- `FGameplayTagContainer SourceBlockedTags [This ability is blocked if the source actor/component has any of these tags]`
- `FGameplayTagContainer SourceRequiredTags [This ability can only be activated if the source actor/component has all of these tags]`
- `FGameplayTagContainer TargetBlockedTags [This ability is blocked if the target actor/component has any of these tags]`
- `FGameplayTagContainer TargetRequiredTags [This ability can only be activated if the target actor/component has all of these tags]`
- `bool bReplicateInputDirectly [If true, this ability will always replicate input press/release events to the server.]`
- `bool bRetriggerInstancedAbility [if true, and trying to activate an already active instanced ability, end it and re-trigger it.]`
- `bool bServerRespectsRemoteAbilityCancellation [If this is set, the server-side version of the ability can be canceled by the client-side version. The client-side version can always be canceled by the server.]`


**方法**:

- `BP_SetCanBeCanceled(bool bCanBeCanceled)`
- `FActiveGameplayEffectHandle ApplyGameplayEffectToOwner(TSubclassOf<UGameplayEffect> GameplayEffectClass, int GameplayEffectLevel = 1, int Stacks = 1)`  
  Apply a gameplay effect to the owner of this ability
- `TArray<FActiveGameplayEffectHandle> ApplyGameplayEffectToTarget(FGameplayAbilityTargetDataHandle TargetData, TSubclassOf<UGameplayEffect> GameplayEffectClass, int GameplayEffectLevel = 1, int Stacks = 1)`  
  Apply a gameplay effect to a Target
- `RemoveGameplayEffectFromOwnerWithAssetTags(FGameplayTagContainer WithAssetTags, int StacksToRemove = - 1)`  
  Removes GameplayEffects from owner which match the given asset level tags
- `RemoveGameplayEffectFromOwnerWithGrantedTags(FGameplayTagContainer WithGrantedTags, int StacksToRemove = - 1)`  
  Removes GameplayEffects from owner which grant the given tags
- `RemoveGameplayEffectFromOwnerWithHandle(FActiveGameplayEffectHandle Handle, int StacksToRemove = - 1)`  
  Removes GameplayEffect from owner that match the given handle
- `CancelTaskByInstanceName(FName InstanceName)`  
  Add any task with this instance name to a list to be canceled (not ended) next frame.  See also EndTaskByInstanceName.
- `ConfirmTaskByInstanceName(FName InstanceName, bool bEndTask)`  
  Finds all currently active tasks named InstanceName and confirms them. What this means depends on the individual task. By default, this does nothing other than ending if bEndTask is true.
- `EndAbilityState(FName OptionalStateNameToEnd)`  
  Ends any active ability state task with the given name. If name is 'None' all active states will be ended (in an arbitrary order).
- `EndTaskByInstanceName(FName InstanceName)`  
  Add any task with this instance name to a list to be ended (not canceled) next frame.  See also CancelTaskByInstanceName.
- `int GetAbilityLevel() const`  
  Returns current level of the Ability
- `int GetAbilityLevel_BP(FGameplayAbilitySpecHandle Handle, FGameplayAbilityActorInfo ActorInfo) const`  
  Returns current ability level for non instanced abilities. You must call this version in these contexts!
- `UAbilitySystemComponent GetAbilitySystemComponentFromActorInfo() const`  
  Returns the AbilitySystemComponent that is activating this ability
- `FGameplayAbilityActorInfo GetActorInfo() const`  
  Returns the actor info associated with this ability, has cached pointers to useful objects
- `AActor GetAvatarActorFromActorInfo() const`  
  Returns the physical actor that is executing this ability. May be null
- `FGameplayEffectContextHandle GetContextFromOwner(FGameplayAbilityTargetDataHandle OptionalTargetData) const`  
  Generates a GameplayEffectContextHandle from our owner and an optional TargetData.
- `float32 GetCooldownTimeRemaining() const`  
  Returns the time in seconds remaining on the currently active cooldown.
- `UAnimMontage GetCurrentMontage() const`  
  Returns the currently playing montage for this ability, if any
- `UObject GetCurrentSourceObject() const`  
  Retrieves the SourceObject associated with this ability. Can only be called on instanced abilities.
- `FGameplayEffectContextHandle GetGrantedByEffectContext() const`  
  Retrieves the EffectContext of the GameplayEffect that granted this ability. Can only be called on instanced abilities.
- `AActor GetOwningActorFromActorInfo() const`  
  Returns the actor that owns this ability, which may not have a physical location
- `USkeletalMeshComponent GetOwningComponentFromActorInfo() const`  
  Convenience method for abilities to get skeletal mesh component - useful for aiming abilities
- `UObject GetSourceObject_BP(FGameplayAbilitySpecHandle Handle, FGameplayAbilityActorInfo ActorInfo) const`  
  Retrieves the SourceObject associated with this ability. Callable on non instanced
- `InvalidateClientPredictionKey() const`  
  Invalidates the current prediction key. This should be used in cases where there is a valid prediction window, but the server is doing logic that only it can do, and afterwards performs an action that the client could predict (had the client been able to run the server-only code prior).
This returns instantly and has no other side effects other than clearing the current prediction key.
- `bool IsLocallyControlled() const`  
  True if the owning actor is locally controlled, true in single player
- `ActivateAbility()`  
  The main function that defines what an ability does.
 -Child classes will want to override this
 -This function graph should call CommitAbility
 -This function graph should call EndAbility

 Latent/async actions are ok in this graph. Note that Commit and EndAbility calling requirements speak to the K2_ActivateAbility graph.
 In C++, the call to K2_ActivateAbility() may return without CommitAbility or EndAbility having been called. But it is expected that this
 will only occur when latent/async actions are pending. When K2_ActivateAbility logically finishes, then we will expect Commit/End to have been called.
- `ActivateAbilityFromEvent(FGameplayEventData EventData)`
- `AddGameplayCue(FGameplayTag GameplayCueTag, FGameplayEffectContextHandle Context, bool bRemoveOnAbilityEnd = true)`  
  Adds a persistent gameplay cue to the ability owner. Optionally will remove if ability ends
- `AddGameplayCueWithParams(FGameplayTag GameplayCueTag, FGameplayCueParameters GameplayCueParameter, bool bRemoveOnAbilityEnd = true)`  
  Adds a persistent gameplay cue to the ability owner. Optionally will remove if ability ends
- `FActiveGameplayEffectHandle ApplyGameplayEffectSpecToOwner(FGameplayEffectSpecHandle EffectSpecHandle)`  
  Apply a previously created gameplay effect spec to the owner of this ability
- `TArray<FActiveGameplayEffectHandle> ApplyGameplayEffectSpecToTarget(FGameplayEffectSpecHandle EffectSpecHandle, FGameplayAbilityTargetDataHandle TargetData)`  
  Apply a previously created gameplay effect spec to a target
- `bool CanActivateAbility(FGameplayAbilityActorInfo ActorInfo, FGameplayAbilitySpecHandle Handle, FGameplayTagContainer& RelevantTags) const`  
  Returns true if this ability can be activated right now. Has no side effects
- `CancelAbility()`  
  Call from Blueprint to cancel the ability naturally
- `bool CheckAbilityCooldown()`  
  Checks the ability's cooldown, but does not apply it.
- `bool CheckAbilityCost()`  
  Checks the ability's cost, but does not apply it.
- `bool CommitAbility()`  
  Attempts to commit the ability (spend resources, etc). This our last chance to fail. Child classes that override ActivateAbility must call this themselves!
- `bool CommitAbilityCooldown(bool BroadcastCommitEvent = false, bool ForceCooldown = false)`  
  Attempts to commit the ability's cooldown only. If BroadcastCommitEvent is true, it will broadcast the commit event that tasks like WaitAbilityCommit are listening for.
- `bool CommitAbilityCost(bool BroadcastCommitEvent = false)`  
  Attempts to commit the ability's cost only. If BroadcastCommitEvent is true, it will broadcast the commit event that tasks like WaitAbilityCommit are listening for.
- `CommitExecute()`  
  BP event called from CommitAbility
- `EndAbility()`  
  Call from blueprints to forcibly end the ability without canceling it. This will replicate the end ability to the client or server which can interrupt tasks
- `EndAbilityLocally()`  
  Call from blueprints to end the ability naturally. This will only end predicted abilities locally, allowing it end naturally on the client or server
- `ExecuteGameplayCue(FGameplayTag GameplayCueTag, FGameplayEffectContextHandle Context)`  
  Invoke a gameplay cue on the ability owner
- `ExecuteGameplayCueWithParams(FGameplayTag GameplayCueTag, FGameplayCueParameters GameplayCueParameters)`  
  Invoke a gameplay cue on the ability owner, with extra parameters
- `bool HasAuthority() const`
- `OnEndAbility(bool bWasCancelled)`  
  Blueprint event, will be called if an ability ends normally or abnormally
- `RemoveGameplayCue(FGameplayTag GameplayCueTag)`  
  Removes a persistent gameplay cue from the ability owner
- `bool ShouldAbilityRespondToEvent(FGameplayAbilityActorInfo ActorInfo, FGameplayEventData Payload) const`  
  Returns true if this ability can be activated right now. Has no side effects
- `FGameplayEffectSpecHandle MakeOutgoingGameplayEffectSpec(TSubclassOf<UGameplayEffect> GameplayEffectClass, float32 Level = 1.000000) const`  
  Convenience method for abilities to get outgoing gameplay effect specs (for example, to pass on to projectiles to apply to whoever they hit)
- `FGameplayAbilityTargetingLocationInfo MakeTargetLocationInfoFromOwnerActor()`  
  Creates a target location from where the owner avatar is
- `FGameplayAbilityTargetingLocationInfo MakeTargetLocationInfoFromOwnerSkeletalMeshComponent(FName SocketName)`  
  Creates a target location from a socket on the owner avatar's skeletal mesh
- `MontageJumpToSection(FName SectionName)`  
  Immediately jumps the active montage to a section
- `MontageSetNextSectionName(FName FromSectionName, FName ToSectionName)`  
  Sets pending section on active montage
- `MontageStop(float32 OverrideBlendOutTime = - 1.000000)`  
  Stops the current animation montage.

@param OverrideBlendTime If >= 0, will override the BlendOutTime parameter on the AnimMontage instance
- `RemoveGrantedByEffect()`  
  Removes the GameplayEffect that granted this ability. Can only be called on instanced abilities.
- `SendGameplayEvent(FGameplayTag EventTag, FGameplayEventData Payload)`  
  Sends a gameplay event, also creates a prediction window
- `SetCanBeCanceled(bool bCanBeCanceled)`  
  Sets whether the ability should ignore cancel requests. Only valid on instanced abilities
- `SetShouldBlockOtherAbilities(bool bShouldBlockAbilities)`  
  Sets rather ability block flags are enabled or disabled. Only valid on instanced abilities
- `UObject GetSourceObject(FGameplayAbilitySpecHandle Handle, FGameplayAbilityActorInfo ActorInfo) const`

---

