### UActorComponent


ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors.
ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents.

@see [ActorComponent](https://docs.unrealengine.com/latest/INT/Programming/UnrealArchitecture/Actors/Components/index.html#actorcomponents)
@see USceneComponent
@see UPrimitiveComponent

**属性**:

- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the component]`
- `TArray<TObjectPtr<UAssetUserData>> AssetUserDataEditorOnly [Array of user data stored with the component]`
- `TArray<FName> ComponentTags [Array of tags that can be used for grouping and categorizing. Can also be accessed from scripting.]`
- `FActorComponentActivatedSignature OnComponentActivated [Called when the component has been activated, with parameter indicating if it was from a reset]`
- `FActorComponentDeactivateSignature OnComponentDeactivated [Called when the component has been deactivated]`
- `FActorComponentTickFunction PrimaryComponentTick [Main tick function for the Component]`
- `bool bAutoActivate [Whether the component is activated at creation or must be explicitly activated.]`
- `bool bCanEverAffectNavigation [Whether this component can potentially influence navigation]`
- `bool bEditableWhenInherited [True if this component can be modified when it was inherited from a parent actor class]`
- `bool bIsEditorOnly [If true, the component will be excluded from non-editor builds]`
- `bool bReplicateUsingRegisteredSubObjectList [When true the replication system will only replicate the registered subobjects list
When false the replication system will instead call the virtual ReplicateSubObjects() function where the subobjects need to be manually replicated.]`
- `bool bReplicates [Is this component currently replicating? Should the network code consider it for replication? Owning Actor must be replicating first!]`


**方法**:

- `MarkRenderStateDirty()`
- `bool HasBegunPlay() const`
- `DestroyComponent()`
- `SetbTickInEditor(bool Value)`
- `SetbIsEditorOnly(bool Value)`
- `EComponentCreationMethod GetComponentCreationMethod() const`
- `SetIsVisualizationComponent(bool Value)`
- `bool IsVisualizationComponent() const`
- `Activate(bool bReset = false)`  
  Activates the SceneComponent, should be overridden by native child classes.
@param bReset - Whether the activation should happen even if ShouldActivate returns false.
- `AddTickPrerequisiteActor(AActor PrerequisiteActor)`  
  Make this component tick after PrerequisiteActor
- `AddTickPrerequisiteComponent(UActorComponent PrerequisiteComponent)`  
  Make this component tick after PrerequisiteComponent.
- `bool ComponentHasTag(FName Tag) const`  
  See if this component contains the supplied tag
- `Deactivate()`  
  Deactivates the SceneComponent.
- `float32 GetComponentTickInterval() const`  
  Returns the tick interval for this component's primary tick function, which is the frequency in seconds at which it will be executed
- `AActor GetOwner() const`  
  Follow the Outer chain to get the  AActor  that 'Owns' this component
- `bool IsActive() const`  
  Returns whether the component is active or not
@return - The active state of the component.
- `bool IsBeingDestroyed() const`  
  Returns whether the component is in the process of being destroyed.
- `bool IsComponentTickEnabled() const`  
  Returns whether this component has tick enabled or not
- `DestroyComponent(UObject Object)`  
  Unregister and mark for pending kill a component.  This may not be used to destroy a component that is owned by an actor unless the owning actor is calling the function.
- `AsyncPhysicsTick(float DeltaSeconds, float SimSeconds)`  
  Event called every async physics tick if bAsyncPhysicsTickEnabled is true
- `BeginPlay()`  
  Blueprint implementable event for when the component is beginning play, called before its owning actor's BeginPlay
or when the component is dynamically created if the Actor has already BegunPlay.
- `EndPlay(EEndPlayReason EndPlayReason)`  
  Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.
- `Tick(float DeltaSeconds)`  
  Event called every frame if tick is enabled
- `RemoveTickPrerequisiteActor(AActor PrerequisiteActor)`  
  Remove tick dependency on PrerequisiteActor.
- `RemoveTickPrerequisiteComponent(UActorComponent PrerequisiteComponent)`  
  Remove tick dependency on PrerequisiteComponent.
- `SetActive(bool bNewActive, bool bReset = false)`  
  Sets whether the component is active or not
@param bNewActive - The new active state of the component
@param bReset - Whether the activation should happen even if ShouldActivate returns false.
- `SetAutoActivate(bool bNewAutoActivate)`  
  Sets whether the component should be auto activate or not. Only safe during construction scripts.
@param bNewAutoActivate - The new auto activate state of the component
- `SetComponentTickEnabled(bool bEnabled)`  
  Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered

@param       bEnabled - Whether it should be enabled or not
- `SetComponentTickInterval(float32 TickInterval)`  
  Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick.
@param TickInterval   The duration between ticks for this component's primary tick function
- `SetComponentTickIntervalAndCooldown(float32 TickInterval)`  
  Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect imediately.
@param TickInterval   The duration between ticks for this component's primary tick function
- `SetIsReplicated(bool ShouldReplicate)`  
  Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components)
- `SetTickableWhenPaused(bool bTickableWhenPaused)`  
  Sets whether this component can tick when paused.
- `SetTickGroup(ETickingGroup NewTickGroup)`  
  Changes the ticking group for this component
- `ToggleActive()`  
  Toggles the active state of the component
- `FScriptTypedElementHandle AcquireEditorElementHandle(bool bAllowCreate = true) const`

---

