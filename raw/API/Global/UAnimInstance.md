### UAnimInstance


**属性**:

- `FOnAllMontageInstancesEndedMCDelegate OnAllMontageInstancesEnded [Called when all Montage instances have ended.]`
- `FOnMontageBlendedInEndedMCDelegate OnMontageBlendedIn [Called when a montage finishes blending in]`
- `FOnMontageBlendingOutStartedMCDelegate OnMontageBlendingOut [Called when a montage starts blending out, whether interrupted or finished]`
- `FOnMontageEndedMCDelegate OnMontageEnded [Called when a montage has ended, whether interrupted or finished]`
- `FOnMontageSectionChangedMCDelegate OnMontageSectionChanged [Called when a montage section changes]`
- `FOnMontageStartedMCDelegate OnMontageStarted [Called when a montage has started]`
- `ERootMotionMode RootMotionMode [Sets where this blueprint pulls Root Motion from]`
- `bool bPropagateNotifiesToLinkedInstances [Whether to propagate notifies to any linked anim instances]`
- `bool bReceiveNotifiesFromLinkedInstances [Whether to process notifies from any linked anim instances]`
- `bool bUseMainInstanceMontageEvaluationData [If true, linked instances will use the main instance's montage data. (i.e. playing a montage on a main instance will play it on the linked layer too.)]`


**方法**:

- `UAnimInstance Blueprint_GetMainAnimInstance() const`  
  Get the 'main' anim instance, i.e. the one that is hosted on the skeletal mesh component
- `float32 Blueprint_GetSlotMontageLocalWeight(FName SlotNodeName) const`  
  Get local weight of any montages this slot node is playing. If this slot is not currently playing a montage, it will return 0.
- `BlueprintBeginPlay()`  
  Executed when begin play is called on the owning component
- `BlueprintInitializeAnimation()`  
  Executed when the Animation is initialized
- `BlueprintLinkedAnimationLayersInitialized()`  
  Executed when the all Linked Animation Layers are initialized
- `BlueprintPostEvaluateAnimation()`  
  Executed after the Animation is evaluated
- `BlueprintThreadSafeUpdateAnimation(float DeltaTime)`  
  Executed when the Animation Blueprint is updated on a worker thread, just prior to graph update
- `BlueprintUpdateAnimation(float DeltaTimeX)`  
  Executed when the Animation is updated
- `float32 CalculateDirection(FVector Velocity, FRotator BaseRotation) const`
- `ClearAllTransitionEvents()`  
  Removes all queued transition requests
- `ClearMorphTargets()`  
  Clears the current morph targets.
- `ClearTransitionEvents(FName EventName)`  
  Removes all queued transition requests with the given event name
- `bool DynamicMontage_IsPlayingFrom(const UAnimSequenceBase Animation) const`  
  Returns true if there is an animation montage is currently active and playing that was created from the provided animation.
- `GetActiveCurveNames(EAnimCurveType CurveType, TArray<FName>& OutNames) const`  
  This returns last up-to-date list of active curve names
- `GetAllCurveNames(TArray<FName>& OutNames) const`  
  This returns all curve names. This is the same as calling GetActiveCurveNames with CurveType == AttributeCurve
- `const UBlendProfile GetBlendProfileByName(FName InBlendProfileName) const`  
  Returns a blend profile by name from our current skeleton. Null if not found.
- `UAnimMontage GetCurrentActiveMontage() const`  
  Get a current Active Montage in this AnimInstance.
              Note that there might be multiple Active at the same time. This will only return the first active one it finds. *
- `float32 GetCurveValue(FName CurveName) const`  
  Returns the value of a named curve.
- `bool GetCurveValueWithDefault(FName CurveName, float32 DefaultValue, float32& OutValue)`  
  Returns whether a named curve was found, its value, and a default value when it's not found.
@param        AnimInstance    The anim instance to find this curve value for.
@param        CurveName               The name of the curve.
@param        DefaultValue    Value to use when the curve is not found.
@param        OutValue                The curve's value.
- `float32 GetDeltaSeconds() const`  
  Get the current delta time
- `UAnimInstance GetLinkedAnimGraphInstanceByTag(FName InTag) const`  
  Runs through all nodes, attempting to find the first linked instance by name/tag
- `UAnimInstance GetLinkedAnimLayerInstanceByClass(TSubclassOf<UAnimInstance> InClass, bool bCheckForChildClass = false) const`  
  Gets the first layer linked instance corresponding to the specified class, optionally if bCheckForChildClass is true, it will check IsChildOf on InClass.
- `UAnimInstance GetLinkedAnimLayerInstanceByGroup(FName InGroup) const`  
  Gets the layer linked instance corresponding to the specified group
- `UAnimInstance GetLinkedAnimLayerInstanceByGroupAndClass(FName InGroup, TSubclassOf<UAnimInstance> InClass) const`  
  Gets layer linked instance that matches group and class
- `GetLinkedAnimLayerInstancesByGroup(FName InGroup, TArray<UAnimInstance>& OutLinkedInstances) const`  
  Runs through all nodes, attempting to find all distinct layer linked instances in the group
- `int GetLODLevel() const`  
  Get the 'animation' LOD level, which by default is the PredictedLODLevel of this anim instance's skeletal mesh component.
This function is used by the anim graph to determine the LOD level at which to run.
@return the current LOD level
- `AActor GetOwningActor() const`  
  Returns the owning actor of this AnimInstance
- `USkeletalMeshComponent GetOwningComponent() const`  
  Returns the skeletal mesh component that has created this AnimInstance
- `bool GetPropagateNotifiesToLinkedInstances() const`  
  Get whether to propagate notifies to any linked anim instances
- `bool GetReceiveNotifiesFromLinkedInstances() const`  
  Get whether to process notifies from any linked anim instances
- `FMarkerSyncAnimPosition GetSyncGroupPosition(FName InSyncGroupName) const`
- `bool GetTimeToClosestMarker(FName SyncGroup, FName MarkerName, float32& OutMarkerTime) const`  
  --- AI communication end ---
- `bool HasMarkerBeenHitThisFrame(FName SyncGroup, FName MarkerName) const`
- `bool IsAnyMontagePlaying() const`  
  Returns true if any montage is playing currently. Doesn't mean it's active though, it could be blending out.
- `bool IsPlayingSlotAnimation(const UAnimSequenceBase Asset, FName SlotNodeName) const`  
  Return true if it's playing the slot animation
- `bool IsSlotActive(FName SlotNodeName) const`  
  Return true if this instance has an active montage in the given slot. A UAnimMontage that is playing in the slot and blending out is not determined to be "active".
- `bool IsSyncGroupBetweenMarkers(FName InSyncGroupName, FName PreviousMarker, FName NextMarker, bool bRespectMarkerOrder = true) const`
- `bool IsUsingMainInstanceMontageEvaluationData() const`
- `LinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)`  
  Runs through all layer nodes, attempting to find layer nodes that are implemented by the specified class, then sets up a linked instance of the class for each.
Allocates one linked instance to run each of the groups specified in the class, so state is shared. If a layer is not grouped (ie. NAME_None), then state is not shared
and a separate linked instance is allocated for each layer node.
If InClass is null, then all layers are reset to their defaults.
- `LinkAnimGraphByTag(FName InTag, TSubclassOf<UAnimInstance> InClass)`  
  Runs through all nodes, attempting to find a linked instance by name/tag, then sets the class of each node if the tag matches
- `float32 Montage_GetBlendTime(const UAnimMontage Montage) const`  
  Get the current blend time of the Montage.
      If Montage reference is NULL, it will return the current blend time on the first active Montage found.
- `FName Montage_GetCurrentSection(const UAnimMontage Montage = nullptr) const`  
  Returns the name of the current animation montage section.
- `float32 Montage_GetEffectivePlayRate(const UAnimMontage Montage) const`  
  Get scaled PlayRate for Montage. This accounts for RateScale, so it will reflect the actual play rate seen in game.
      If Montage reference is NULL, scaled PlayRate for any Active Montage will be returned.
      If Montage is not playing, 0 is returned.
- `bool Montage_GetIsStopped(const UAnimMontage Montage) const`  
  return true if Montage is not currently active. (not valid or blending out)
- `float32 Montage_GetPlayRate(const UAnimMontage Montage) const`  
  Get PlayRate for Montage. This does not account for RateScale, so it may not reflect the actual play rate seen in game (see Montage_GetEffectivePlayRate).
      If Montage reference is NULL, PlayRate for any Active Montage will be returned.
      If Montage is not playing, 0 is returned.
- `float32 Montage_GetPosition(const UAnimMontage Montage) const`  
  Get Current Montage Position
- `bool Montage_IsActive(const UAnimMontage Montage) const`  
  Returns true if the animation montage is active. If the Montage reference is NULL, it will return true if any Montage is active.
- `bool Montage_IsPlaying(const UAnimMontage Montage) const`  
  Returns true if the animation montage is currently active and playing.
      If reference is NULL, it will return true is ANY montage is currently active and playing.
- `Montage_JumpToSection(FName SectionName, const UAnimMontage Montage = nullptr)`  
  Makes a montage jump to a named section. If Montage reference is NULL, it will do that to all active montages.
- `Montage_JumpToSectionsEnd(FName SectionName, const UAnimMontage Montage = nullptr)`  
  Makes a montage jump to the end of a named section. If Montage reference is NULL, it will do that to all active montages.
- `Montage_Pause(const UAnimMontage Montage = nullptr)`  
  Pauses the animation montage. If reference is NULL, it will pause ALL active montages.
- `float32 Montage_Play(UAnimMontage MontageToPlay, float32 InPlayRate = 1.000000, EMontagePlayReturnType ReturnValueType = EMontagePlayReturnType :: MontageLength, float32 InTimeToStartMontageAt = 0.000000, bool bStopAllMontages = true)`  
  Plays an animation montage. Returns the length of the animation montage in seconds. Returns 0.f if failed to play.
- `float32 Montage_PlayWithBlendIn(UAnimMontage MontageToPlay, FAlphaBlendArgs BlendIn, float32 InPlayRate = 1.000000, EMontagePlayReturnType ReturnValueType = EMontagePlayReturnType :: MontageLength, float32 InTimeToStartMontageAt = 0.000000, bool bStopAllMontages = true)`  
  Plays an animation montage. Same as Montage_Play, but you can specify an AlphaBlend for Blend In settings.
- `float32 Montage_PlayWithBlendSettings(UAnimMontage MontageToPlay, FMontageBlendSettings BlendInSettings, float32 InPlayRate = 1.000000, EMontagePlayReturnType ReturnValueType = EMontagePlayReturnType :: MontageLength, float32 InTimeToStartMontageAt = 0.000000, bool bStopAllMontages = true)`  
  Plays an animation montage. Same as Montage_Play, but you can overwrite all of the montage's default blend in settings.
- `Montage_Resume(const UAnimMontage Montage)`  
  Resumes a paused animation montage. If reference is NULL, it will resume ALL active montages.
- `Montage_SetNextSection(FName SectionNameToChange, FName NextSection, const UAnimMontage Montage = nullptr)`  
  Relink new next section AFTER SectionNameToChange in run-time
    You can link section order the way you like in editor, but in run-time if you'd like to change it dynamically,
    use this function to relink the next section
    For example, you can have Start->Loop->Loop->Loop.... but when you want it to end, you can relink
    next section of Loop to be End to finish the montage, in which case, it stops looping by Loop->End.

@param SectionNameToChange : This should be the name of the Montage Section after which you want to insert a new next section
@param NextSection   : new next section
- `Montage_SetPlayRate(const UAnimMontage Montage, float32 NewPlayRate = 1.000000)`  
  Change AnimMontage play rate. NewPlayRate = 1.0 is the default playback rate.
- `Montage_SetPosition(const UAnimMontage Montage, float32 NewPosition)`  
  Set position.
- `Montage_Stop(float32 InBlendOutTime, const UAnimMontage Montage = nullptr)`  
  Stopped montages will blend out using their montage asset's BlendOut, with InBlendOutTime as the BlendTime
- `Montage_StopGroupByName(float32 InBlendOutTime, FName GroupName)`  
  Stops all active montages belonging to a group.
- `Montage_StopWithBlendOut(FAlphaBlendArgs BlendOut, const UAnimMontage Montage = nullptr)`  
  Same as Montage_Stop. Uses values from the AlphaBlendArgs. Other settings come from the montage asset
- `Montage_StopWithBlendSettings(FMontageBlendSettings BlendOutSettings, const UAnimMontage Montage = nullptr)`  
  Same as Montage_Stop, but all blend settings are provided instead of using the ones on the montage asset
- `MontageSync_Follow(const UAnimMontage MontageFollower, const UAnimInstance OtherAnimInstance, const UAnimMontage MontageLeader)`  
  Synchronize a montage to another anim instance's montage. Both montages must be playing already
@param MontageFollower : The montage that will follow the leader in OtherAnimInstance
@param OtherAnimInstance      : The other anim instance we want to synchronize to. Can be set to self
@param MontageLeader  : The montage we want to follow in the other anim instance
- `MontageSync_StopFollowing(const UAnimMontage MontageFollower)`  
  Stop following the montage's leader in this anim instance
@param MontageFollower : The montage we want to stop synchronizing
- `UAnimMontage PlaySlotAnimationAsDynamicMontage(UAnimSequenceBase Asset, FName SlotNodeName, float32 BlendInTime = 0.250000, float32 BlendOutTime = 0.250000, float32 InPlayRate = 1.000000, int LoopCount = 1, float32 BlendOutTriggerTime = - 1.000000, float32 InTimeToStartMontageAt = 0.000000)`  
  Play normal animation asset on the slot node by creating a dynamic UAnimMontage. You can only play one asset (whether montage or animsequence) at a time per SlotGroup.
- `UAnimMontage PlaySlotAnimationAsDynamicMontage_WithBlendArgs(UAnimSequenceBase Asset, FName SlotNodeName, FAlphaBlendArgs BlendIn, FAlphaBlendArgs BlendOut, float32 InPlayRate = 1.000000, int LoopCount = 1, float32 BlendOutTriggerTime = - 1.000000, float32 InTimeToStartMontageAt = 0.000000)`  
  Play normal animation asset on the slot node by creating a dynamic UAnimMontage with blend in arguments. You can only play one asset (whether montage or animsequence) at a time per SlotGroup.
- `UAnimMontage PlaySlotAnimationAsDynamicMontage_WithBlendSettings(UAnimSequenceBase Asset, FName SlotNodeName, FMontageBlendSettings BlendInSettings, FMontageBlendSettings BlendOutSettings, float32 InPlayRate = 1.000000, int LoopCount = 1, float32 BlendOutTriggerTime = - 1.000000, float32 InTimeToStartMontageAt = 0.000000)`  
  Play normal animation asset on the slot node by creating a dynamic UAnimMontage with blend in settings. You can only play one asset (whether montage or animsequence) at a time per SlotGroup.
- `RemovePoseSnapshot(FName SnapshotName)`  
  Remove a previously saved pose snapshot from the internal snapshot cache
- `RequestSlotGroupInertialization(FName InSlotGroupName, float32 Duration, const UBlendProfile BlendProfile = nullptr)`  
  Requests an inertial blend during the next anim graph update. Requires your anim graph to have a slot node belonging to the specified group name
- `bool RequestTransitionEvent(FName EventName, float RequestTimeout, ETransitionRequestQueueMode QueueMode, ETransitionRequestOverwriteMode OverwriteMode)`  
  Attempts to queue a transition request, returns true if the request was successful
- `ResetDynamics(ETeleportType InTeleportType)`  
  Reset any dynamics running simulation-style updates (e.g. on teleport, time skip etc.)
- `SavePoseSnapshot(FName SnapshotName)`  
  Takes a snapshot of the current skeletal mesh component pose & saves it internally.
This snapshot can then be retrieved by name in the animation blueprint for blending.
The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose
- `SetMorphTarget(FName MorphTargetName, float32 Value)`  
  Sets a morph target to a certain weight.
- `SetPropagateNotifiesToLinkedInstances(bool bSet)`  
  Set whether to propagate notifies to any linked anim instances
- `SetReceiveNotifiesFromLinkedInstances(bool bSet)`  
  Set whether to process notifies from any linked anim instances
- `SetRootMotionMode(ERootMotionMode Value)`  
  Set RootMotionMode
- `SetUseMainInstanceMontageEvaluationData(bool bSet)`
- `SnapshotPose(FPoseSnapshot& Snapshot)`  
  Takes a snapshot of the current skeletal mesh component pose and saves it to the specified snapshot.
The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1
and then used it at LOD0 any bones not in LOD1 will use the reference pose
- `StopSlotAnimation(float32 InBlendOutTime = 0.250000, FName SlotNodeName = NAME_None)`  
  Stops currently playing slot animation slot or all
- `APawn TryGetPawnOwner() const`  
  kismet event functions
- `UnlinkAnimClassLayers(TSubclassOf<UAnimInstance> InClass)`  
  Runs through all layer nodes, attempting to find layer nodes that are currently running the specified class, then resets each to its default value.
State sharing rules are as with SetLayerOverlay.
If InClass is null, does nothing.
- `bool WasAnimNotifyStateActiveInAnyState(TSubclassOf<UAnimNotifyState> AnimNotifyStateType)`  
  Get whether a particular notify state was active in any state machine last tick.
- `Montage_DisableRootMotion(UAnimMontage Montage)`

---

