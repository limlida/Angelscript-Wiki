### AActor


Actor is the base class for an Object that can be placed or spawned in a level.
Actors may contain a collection of ActorComponents, which can be used to control how actors move, how they are rendered, etc.
The other main function of an Actor is the replication of properties and function calls across the network during play.


Actor initialization has multiple steps, here's the order of important virtual functions that get called:
- UObject::PostLoad: For actors statically placed in a level, the normal UObject PostLoad gets called both in the editor and during gameplay.
                     This is not called for newly spawned actors.
- UActorComponent::OnComponentCreated: When an actor is spawned in the editor or during gameplay, this gets called for any native components.
                                       For blueprint-created components, this gets called during construction for that component.
                                       This is not called for components loaded from a level.
- AActor::PreRegisterAllComponents: For statically placed actors and spawned actors that have native root components, this gets called now.
                                    For blueprint actors without a native root component, these registration functions get called later during construction.
- UActorComponent::RegisterComponent: All components are registered in editor and at runtime, this creates their physical/visual representation.
                                      These calls may be distributed over multiple frames, but are always after PreRegisterAllComponents.
                                      This may also get called later on after an UnregisterComponent call removes it from the world.
- AActor::PostRegisterAllComponents: Called for all actors both in the editor and in gameplay, this is the last function that is called in all cases.
- AActor::PostActorCreated: When an actor is created in the editor or during gameplay, this gets called right before construction.
                            This is not called for components loaded from a level.
- AActor::UserConstructionScript: Called for blueprints that implement a construction script.
- AActor::OnConstruction: Called at the end of ExecuteConstruction, which calls the blueprint construction script.
                          This is called after all blueprint-created components are fully created and registered.
                          This is only called during gameplay for spawned actors, and may get rerun in the editor when changing blueprints.
- AActor::PreInitializeComponents: Called before InitializeComponent is called on the actor's components.
                                   This is only called during gameplay and in certain editor preview windows.
- UActorComponent::Activate: This will be called only if the component has bAutoActivate set.
                             It will also got called later on if a component is manually activated.
- UActorComponent::InitializeComponent: This will be called only if the component has bWantsInitializeComponentSet.
                                        This only happens once per gameplay session.
- AActor::PostInitializeComponents: Called after the actor's components have been initialized, only during gameplay and some editor previews.
- AActor::BeginPlay: Called when the level starts ticking, only during actual gameplay.
                     This normally happens right after PostInitializeComponents but can be delayed for networked or child actors.

@see https://docs.unrealengine.com/Programming/UnrealArchitecture/Actors
@see https://docs.unrealengine.com/Programming/UnrealArchitecture/Actors/ActorLifecycle
@see UActorComponent

**属性**:

- `FGuid ActorGuid [The GUID for this actor; this guid will be the same for actors from instanced streaming levels.
@see         ActorInstanceGuid, FActorInstanceGuidMapper
@note        Don't use VisibleAnywhere here to avoid getting the CPF_Edit flag and get this property reset when resetting to defaults.
                     See FActorDetails::AddActorCategory and EditorUtilities::CopySingleProperty for details.]`
- `FGuid ActorInstanceGuid [The instance GUID for this actor; this guid will be unique for actors from instanced streaming levels.
@see         ActorGuid
@note        This is not guaranteed to be valid during PostLoad, but safe to access from RegisterAllComponents.]`
- `EAutoReceiveInput AutoReceiveInput [Automatically registers this actor to receive input from a player.]`
- `FGuid ContentBundleGuid [The GUID for this actor's content bundle.]`
- `float32 CustomTimeDilation [Allow each actor to run at a different time speed. The DeltaTime for a frame is multiplied by the global TimeDilation (in WorldSettings) and this CustomTimeDilation for this actor's tick.]`
- `TArray<TSoftObjectPtr<UDataLayerAsset>> DataLayerAssets [DataLayers assets the actor belongs to.]`
- `UHLODLayer HLODLayer [The UHLODLayer in which this actor should be included.]`
- `float32 InitialLifeSpan [How long this Actor lives before dying, 0=forever. Note this is the INITIAL value and should not be modified once play has begun.]`
- `int InputPriority [The priority of this input component when pushed in to the stack.]`
- `APawn Instigator [Pawn responsible for damage and other gameplay events caused by this actor.]`
- `TArray<FName> Layers [Layers the actor belongs to.  This is outside of the editoronly data to allow hiding of LD-specified layers at runtime for profiling.]`
- `float32 MinNetUpdateFrequency`
- `float32 NetCullDistanceSquared`
- `ENetDormancy NetDormancy [Dormancy setting for actor to take itself off of the replication list without being destroyed on clients.]`
- `float32 NetPriority [Priority for this actor when checking for replication in a low bandwidth or saturated situation, higher priority means it is more likely to replicate]`
- `float32 NetUpdateFrequency`
- `FActorBeginOverlapSignature OnActorBeginOverlap [Called when another actor begins to overlap this actor, for example a player walking into a trigger.
For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.
@note Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.]`
- `FActorEndOverlapSignature OnActorEndOverlap [Called when another actor stops overlapping this actor.
@note Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.]`
- `FActorHitSignature OnActorHit [Called when this Actor hits (or is hit by) something solid. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation.
For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.
@note For collisions during physics simulation to generate hit events, 'Simulation Generates Hit Events' must be enabled.]`
- `FActorBeginCursorOverSignature OnBeginCursorOver [Called when the mouse cursor is moved over this actor if mouse over events are enabled in the player controller.]`
- `FActorOnClickedSignature OnClicked [Called when the left mouse button is clicked while the mouse is over this actor and click events are enabled in the player controller.]`
- `FActorDestroyedSignature OnDestroyed [Event triggered when the actor has been explicitly destroyed.]`
- `FActorEndCursorOverSignature OnEndCursorOver [Called when the mouse cursor is moved off this actor if mouse over events are enabled in the player controller.]`
- `FActorEndPlaySignature OnEndPlay [Event triggered when the actor is being deleted or removed from a level.]`
- `FActorOnInputTouchBeginSignature OnInputTouchBegin [Called when a touch input is received over this actor when touch events are enabled in the player controller.]`
- `FActorOnInputTouchEndSignature OnInputTouchEnd [Called when a touch input is received over this component when touch events are enabled in the player controller.]`
- `FActorBeginTouchOverSignature OnInputTouchEnter [Called when a finger is moved over this actor when touch over events are enabled in the player controller.]`
- `FActorEndTouchOverSignature OnInputTouchLeave [Called when a finger is moved off this actor when touch over events are enabled in the player controller.]`
- `FActorOnReleasedSignature OnReleased [Called when the left mouse button is released while the mouse is over this actor and click events are enabled in the player controller.]`
- `FTakeAnyDamageSignature OnTakeAnyDamage [Called when the actor is damaged in any way.]`
- `FTakePointDamageSignature OnTakePointDamage [Called when the actor is damaged by point damage.]`
- `FTakeRadialDamageSignature OnTakeRadialDamage [Called when the actor is damaged by radial damage.]`
- `EPhysicsReplicationMode PhysicsReplicationMode [Which mode to replicate physics through for this actor. Only relevant if the actor replicates movement and has a component that simulate physics.]`
- `FVector PivotOffset [Local space pivot offset for the actor, only used in the editor]`
- `FActorTickFunction PrimaryActorTick [Primary Actor tick function, which calls TickActor().
Tick functions can be configured to control whether ticking is enabled, at what time during a frame the update occurs, and to set up tick dependencies.
@see https://docs.unrealengine.com/API/Runtime/Engine/Engine/FTickFunction
@see AddTickPrerequisiteActor(), AddTickPrerequisiteComponent()]`
- `FRepMovement ReplicatedMovement [Used for replication of our RootComponent's position and velocity]`
- `USceneComponent RootComponent [The component that defines the transform (location, rotation, scale) of this Actor in the world, all other components must be attached to this one somehow]`
- `FName RuntimeGrid [Determine in which partition grid this actor will be placed in the partition (if the world is partitioned).
If None, the decision will be left to the partition.]`
- `ESpawnActorCollisionHandlingMethod SpawnCollisionHandlingMethod [Controls how to handle spawning this actor in a situation where it's colliding with something else. "Default" means AlwaysSpawn here.]`
- `float32 SpriteScale [The scale to apply to any billboard components in editor builds (happens in any WITH_EDITOR build, including non-cooked games).]`
- `TArray<FName> Tags [Array of tags that can be used for grouping and categorizing.]`
- `EActorUpdateOverlapsMethod UpdateOverlapsMethodDuringLevelStreaming [Condition for calling UpdateOverlaps() to initialize overlap state when loaded in during level streaming.
If set to 'UseConfigDefault', the default specified in ini (displayed in 'DefaultUpdateOverlapsMethodDuringLevelStreaming') will be used.
If overlaps are not initialized, this actor and attached components will not have an initial state of what objects are touching it,
and overlap events may only come in once one of those objects update overlaps themselves (for example when moving).
However if an object touching it *does* initialize state, both objects will know about their touching state with each other.
This can be a potentially large performance savings during level loading and streaming, and is safe if the object and others initially
overlapping it do not need the overlap state because they will not trigger overlap notifications.

Note that if 'bGenerateOverlapEventsDuringLevelStreaming' is true, overlaps are always updated in this case, but that flag
determines whether the Begin/End overlap events are triggered.

@see bGenerateOverlapEventsDuringLevelStreaming, DefaultUpdateOverlapsMethodDuringLevelStreaming, GetUpdateOverlapsMethodDuringLevelStreaming()]`
- `bool bAllowTickBeforeBeginPlay [Whether we allow this Actor to tick before it receives the BeginPlay event.
Normally we don't tick actors until after BeginPlay; this setting allows this behavior to be overridden.
This Actor must be able to tick for this setting to be relevant.]`
- `bool bAlwaysRelevant [Always relevant for network (overrides bOnlyRelevantToOwner).]`
- `bool bAsyncPhysicsTickEnabled [Whether to use use the async physics tick with this actor.]`
- `bool bAutoDestroyWhenFinished [If true then destroy self when "finished", meaning all relevant components report that they are done and no timelines or timers are in flight.]`
- `bool bBlockInput [If true, all input on the stack below this actor will not be considered]`
- `bool bCallPreReplication`
- `bool bCallPreReplicationForReplay`
- `bool bCanBeDamaged [Whether this actor can take damage. Must be true for damage events (e.g. ReceiveDamage()) to be called.
@see https://www.unrealengine.com/blog/damage-in-ue4
@see TakeDamage(), ReceiveDamage()]`
- `bool bCanBeInCluster [If true, this actor can be put inside of a GC Cluster to improve Garbage Collection performance]`
- `bool bEnableAutoLODGeneration [Whether this actor should be considered or not during HLOD generation.]`
- `bool bFindCameraComponentWhenViewTarget [If true, this actor should search for an owned camera component to view through when used as a view target.]`
- `bool bGenerateOverlapEventsDuringLevelStreaming [If true, this actor will generate overlap Begin/End events when spawned as part of level streaming, which includes initial level load.
You might enable this is in the case where a streaming level loads around an actor and you want Begin/End overlap events to trigger.
@see UpdateOverlapsMethodDuringLevelStreaming]`
- `bool bHidden [Allows us to only see this Actor in the Editor, and not in the actual game.
@see SetActorHiddenInGame()]`
- `bool bIgnoresOriginShifting [Whether this actor should not be affected by world origin shifting.]`
- `bool bIsEditorOnlyActor [Whether this actor is editor-only. Use with care, as if this actor is referenced by anything else that reference will be NULL in cooked builds]`
- `bool bIsMainWorldOnly [If checked, this Actor will only get loaded in a main world (persistent level), it will not be loaded through Level Instances.]`
- `bool bIsSpatiallyLoaded [Determine if this actor is spatially loaded when placed in a partitioned world.
     If true, this actor will be loaded when in the range of any streaming sources and if (1) in no data layers, or (2) one or more of its data layers are enabled.
     If false, this actor will be loaded if (1) in no data layers, or (2) one or more of its data layers are enabled.]`
- `bool bMigratingAsset [If true, this actor can be migrated to another server even if it's been loaded from disk]`
- `bool bNetLoadOnClient [This actor will be loaded on network clients during map load]`
- `bool bNetUseOwnerRelevancy [If actor has valid Owner, call Owner's IsNetRelevantFor and GetNetPriority]`
- `bool bOnlyRelevantToOwner [If true, this actor is only relevant to its owner. If this flag is changed during play, all non-owner channels would need to be explicitly closed.]`
- `bool bOptimizeBPComponentData [Whether to cook additional data to speed up spawn events at runtime for any Blueprint classes based on this Actor. This option may slightly increase memory usage in a cooked build.]`
- `bool bRelevantForLevelBounds [If true, this actor's component's bounds will be included in the level's
bounding box unless the Actor's class has overridden IsLevelBoundsRelevant]`
- `bool bReplayRewindable [If true, this actor will only be destroyed during scrubbing if the replay is set to a time before the actor existed.
Otherwise, RewindForReplay will be called if we detect the actor needs to be reset.
Note, this Actor must not be destroyed by gamecode, and RollbackViaDeletion may not be used.]`
- `bool bReplicateMovement [If true, replicate movement/location related properties.
Actor must also be set to replicate.
@see SetReplicates()
@see https://docs.unrealengine.com/InteractiveExperiences/Networking/Actors]`
- `bool bReplicateUsingRegisteredSubObjectList [When true the replication system will only replicate the registered subobjects and the replicated actor components list
When false the replication system will instead call the virtual ReplicateSubobjects() function where the subobjects and actor components need to be manually replicated.]`
- `bool bReplicates [If true, this actor will replicate to remote machines
@see SetReplicates()]`


**方法**:

- `bool IsActorInitialized() const`
- `bool HasActorBegunPlay() const`
- `bool IsHidden() const`
- `FString GetActorNameOrLabel() const`
- `UGameInstance GetGameInstance() const`
- `APawn GetActorInstigator() const`
- `AController GetActorInstigatorController() const`
- `bool ActorHasTag(FName Tag) const`  
  See if this actor's Tags array contains the supplied name tag
- `AddTickPrerequisiteActor(AActor PrerequisiteActor)`  
  Make this actor tick after PrerequisiteActor. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.
- `AddTickPrerequisiteComponent(UActorComponent PrerequisiteComponent)`  
  Make this actor tick after PrerequisiteComponent. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.
- `bool CanTriggerResimulation() const`  
  Can this body trigger a resimulation when Physics Prediction is enabled
- `CreateInputComponent(TSubclassOf<UInputComponent> InputComponentToCreate)`  
  Creates an input component from the input component passed in
@param InputComponentToCreate The UInputComponent to create.
- `DetachRootComponentFromParent(bool bMaintainWorldPosition = true)`
- `DisableInput(APlayerController PlayerController)`  
  Removes this actor from the stack of input being handled by a PlayerController.
@param PlayerController The PlayerController whose input events we no longer want to receive. If null, this actor will stop receiving input from all PlayerControllers.
- `EnableInput(APlayerController PlayerController)`  
  Pushes this actor on to the stack of input being handled by a PlayerController.
@param PlayerController The PlayerController whose input events we want to receive.
- `UActorComponent FindComponentByTag(TSubclassOf<UActorComponent> ComponentClass, FName Tag) const`  
  Searches components array and returns first encountered component with a given tag.
- `FlushNetDormancy()`  
  Forces dormant actor to replicate but doesn't change NetDormancy state (i.e., they will go dormant again if left dormant)
- `ForceNetUpdate()`  
  Force actor to be updated to clients/demo net drivers
- `GetActorBounds(bool bOnlyCollidingComponents, FVector& Origin, FVector& BoxExtent, bool bIncludeFromChildActors = false) const`  
  Returns the bounding box of all components that make up this Actor (excluding ChildActorComponents).
@param       bOnlyCollidingComponents        If true, will only return the bounding box for components with collision enabled.
@param       Origin                                          Set to the center of the actor in world space
@param       BoxExtent                                       Set to half the actor's size in 3d space
@param       bIncludeFromChildActors         If true then recurse in to ChildActor components
- `bool GetActorEnableCollision() const`  
  Get current state of collision for the whole actor
- `GetActorEyesViewPoint(FVector& OutLocation, FRotator& OutRotation) const`  
  Returns the point of view of the actor.
Note that this doesn't mean the camera, but the 'eyes' of the actor.
For example, for a Pawn, this would define the eye height location,
and view rotation (which is different from the pawn rotation which has a zeroed pitch component).
A camera first person view will typically use this view point. Most traces (weapon, AI) will be done from this view point.

@param       OutLocation - location of view point
@param       OutRotation - view rotation of actor.
- `FVector GetActorForwardVector() const`  
  Get the forward (X) vector (length 1.0) from this Actor, in world space.
- `FString GetActorLabel(bool bCreateIfNone = true) const`  
  Returns this actor's current label.  Actor labels are only available in development builds.
- `FVector GetActorRelativeScale3D() const`  
  Return the actor's relative scale 3d
- `FVector GetActorRightVector() const`  
  Get the right (Y) vector (length 1.0) from this Actor, in world space.
- `FVector GetActorScale3D() const`  
  Returns the Actor's world-space scale.
- `float32 GetActorTickInterval() const`  
  Returns the tick interval of this actor's primary tick function
- `float32 GetActorTimeDilation() const`  
  Get ActorTimeDilation - this can be used for input control or speed control for slomo.
We don't want to scale input globally because input can be used for UI, which do not care for TimeDilation.
- `FVector GetActorUpVector() const`  
  Get the up (Z) vector (length 1.0) from this Actor, in world space.
- `GetAllChildActors(TArray<AActor>& ChildActors, bool bIncludeDescendants = true) const`  
  Returns a list of all actors spawned by our Child Actor Components, including children of children.
This does not return the contents of the Children array
- `GetAttachedActors(TArray<AActor>& OutActors, bool bResetArray = true, bool bRecursivelyIncludeAttachedActors = false) const`  
  Find all Actors which are attached directly to a component in this actor
- `AActor GetAttachParentActor() const`  
  Walk up the attachment chain from RootComponent until we encounter a different actor, and return it. If we are not attached to a component in a different actor, returns nullptr
- `FName GetAttachParentSocketName() const`  
  Walk up the attachment chain from RootComponent until we encounter a different actor, and return the socket name in the component. If we are not attached to a component in a different actor, returns NAME_None
- `UActorComponent GetComponentByClass(TSubclassOf<UActorComponent> ComponentClass) const`  
  Searches components array and returns first encountered component of the specified class
- `TArray<UActorComponent> GetComponentsByInterface(TSubclassOf<UInterface> Interface) const`  
  Gets all the components that implements the given interface.
- `TArray<UActorComponent> GetComponentsByTag(TSubclassOf<UActorComponent> ComponentClass, FName Tag) const`  
  Gets all the components that inherit from the given class with a given tag.
- `FString GetDefaultActorLabel() const`  
  Returns this actor's default label (does not include any numeric suffix).  Actor labels are only available in development builds.
- `float32 GetDistanceTo(const AActor OtherActor) const`  
  Returns the distance from this Actor to OtherActor.
- `float32 GetDotProductTo(const AActor OtherActor) const`  
  Returns the dot product from this Actor to OtherActor. Returns -2.0 on failure. Returns 0.0 for coincidental actors.
- `FName GetFolderPath() const`  
  Returns this actor's folder path. Actor folder paths are only available in development builds.
- `float32 GetGameTimeSinceCreation() const`  
  The number of seconds (in game time) since this Actor was created, relative to Get Game Time In Seconds.
- `float32 GetHorizontalDistanceTo(const AActor OtherActor) const`  
  Returns the distance from this Actor to OtherActor, ignoring Z.
- `float32 GetHorizontalDotProductTo(const AActor OtherActor) const`  
  Returns the dot product from this Actor to OtherActor, ignoring Z. Returns -2.0 on failure. Returns 0.0 for coincidental actors.
- `APawn GetInstigator() const`  
  Returns the instigator for this actor, or nullptr if there is none.
- `AController GetInstigatorController() const`  
  Returns the instigator's controller for this actor, or nullptr if there is none.
- `ULevel GetLevel() const`  
  Return the ULevel that this Actor is part of.
- `FTransform GetLevelTransform() const`  
  Return the FTransform of the level this actor is a part of.
- `float32 GetLifeSpan() const`  
  Get the remaining lifespan of this actor. If zero is returned the actor lives forever.
- `ENetRole GetLocalRole() const`  
  Returns how much control the local machine has over this actor.
- `float32 GetMinNetUpdateFrequency() const`  
  Get the frequency to throttle down to when replicated properties are changing infrequently.
- `float32 GetNetCullDistanceSquared() const`  
  Get the square of the max distance from the client's viewpoint that this actor is relevant and will be replicated.
- `float32 GetNetUpdateFrequency() const`  
  Get the current frequency at which this object will be considered for replication.
- `GetOverlappingActors(TArray<AActor>& OverlappingActors, TSubclassOf<AActor> ClassFilter = nullptr) const`  
  Returns list of actors this actor is overlapping (any component overlapping any component). Does not return itself.
@param OverlappingActors             [out] Returned list of overlapping actors
@param ClassFilter                   [optional] If set, only returns actors of this class or subclasses
- `GetOverlappingComponents(TArray<UPrimitiveComponent>& OverlappingComponents) const`  
  Returns list of components this actor is overlapping.
- `AActor GetOwner() const`  
  Get the owner of this Actor, used primarily for network replication.
- `AActor GetParentActor() const`  
  If this Actor was created by a Child Actor Component returns the Actor that owns that Child Actor Component
- `UChildActorComponent GetParentComponent() const`  
  If this Actor was created by a Child Actor Component returns that Child Actor Component
- `EPhysicsReplicationMode GetPhysicsReplicationMode()`  
  Get the physics replication mode of this body, via EPhysicsReplicationMode
- `int GetRayTracingGroupId() const`  
  Return the RayTracingGroupId for this actor.
- `ENetRole GetRemoteRole() const`  
  Returns how much control the remote machine has over this actor.
- `float32 GetResimulationThreshold() const`  
  Get the error threshold in centimeters before this object should enforce a resimulation to trigger.
- `float32 GetSquaredDistanceTo(const AActor OtherActor) const`  
  Returns the squared distance from this Actor to OtherActor.
- `float32 GetSquaredHorizontalDistanceTo(const AActor OtherActor) const`  
  Returns the squared distance from this Actor to OtherActor, ignoring Z.
- `bool GetTickableWhenPaused()`  
  Gets whether this actor can tick when paused.
- `FTransform GetActorTransform() const`  
  Get the actor-to-world transform.
@return The transform that transforms from actor space to world space.
- `FVector GetVelocity() const`  
  Returns velocity (in cm/s (Unreal Units/second) of the rootcomponent if it is either using physics or has an associated MovementComponent
- `float32 GetVerticalDistanceTo(const AActor OtherActor) const`  
  Returns the distance from this Actor to OtherActor, ignoring XY.
- `bool HasAuthority() const`  
  Returns whether this actor has network authority
- `bool IsActorBeingDestroyed() const`  
  Returns true if this actor is currently being destroyed, some gameplay events may be unsafe
- `bool IsActorTickEnabled() const`  
  Returns whether this actor has tick enabled or not
- `bool IsChildActor() const`  
  Returns whether this Actor was spawned by a child actor component
- `bool IsEditable() const`  
  Returns true if this actor is allowed to be displayed, selected and manipulated by the editor.
- `bool IsHiddenEd() const`  
  Returns true if this actor is hidden in the editor viewports, also checking temporary flags.
- `bool IsHiddenEdAtStartup() const`  
  Returns true if the actor is hidden upon editor startup/by default, false if it is not
- `bool IsOverlappingActor(const AActor Other) const`  
  Check whether any component of this Actor is overlapping any component of another Actor.
@param Other The other Actor to test against
@return Whether any component of this Actor is overlapping any component of another Actor.
- `bool IsSelectable() const`  
  Returns true if this actor can EVER be selected in a level in the editor.  Can be overridden by specific actors to make them unselectable.
- `bool IsTemporarilyHiddenInEditor(bool bIncludeParent = false) const`  
  Returns whether or not this actor was explicitly hidden in the editor for the duration of the current editor session
@param bIncludeParent - Whether to recurse up child actor hierarchy or not
- `AddActorLocalOffset(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the location of this component in its local reference frame.
@param DelatLocation         The change in location in local space.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the location without teleporting will not update the location of simulated child/attached components.
- `AddActorLocalRotation(FRotator DeltaRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the rotation of this component in its local reference frame
@param DeltaRotation         The change in rotation in local space.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the rotation without teleporting will not update the rotation of simulated child/attached components.
- `AddActorLocalTransform(FTransform NewTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the transform of this component in its local reference frame
@param NewTransform          The change in transform in local space.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the transform without teleporting will not update the transform of simulated child/attached components.
- `AddActorWorldOffset(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the location of this actor in world space.

@param DeltaLocation         The change in location.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the location without teleporting will not update the location of simulated child/attached components.
@param SweepHitResult        The hit result from the move if swept.
- `AddActorWorldRotation(FRotator DeltaRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the rotation of this actor in world space.

@param DeltaRotation         The change in rotation.
@param bSweep                        Whether to sweep to the target rotation (not currently supported for rotation).
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the rotation without teleporting will not update the rotation of simulated child/attached components.
@param SweepHitResult        The hit result from the move if swept.
- `AddActorWorldTransform(FTransform DeltaTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the transform of this actor in world space. Ignores scale and sets it to (1,1,1).
- `AddActorWorldTransformKeepScale(FTransform DeltaTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Adds a delta to the transform of this actor in world space. Scale is unchanged.
- `AttachRootComponentTo(USceneComponent InParent, FName InSocketName = NAME_None, EAttachLocation AttachLocationType = EAttachLocation :: KeepRelativeOffset, bool bWeldSimulatedBodies = true)`
- `AttachRootComponentToActor(AActor InParentActor, FName InSocketName = NAME_None, EAttachLocation AttachLocationType = EAttachLocation :: KeepRelativeOffset, bool bWeldSimulatedBodies = true)`
- `bool AttachToActor(AActor ParentActor, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, bool bWeldSimulatedBodies)`  
  Attaches the RootComponent of this Actor to the supplied actor, optionally at a named socket.
@param ParentActor                           Actor to attach this actor's RootComponent to
@param SocketName                            Socket name to attach to, if any
@param LocationRule                          How to handle translation when attaching.
@param RotationRule                          How to handle rotation when attaching.
@param ScaleRule                                     How to handle scale when attaching.
@param bWeldSimulatedBodies          Whether to weld together simulated physics bodies.This transfers the shapes in the welded object into the parent (if simulated), which can result in permanent changes that persist even after subsequently detaching.
@return                                                      Whether the attachment was successful or not
- `bool AttachToComponent(USceneComponent Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, bool bWeldSimulatedBodies)`  
  Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered.
@param Parent                                        Parent to attach to.
@param SocketName                            Optional socket to attach to on the parent.
@param LocationRule                          How to handle translation when attaching.
@param RotationRule                          How to handle rotation when attaching.
@param ScaleRule                                     How to handle scale when attaching.
@param bWeldSimulatedBodies          Whether to weld together simulated physics bodies. This transfers the shapes in the welded object into the parent (if simulated), which can result in permanent changes that persist even after subsequently detaching.
@return                                                      Whether the attachment was successful or not
- `DestroyActor()`  
  Destroy the actor
- `DetachFromActor(EDetachmentRule LocationRule = EDetachmentRule :: KeepRelative, EDetachmentRule RotationRule = EDetachmentRule :: KeepRelative, EDetachmentRule ScaleRule = EDetachmentRule :: KeepRelative)`  
  Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to.
@param  LocationRule                         How to handle translation when detaching.
@param  RotationRule                         How to handle rotation when detaching.
@param  ScaleRule                            How to handle scale when detaching.
- `FVector GetActorLocation() const`  
  Returns the location of the RootComponent of this Actor
- `FRotator GetActorRotation() const`  
  Returns rotation of the RootComponent of this Actor.
- `TArray<UActorComponent> GetComponentsByClass(TSubclassOf<UActorComponent> ComponentClass) const`  
  Gets all the components that inherit from the given class.
Currently returns an array of UActorComponent which must be cast to the correct type.
This intended to only be used by blueprints. Use GetComponents() in C++.
- `USceneComponent GetRootComponent() const`  
  Returns the RootComponent of this Actor
- `OnBecomeViewTarget(APlayerController PC)`  
  Event called when this Actor becomes the view target for the given PlayerController.
- `OnEndViewTarget(APlayerController PC)`  
  Event called when this Actor is no longer the view target for the given PlayerController.
- `OnReset()`  
  Event called when this Actor is reset to its initial state - used when restarting level without reloading.
- `bool SetActorLocation(FVector NewLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Move the Actor to the specified location.
@param NewLocation   The new location to move the Actor to.
@param bSweep                Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                             Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport             Whether we teleport the physics state (if physics collision is enabled for this object).
                                             If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                             If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                             If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                     Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                     Setting the location without teleporting will not update the location of simulated child/attached components.
@param SweepHitResult        The hit result from the move if swept.
@return      Whether the location was successfully set (if not swept), or whether movement occurred at all (if swept).
- `bool SetActorLocationAndRotation(FVector NewLocation, FRotator NewRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Move the actor instantly to the specified location and rotation.

@param NewLocation           The new location to teleport the Actor to.
@param NewRotation           The new rotation for the Actor.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the location without teleporting will not update the location of simulated child/attached components.
@param SweepHitResult        The hit result from the move if swept.
@return      Whether the rotation was successfully set.
- `SetActorRelativeLocation(FVector NewRelativeLocation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the actor's RootComponent to the specified relative location.
@param NewRelativeLocation   New relative location of the actor's root component
@param bSweep                                Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                             Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                             Whether we teleport the physics state (if physics collision is enabled for this object).
                                                             If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                             If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                             If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                             Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                             Setting the location without teleporting will not update the location of simulated child/attached components.
- `SetActorRelativeRotation(FRotator NewRelativeRotation, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the actor's RootComponent to the specified relative rotation
@param NewRelativeRotation   New relative rotation of the actor's root component
@param bSweep                                Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                             Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                             Whether we teleport the physics state (if physics collision is enabled for this object).
                                                             If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                             If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                             If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                             Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                             Setting the rotation without teleporting will not update the rotation of simulated child/attached components.
- `SetActorRelativeTransform(FTransform NewRelativeTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the actor's RootComponent to the specified relative transform
@param NewRelativeTransform          New relative transform of the actor's root component
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the transform without teleporting will not update the transform of simulated child/attached components.
- `bool SetActorRotation(FRotator NewRotation, bool bTeleportPhysics)`  
  Set the Actor's rotation instantly to the specified rotation.

@param       NewRotation     The new rotation for the Actor.
@param       bTeleportPhysics Whether we teleport the physics state (if physics collision is enabled for this object).
                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
         Setting the rotation without teleporting will not update the rotation of simulated child/attached components.
@return      Whether the rotation was successfully set.
- `bool SetActorTransform(FTransform NewTransform, bool bSweep, FHitResult& SweepHitResult, bool bTeleport)`  
  Set the Actors transform to the specified one.
@param NewTransform          The new transform.
@param bSweep                        Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
                                                     Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect.
@param bTeleport                     Whether we teleport the physics state (if physics collision is enabled for this object).
                                                     If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location).
                                                     If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
                                                     If CCD is on and not teleporting, this will affect objects along the entire swept volume.
                         Note that when teleporting, any child/attached components will be teleported too, maintaining their current offset even if they are being simulated.
                         Setting the transform without teleporting will not update the transform of simulated child/attached components.
- `bool Teleport(FVector DestLocation, FRotator DestRotation)`  
  Teleport this actor to a new location. If the actor doesn't fit exactly at the location specified, tries to slightly move it out of walls and such.

@param DestLocation The target destination point
@param DestRotation The target rotation at the destination
@return true if the actor has been successfully moved, or false if it couldn't fit.
- `MakeNoise(float32 Loudness = 1.000000, APawn NoiseInstigator = nullptr, FVector NoiseLocation = FVector ( ), float32 MaxRange = 0.000000, FName Tag = NAME_None)`  
  Trigger a noise caused by a given Pawn, at a given location.
Note that the NoiseInstigator Pawn MUST have a PawnNoiseEmitterComponent for the noise to be detected by a PawnSensingComponent.
Senders of MakeNoise should have an Instigator if they are not pawns, or pass a NoiseInstigator.

@param Loudness The relative loudness of this noise. Usual range is 0 (no noise) to 1 (full volume). If MaxRange is used, this scales the max range, otherwise it affects the hearing range specified by the sensor.
@param NoiseInstigator Pawn responsible for this noise.  Uses the actor's Instigator if NoiseInstigator is null
@param NoiseLocation Position of noise source.  If zero vector, use the actor's location.
@param MaxRange Max range at which the sound may be heard. A value of 0 indicates no max range (though perception may have its own range). Loudness scales the range. (Note: not supported for legacy PawnSensingComponent, only for AIPerception)
@param Tag Identifier for the noise.
- `PrestreamTextures(float32 Seconds, bool bEnableStreaming, int CinematicTextureGroups = 0)`  
  Calls PrestreamTextures() for all the actor's meshcomponents.
@param Seconds - Number of seconds to force all mip-levels to be resident
@param bEnableStreaming      - Whether to start (true) or stop (false) streaming
@param CinematicTextureGroups - Bitfield indicating which texture groups that use extra high-resolution mips
- `ActorBeginCursorOver()`  
  Event when this actor has the mouse moved over it with the clickable interface.
- `ActorBeginOverlap(AActor OtherActor)`  
  Event when this actor overlaps another actor, for example a player walking into a trigger.
For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.
@note Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.
- `ActorEndCursorOver()`  
  Event when this actor has the mouse moved off of it with the clickable interface.
- `ActorEndOverlap(AActor OtherActor)`  
  Event when an actor no longer overlaps another actor, and they have separated.
@note Components on both this and the other Actor must have bGenerateOverlapEvents set to true to generate overlap events.
- `ActorOnClicked(FKey ButtonPressed)`  
  Event when this actor is clicked by the mouse when using the clickable interface.
- `ActorOnInputTouchBegin(ETouchIndex FingerIndex)`  
  Event when this actor is touched when click events are enabled.
- `ActorOnInputTouchEnd(ETouchIndex FingerIndex)`  
  Event when this actor is under the finger when untouched when click events are enabled.
- `ActorOnInputTouchEnter(ETouchIndex FingerIndex)`  
  Event when this actor has a finger moved over it with the clickable interface.
- `ActorOnInputTouchLeave(ETouchIndex FingerIndex)`  
  Event when this actor has a finger moved off of it with the clickable interface.
- `ActorOnReleased(FKey ButtonReleased)`  
  Event when this actor is under the mouse when left mouse button is released while using the clickable interface.
- `AnyDamage(float Damage, const UDamageType DamageType, AController InstigatedBy, AActor DamageCauser)`  
  Event when this actor takes ANY damage
- `AsyncPhysicsTick(float DeltaSeconds, float SimSeconds)`  
  Event called every physics tick if bAsyncPhysicsTickEnabled is true
- `BeginPlay()`  
  Event when play begins for this actor.
- `Destroyed()`  
  Called when the actor has been explicitly destroyed.
- `EndPlay(EEndPlayReason EndPlayReason)`  
  Event to notify blueprints this actor is being deleted or removed from a level.
- `Hit(UPrimitiveComponent MyComp, AActor Other, UPrimitiveComponent OtherComp, bool bSelfMoved, FVector HitLocation, FVector HitNormal, FVector NormalImpulse, FHitResult Hit)`  
  Event when this actor bumps into a blocking object, or blocks another actor that bumps into it.
This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation.
For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.

@note For collisions during physics simulation to generate hit events, 'Simulation Generates Hit Events' must be enabled.
@note When receiving a hit from another object's movement (bSelfMoved is false), the directions of 'Hit.Normal' and 'Hit.ImpactNormal'
will be adjusted to indicate force from the other object against this object.
@note NormalImpulse will be filled in for physics-simulating bodies, but will be zero for swept-component blocking collisions.
- `PointDamage(float Damage, const UDamageType DamageType, FVector HitLocation, FVector HitNormal, UPrimitiveComponent HitComponent, FName BoneName, FVector ShotFromDirection, AController InstigatedBy, AActor DamageCauser, FHitResult HitInfo)`  
  Event when this actor takes POINT damage
- `RadialDamage(float DamageReceived, const UDamageType DamageType, FVector Origin, FHitResult HitInfo, AController InstigatedBy, AActor DamageCauser)`  
  Event when this actor takes RADIAL damage
- `Tick(float DeltaSeconds)`  
  Event called every frame, if ticking is enabled
- `RegisterAsFocalPointInPhysicsReplicationLOD() const`  
  Register this actors root components physics object as a focal particle in Physics Repliocation LOD
- `RemoveTickPrerequisiteActor(AActor PrerequisiteActor)`  
  Remove tick dependency on PrerequisiteActor.
- `RemoveTickPrerequisiteComponent(UActorComponent PrerequisiteComponent)`  
  Remove tick dependency on PrerequisiteComponent.
- `SetActorEnableCollision(bool bNewActorEnableCollision)`  
  Allows enabling/disabling collision for the whole actor
- `SetActorHiddenInGame(bool bNewHidden)`  
  Sets the actor to be hidden in the game
@param  bNewHidden      Whether or not to hide the actor and all its components
- `SetActorLabel(FString NewActorLabel, bool bMarkDirty = true)`  
  Assigns a new label to this actor.  Actor labels are only available in development builds.
@param       NewActorLabel   The new label string to assign to the actor.  If empty, the actor will have a default label.
@param       bMarkDirty              If true the actor's package will be marked dirty for saving.  Otherwise it will not be.  You should pass false for this parameter if dirtying is not allowed (like during loads)
- `SetActorRelativeScale3D(FVector NewRelativeScale)`  
  Set the actor's RootComponent to the specified relative scale 3d
@param NewRelativeScale      New scale to set the actor's RootComponent to
- `SetActorScale3D(FVector NewScale3D)`  
  Set the Actor's world-space scale.
- `SetActorTickEnabled(bool bEnabled)`  
  Set this actor's tick functions to be enabled or disabled. Only has an effect if the function is registered
This only modifies the tick function on actor itself
@param       bEnabled        Whether it should be enabled or not
- `SetActorTickInterval(float32 TickInterval)`  
  Sets the tick interval of this actor's primary tick function. Will not enable a disabled tick function. Takes effect on next tick.
@param TickInterval  The rate at which this actor should be ticking
- `SetAutoDestroyWhenFinished(bool bVal)`
- `SetFolderPath(FName NewFolderPath)`  
  Assigns a new folder to this actor. Actor folder paths are only available in development builds.
@param       NewFolderPath           The new folder to assign to the actor.
- `SetIsTemporarilyHiddenInEditor(bool bIsHidden)`  
  Explicitly sets whether or not this actor is hidden in the editor for the duration of the current editor session
@param bIsHidden     True if the actor is hidden
- `SetLifeSpan(float32 InLifespan)`  
  Set the lifespan of this actor. When it expires the object will be destroyed. If requested lifespan is 0, the timer is cleared and the actor will not be destroyed.
- `SetMinNetUpdateFrequency(float32 MinFrequency)`  
  Set the frequency to throttle down to when replicated properties are changing infrequently.
- `SetNetCullDistanceSquared(float32 DistanceSq)`  
  Set the square of the max distance from the client's viewpoint that this actor is relevant and will be replicated.
- `SetNetDormancy(ENetDormancy NewDormancy)`  
  Puts actor in dormant networking state
- `SetNetUpdateFrequency(float32 Frequency)`  
  Set the frequency at which this object will be considered for replication.
- `SetOwner(AActor NewOwner)`  
  Set the owner of this Actor, used primarily for network replication.
@param NewOwner      The Actor who takes over ownership of this Actor
- `SetPhysicsReplicationMode(EPhysicsReplicationMode ReplicationMode)`  
  Set the physics replication mode of this body, via EPhysicsReplicationMode
- `SetRayTracingGroupId(int InRaytracingGroupId)`  
  Specify a RayTracingGroupId for this actors. Components with invalid RayTracingGroupId will inherit the actors.
- `SetReplicateMovement(bool bInReplicateMovement)`  
  Set whether this actor's movement replicates to network clients.
@param bInReplicateMovement Whether this Actor's movement replicates to clients.
- `SetReplicates(bool bInReplicates)`  
  Set whether this actor replicates to network clients. When this actor is spawned on the server it will be sent to clients as well.
Properties flagged for replication will update on clients if they change on the server.
Internally changes the RemoteRole property and handles the cases where the actor needs to be added to the network actor list.
@param bInReplicates Whether this Actor replicates to network clients.
@see https://docs.unrealengine.com/InteractiveExperiences/Networking/Actors
- `SetTickableWhenPaused(bool bTickableWhenPaused)`  
  Sets whether this actor can tick when paused.
- `SetTickGroup(ETickingGroup NewTickGroup)`  
  Sets the ticking group for this actor.
@param NewTickGroup the new value to assign
- `TearOff()`  
  Networking - Server - TearOff this actor to stop replication to clients. Will set bTearOff to true.
- `UnregisterAsFocalPointInPhysicsReplicationLOD() const`  
  Unregister this actors root components physics object from being a focal particle in Physics Repliocation LOD
- `ConstructionScript()`  
  Construction script, the place to spawn components and do other setup.
@note Name used in CreateBlueprint function
        // AS FIX (LV): Add ScriptName qualifier
- `bool WasRecentlyRendered(float32 Tolerance = 0.200000) const`  
  Returns true if this actor has been rendered "recently", with a tolerance in seconds to define what "recent" means.
e.g.: If a tolerance of 0.1 is used, this function will return true only if the actor was rendered in the last 0.1 seconds of game time.

@param Tolerance  How many seconds ago the actor last render time can be and still count as having been "recently" rendered.
@return Whether this actor was recently rendered.
- `FScriptTypedElementHandle AcquireEditorElementHandle(bool bAllowCreate = true) const`
- `AddActorLocalOffset(FVector DeltaLocation)`
- `AddActorLocalRotation(FRotator DeltaRotation)`
- `AddActorLocalRotation(FQuat DeltaRotation)`
- `AddActorLocalTransform(FTransform DeltaTransform)`
- `AddActorWorldOffset(FVector DeltaLocation)`
- `AddActorWorldRotation(FRotator DeltaRotation)`
- `AddActorWorldRotation(FQuat DeltaRotation)`
- `AddActorWorldTransform(FTransform DeltaTransform)`
- `AttachToActor(AActor ParentActor, FName SocketName = NAME_None, EAttachmentRule AttachmentRule = EAttachmentRule :: SnapToTarget)`
- `AttachToComponent(USceneComponent Parent, FName SocketName = NAME_None, EAttachmentRule AttachmentRule = EAttachmentRule :: SnapToTarget)`
- `FQuat GetActorQuat() const`
- `FVector GetActorRelativeLocation() const`
- `FRotator GetActorRelativeRotation() const`
- `FTransform GetActorRelativeTransform() const`
- `TArray<AActor> GetAttachedActors(bool bRecursivelyIncludeAttachedActors = false) const`  
  Find all Actors which are attached directly to a component in this actor
- `TArray<AActor> GetAttachedActorsOfClass(TSubclassOf<AActor> ActorClass, bool bRecursivelyIncludeAttachedActors = false) const`  
  Find all Actors of a particular class which are attached directly to a component in this actor
- `TSet<UActorComponent> GetComponents() const`  
  Get all components that are on the actor.
- `TArray<AActor> GetOverlappingActorsOfClass(TSubclassOf<AActor> ActorClass) const`  
  Gets all actors that are overlapping this actor that have a specific class.
- `RerunConstructionScripts()`
- `SetActorLocation(FVector NewLocation)`
- `SetActorLocationAndRotation(FVector NewLocation, FRotator NewRotation, bool bTeleport = false)`
- `SetActorLocationAndRotation(FVector NewLocation, FQuat NewRotation, bool bTeleport = false)`
- `SetActorQuat(FQuat NewRotation)`
- `SetActorRelativeLocation(FVector NewRelativeLocation)`
- `SetActorRelativeRotation(FRotator NewRelativeRotation)`
- `SetActorRelativeRotation(FQuat NewRelativeRotation)`
- `SetActorRelativeTransform(FTransform NewRelativeTransform)`
- `SetActorRotation(FRotator NewRotation)`
- `SetActorRotation(FQuat NewRotation)`
- `SetActorTransform(FTransform NewTransform)`
- `SetbRunConstructionScriptOnDrag(bool Value)`
- `UActorComponent CreateComponent(TSubclassOf<UActorComponent> ComponentClass, FName WithName = NAME_None)`
- `UActorComponent GetComponent(TSubclassOf<UActorComponent> ComponentClass, FName WithName = NAME_None) const`
- `UActorComponent GetOrCreateComponent(TSubclassOf<UActorComponent> ComponentClass, FName WithName = NAME_None)`
- `GetAllComponents(UClass ComponentClass, TArray<UActorComponent>& OutComponents) const`

---

