### UMoverComponent


**属性**:

- `TSubclassOf<UActorComponent> BackendClass [Specifies which supporting back end class should drive this Mover actor]`
- `FVector GravityAccelOverride [cm/s^2, only meaningful if @bHasGravityOverride is enabled.Set @SetGravityOverride]`
- `FQuat GravityToWorldTransform [A cached quaternion representing the inverse rotation from world space to gravity relative space defined by GravityAccelOverride.]`
- `UObject InputProducer [Optional object for producing input cmds. Typically set at BeginPlay time. If not specified, defaulted input will be used.
 Note that any other actor component implementing MoverInputProducerInterface on this component's owner will also be able
 to produce input commands if bGatherInputFromAllInputProducerComponents is true. @see bGatherInputFromAllInputProducerComponents]`
- `UMovementMixer MovementMixer [Optional object for mixing proposed moves.Typically set at BeginPlay time. If not specified, UDefaultMovementMixer will be used.]`
- `TMap<FName,TObjectPtr<UBaseMovementMode>> MovementModes`
- `FMover_OnMovementModeChanged OnMovementModeChanged [Broadcast when a MovementMode has changed. Happens during a simulation tick if the mode changed that tick or when SetModeImmediately is used to change modes.]`
- `FMover_OnTransitionTriggered OnMovementTransitionTriggered [Broadcast when a Transition has been triggered.]`
- `FMover_OnPostFinalize OnPostFinalize [Broadcast after each finalized simulation frame, after the state is finalized. (Game thread only)]`
- `FMover_OnPostSimRollback OnPostSimulationRollback [Broadcast when a rollback has occurred, just before the next simulation tick occurs]`
- `FMover_OnPostSimTick OnPostSimulationTick [Broadcast after each simulation tick and the state is finalized]`
- `FMover_OnPreMovement OnPreMovement [Broadcast during the simulation tick after inputs have been processed, but before the actual move is performed.
Note - When async simulating, the delegate would be called on the async thread, and might be broadcast multiple times.]`
- `FMover_OnPreSimTick OnPreSimulationTick [Broadcast before each simulation tick.
Note - Guaranteed to run on the game thread (even in async simulation).]`
- `FMover_OnTeleportFailed OnTeleportFailed [Broadcast when a teleport has failed]`
- `FMover_OnTeleportSucceeded OnTeleportSucceeded [Broadcast when a teleport has succeeded]`
- `TArray<FMoverDataPersistence> PersistentSyncStateDataTypes [List of types that should always be present in this actor's sync state]`
- `FPlanarConstraint PlanarConstraint [Settings that can lock movement to a particular plane]`
- `TArray<TObjectPtr<UObject>> SharedSettings [Collection of settings objects that are shared between movement modes. This list is automatically managed based on the @MovementModes contents.]`
- `EMoverSmoothingMode SmoothingMode [If enabled, the movement of the primary visual component will be smoothed via an offset from the root moving component. This is useful in fixed-tick simulations with variable rendering rates.]`
- `FName StartingMovementMode [Name of the first mode to start in when simulation begins. Must have a mapping in MovementModes. Only used during initialization.]`
- `TArray<TObjectPtr<UBaseMovementModeTransition>> Transitions [Transition checks that are always evaluated regardless of mode. Evaluated in order, stopping at the first successful transition check. Mode-owned transitions take precedence. */]`
- `FVector UpDirectionOverride [A fixed up direction to use if bHasUpDirectionOverride is true]`
- `FQuat WorldToGravityTransform [A cached quaternion representing the rotation from world space to gravity relative space defined by GravityAccelOverride.]`
- `bool bAcceptExternalMovement [If enabled, we'll accept any movements from an external system in the next simulation state update]`
- `bool bGatherInputFromAllInputProducerComponents [If true, any actor component implementing MoverInputProducerInterface on this component's owner will be able to produce input commands]`
- `bool bHasGravityOverride [Whether or not gravity is overridden on this actor. Otherwise, fall back on world settings. See @SetGravityOverride]`
- `bool bHasUpDirectionOverride [Whether to override the up direction with a fixed value instead of using gravity to deduce it]`
- `bool bSupportsKinematicBasedMovement [If enabled, this actor will be moved to follow a base actor that it's standing on. Typically disabled for physics-based movement, which handles based movement internally.]`
- `bool bSyncInputsForSimProxy [If enabled, we'll send inputs along with to sim proxy via the sync state, and they'll be available via GetLastInputCmd. This may be useful for cases where input is used to hint at object state, such as an anim graph. This option is intended to be temporary until all networking backends allow this.]`
- `bool bUseDeferredGroupMovement [If true, then the transform updates applied in UMoverComponent::SetFrameStateFromContext will use a "deferred group move"
to improve performance.

It is not recommended that you enable this when you need exact, high fidelity characters such as your player character.
This is mainly a benefit for scenarios with large amounts of NPCs or lower fidelity characters where it is acceptable
to not have immediately applied transforms.

This only does something if the "s.GroupedComponentMovement.Enable" CVar is set to true.]`
- `bool bWarnOnExternalMovement [Whether to warn when we detect that an external system has moved our object, outside of movement simulation control]`


**方法**:

- `AddGameplayTag(FGameplayTag TagToAdd)`  
  Adds a gameplay tag to this Mover Component.
Note: Duplicate tags will not be added
@param TagToAdd                      Tag to add to the Mover Component
- `AddGameplayTags(FGameplayTagContainer TagsToAdd)`  
  Adds a series of gameplay tags to this Mover Component
Note: Duplicate tags will not be added
@param TagsToAdd                     Tags to add/append to the Mover Component
- `UBaseMovementMode AddMovementModeFromClass(FName ModeName, TSubclassOf<UBaseMovementMode> MovementMode)`  
  Add a movement mode to available movement modes. Returns true if the movement mode was added successfully. Returns the mode that was made.
- `bool AddMovementModeFromObject(FName ModeName, UBaseMovementMode MovementMode)`  
  Add a movement mode to available movement modes. Returns true if the movement mode was added successfully
- `BindProcessGeneratedMovement(FMover_ProcessGeneratedMovement ProcessGeneratedMovementEvent = FMover_ProcessGeneratedMovement ( ))`  
  Binds event for processing movement after it has been generated. Allows for final modifications to proposed movement before it's executed.
- `CancelFeaturesWithTag(FGameplayTag TagToCancel, bool bRequireExactMatch = false)`  
  Cancel any active or queued movement features (layered moves, modifiers, etc.) that have a matching gameplay tag. Does not affect the active movement mode.
- `CancelModifierFromHandle(FMovementModifierHandle ModifierHandle)`  
  Cancel any active or queued Modifiers with the handle passed in.
- `UBaseMovementMode FindMovementMode(TSubclassOf<UBaseMovementMode> MovementMode) const`
- `UBaseMovementMode FindMovementModeByName(FName MovementModeName) const`
- `const UObject FindSharedSettings_BP(TSubclassOf<UObject> SharedSetting) const`  
  Find settings object by type. Returns null if there is none of that type
- `UObject FindSharedSettings_Mutable_BP(TSubclassOf<UObject> SharedSetting) const`  
  Find mutable settings object by type. Returns null if there is none of that type
- `FTransform GetBaseVisualComponentTransform() const`  
  Gets BaseVisualComponentTransform used for cases where we want to move the visual component away from the root component. See @BaseVisualComponentTransform
- `TArray<FTrajectorySampleInfo> GetFutureTrajectory(float32 FutureSeconds, float32 SamplesPerSecond)`
- `FVector GetGravityAcceleration() const`  
  Get the current acceleration due to gravity (cm/s^2) in worldspace
- `FMoverInputCmdContext GetLastInputCmd() const`  
  Access the most recently-used inputs.
- `FMoverTimeStep GetLastTimeStep() const`  
  Get the most recent TimeStep
- `UPrimitiveComponent GetMovementBase() const`  
  Get the current movement base. Null if there isn't one.
- `FName GetMovementBaseBoneName() const`  
  Get the current movement base bone, NAME_None if there isn't one.
- `FVector GetMovementIntent() const`  
  Get the intended movement direction in worldspace with magnitude (range 0-1)
- `const UBaseMovementMode GetMovementMode() const`  
  Get the current movement mode
- `FName GetMovementModeName() const`  
  Get the current movement mode name
- `FPlanarConstraint GetPlanarConstraint() const`  
  Access the planar constraint that may be limiting movement direction
- `TArray<FTrajectorySampleInfo> GetPredictedTrajectory(FMoverPredictTrajectoryParams PredictionParams)`  
  Get a sampling of where the actor is projected to be in the future, based on a current state. Note that this is projecting ideal movement without doing full simulation and collision.
The first sample info of the returned array corresponds to the current state of the mover.
- `USceneComponent GetPrimaryVisualComponent() const`  
  Access the primary visual component of the actor
- `const UMoverBlackboard GetSimBlackboard() const`  
  Access the read-only version of the Mover's Blackboard
- `FMoverSyncState GetSyncState() const`  
  Access the most recent captured sync state.
- `FRotator GetTargetOrientation() const`  
  Get the orientation that the actor is moving towards
- `USceneComponent GetUpdatedComponent() const`  
  Access the root component of the actor that our Mover simulation is moving
- `FVector GetUpDirection() const`  
  Get the normalized direction considered "up" in worldspace. Typically aligned with gravity, and typically determines the plane an actor tries to move along.
- `FVector GetVelocity() const`  
  Get the current velocity (units per second, worldspace)
- `HandleImpact(FMoverOnImpactParams& ImpactParams)`  
  Handle a blocking impact.
- `bool HasGameplayTag(FGameplayTag TagToFind, bool bExactMatch) const`  
  Check Mover systems for a gameplay tag.

@param TagToFind                     Tag to check on the Mover systems
@param bExactMatch           If true, the tag has to be exactly present, if false then TagToFind will include it's parent tags while matching

@return True if the TagToFind was found
- `bool HasGameplayTagInState(FMoverSyncState SyncState, FGameplayTag TagToFind, bool bExactMatch) const`  
  Check Mover systems for a gameplay tag. Use the given state, as well as any loose tags on the MoverComponent.

@param TagToFind                     Tag to check on the MoverComponent or state
@param bExactMatch           If true, the tag has to be exactly present, if false then TagToFind will include it's parent tags while matching

@return True if the TagToFind was found
- `bool IsModifierActiveOrQueued(FMovementModifierHandle ModifierHandle) const`  
  Checks if the modifier handle passed in is active or queued on this mover component
- `bool IsUsingDeferredGroupMovement() const`  
  Returns true if this component is actually using grouped movement updates, which checks the flag and any global settings
- `RegisterMove(TSubclassOf<ULayeredMoveLogic> MoveClass)`  
  Registers layered move logic
- `RegisterMoves(TArray<TSubclassOf<ULayeredMoveLogic>> MoveClasses)`  
  Registers an array of layered move logic classes
- `UnregisterMove(TSubclassOf<ULayeredMoveLogic> MoveClass)`  
  Unregisters layered move logic
- `bool QueueLayeredMoveActivation(TSubclassOf<ULayeredMoveLogic> MoveLogicClass)`  
  Queues a layered move for activation.
Takes NO Activation Context meaning the layered move will be activated using default Move Data.
Note: Changing Move Data is still possible in the layered move logic itself
See QueueLayeredMoveActivationWithContext for activating a layered move with context
- `QueueNextMode(FName DesiredModeName, bool bShouldReenter = false)`  
  Queue a movement mode change to occur during the next simulation frame. If bShouldReenter is true, then a mode change will occur even if already in that mode.
- `RemoveGameplayTag(FGameplayTag TagToRemove)`  
  Removes a gameplay tag from this Mover Component
@param TagToRemove                   Tag to remove from the Mover Component
- `RemoveGameplayTags(FGameplayTagContainer TagsToRemove)`  
  Removes gameplay tags from this Mover Component
@param TagsToRemove                  Tags to remove from the Mover Component
- `bool RemoveMovementMode(FName ModeName)`  
  Removes a movement mode from available movement modes. Returns number of modes removed from the available movement modes.
- `SetBaseVisualComponentTransform(FTransform ComponentTransform)`  
  Sets BaseVisualComponentTransform used for cases where we want to move the visual component away from the root component. See @BaseVisualComponentTransform
- `SetGravityOverride(bool bOverrideGravity, FVector GravityAcceleration = FVector ( ))`  
  Set gravity override, as a directional acceleration in worldspace.  Gravity on Earth would be {x=0,y=0,z=-980}
- `SetPlanarConstraint(FPlanarConstraint InConstraint)`  
  Sets planar constraint that can limit movement direction
- `SetPrimaryVisualComponent(USceneComponent SceneComponent)`  
  Sets this Mover actor's primary visual component. Must be a descendant of the updated component that acts as our movement root.
- `SetUpdatedComponent(USceneComponent NewUpdatedComponent)`  
  Sets which component we're using as the root of our movement
- `SetUpDirectionOverride(bool bOverrideUpDirection, FVector UpDirection = FVector ( 0.000000 , 0.000000 , 1.000000 ))`  
  Set UpDirection override. This is a fixed direction that overrides the gravity-derived up direction.
- `SetUseDeferredGroupMovement(bool bEnable)`  
  Sets whether this mover component can use grouped movement updates, which improve performance but can cause attachments to update later than expected
- `bool TryGetFloorCheckHitResult(FHitResult& OutHitResult) const`  
  Access the most recent floor check hit result.
- `UnbindProcessGeneratedMovement()`  
  Clears current bound event for processing movement after it has been generated.
- `QueueInstanceEffect(const UMoverInstanceEffect InstanceEffect)`
- `QueueLayeredMove(const ULayeredMove_AnimRootMotionWrapper LayeredMoveWrapper)`

---

