### UNiagaraComponent


UNiagaraComponent is the primitive component for a Niagara System.
@see ANiagaraActor
@see UNiagaraSystem

**属性**:

- `UNiagaraSystem Asset []`
- `EAttachmentRule AutoAttachLocationRule [Options for how we handle our location when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
@see bAutoManageAttachment, EAttachmentRule]`
- `TWeakObjectPtr<USceneComponent> AutoAttachParent [Component we automatically attach to when activated, if bAutoManageAttachment is true.
If null during registration, we assign the existing AttachParent and defer attachment until we activate.
@see bAutoManageAttachment]`
- `EAttachmentRule AutoAttachRotationRule [Options for how we handle our rotation when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
@see bAutoManageAttachment, EAttachmentRule]`
- `EAttachmentRule AutoAttachScaleRule [Options for how we handle our scale when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
@see bAutoManageAttachment, EAttachmentRule]`
- `FName AutoAttachSocketName [Socket we automatically attach to on the AutoAttachParent, if bAutoManageAttachment is true.
@see bAutoManageAttachment]`
- `TMap<FNiagaraVariableBase,FNiagaraVariant> InstanceParameterOverrides []`
- `ENiagaraOcclusionQueryMode OcclusionQueryMode`
- `FOnNiagaraSystemFinished OnSystemFinished [Called when the particle system is done]`
- `int RandomSeedOffset [Offsets the deterministic random seed of all emitters. Used to achieve variety between components, while still achieving determinism.
WARNINGS:
- If this value is set in a non-deterministic way, it has the potential to break determinism of the entire system.
- This value is applied when emitters are activated/reset, and changing them while the emitter is active has no effect.]`
- `TOptional<int> SimCacheDebugNumFramesToCapture []`
- `TMap<FNiagaraVariableBase,FNiagaraVariant> TemplateParameterOverrides []`
- `ENiagaraTickBehavior TickBehavior [Allows you to control how Niagara selects the tick group, changing this while an instance is active will result in not change as it is cached.]`
- `int WarmupTickCount [Number of ticks to process for warmup of the system. Total warmup time is WarmupTickCount * WarmupTickDelta.]`
- `float32 WarmupTickDelta [Delta time used when ticking the system in warmup mode.]`
- `bool bAllowScalability [Controls whether we allow scalability culling for this component. If enabled, this component's FX may be culled due to things such as distance, visibility, instance counts and performance.]`
- `bool bAutoAttachWeldSimulatedBodies [Option for how we handle bWeldSimulatedBodies when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
@see bAutoManageAttachment]`
- `bool bAutoManageAttachment [True if we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed.
This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null).
When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored.
This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.
@see AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType]`
- `bool bEnableGpuComputeDebug [When true the GPU simulation debug display will enabled, allowing information used during simulation to be visualized.]`
- `bool bOverrideWarmupSettings [When true then this instance will override the system's warmup settings.]`
- `bool bWaitForCompilationOnActivate`


**方法**:

- `AdvanceSimulation(int TickCount, float32 TickDeltaSeconds)`  
  Advances this system's simulation by the specified number of ticks and delta time.
- `AdvanceSimulationByTime(float32 SimulateTime, float32 TickDeltaSeconds)`  
  Advances this system's simulation by the specified time in seconds and delta time. Advancement is done in whole ticks of TickDeltaSeconds so actual simulated time will be the nearest lower multiple of TickDeltaSeconds.
- `ClearEmitterFixedBounds(FName EmitterName)`  
  Clear any previously set fixed bounds for the emitter instance.
- `ClearSimCache(bool bResetSystem = false)`  
  Clear any active simulation cache.
When clearing a simulation cache that has been running you may wish to reset or continue, this option is only
valid when using a full simulation cache.  A renderer only cache will always reset as we can not continue the
simulation due to missing simulation data.
- `ClearSystemFixedBounds()`  
  Clear any previously set fixed bounds for the system instance.
- `ENiagaraAgeUpdateMode GetAgeUpdateMode() const`
- `bool GetAllowScalability() const`
- `UNiagaraSystem GetAsset() const`
- `float32 GetCustomTimeDilation() const`
- `UNiagaraDataInterface GetDataInterface(FString Name)`
- `float32 GetDesiredAge() const`  
  Gets the desired age of the System instance.  This is only relevant when using the DesiredAge age update mode.
- `FBox GetEmitterFixedBounds(FName EmitterName) const`  
  Gets the fixed bounds for an emitter instance.
This will return the user set fixed bounds if set, or the emitters fixed bounds if set.
Note: The returned box may be invalid if no fixed bounds exist
- `bool GetForceLocalPlayerEffect() const`
- `bool GetForceSolo() const`
- `bool GetLockDesiredAgeDeltaTimeToSeekDelta() const`  
  Gets whether or not the delta time used to tick the system instance when using desired age is locked to the seek delta.  When true, the system instance
      will only be ticked when the desired age has changed by more than the seek delta.  When false the system instance will be ticked by the change in desired
      age when not seeking.
- `float32 GetMaxSimTime() const`  
  Get the maximum CPU time in seconds we will simulate to the desired age, when we go beyond this limit ticks will be processed in the next frame.
This is only relevant when using the DesiredAge age update mode.
Note: The componet will not be visibile if we have ticks to process and SetCanRenderWhileSeeking is set to true
- `ENiagaraOcclusionQueryMode GetOcclusionQueryMode() const`
- `float32 GetPreviewLODDistance() const`
- `bool GetPreviewLODDistanceEnabled() const`
- `int GetRandomSeedOffset() const`
- `float32 GetSeekDelta() const`  
  Gets the delta value which is used when seeking from the current age, to the desired age.  This is only relevant
      when using the DesiredAge age update mode.
- `UNiagaraSimCache GetSimCache() const`  
  Get the active simulation cache, will return null if we do not have an active one.
- `FBox GetSystemFixedBounds() const`  
  Gets the fixed bounds for the system instance.
This will return the user set fixed bounds if set, or the systems fixed bounds if set.
Note: The returned box may be invalid if no fixed bounds exist
- `ENiagaraTickBehavior GetTickBehavior() const`
- `bool GetVariableBool(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara bool parameter by name.
- `FLinearColor GetVariableColor(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara Linear Color parameter by name.
- `float32 GetVariableFloat(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara float parameter by name.
- `int GetVariableInt(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara int parameter by name.
- `FMatrix GetVariableMatrix(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara matrix parameter by name.
- `FVector GetVariablePosition(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara Position parameter by name.
- `FQuat GetVariableQuat(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara quaternion parameter by name.
- `FVector2D GetVariableVec2(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara Vector2 parameter by name.
- `FVector GetVariableVec3(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara Vector3 parameter by name.
- `FVector4 GetVariableVec4(FName InVariableName, bool& bIsValid) const`  
  Gets a Niagara Vector4 parameter by name.
- `InitForPerformanceBaseline()`  
  Initializes this component for capturing a performance baseline.
This will do things such as disabling distance culling and setting a LODDistance of 0 to ensure the effect is at it's maximum cost.
- `bool IsPaused() const`
- `ReinitializeSystem()`  
  Called on when an external object wishes to force this System to reinitialize itself from the System data.
- `ResetSystem()`  
  Resets the System to it's initial pre-simulated state.
- `SeekToDesiredAge(float32 InDesiredAge)`  
  Sets the desired age of the System instance and designates that this change is a seek.  When seeking to a desired age the
          The component can optionally prevent rendering.
- `SetAgeUpdateMode(ENiagaraAgeUpdateMode InAgeUpdateMode)`  
  Sets the age update mode for the System instance.
- `SetAllowScalability(bool bAllow)`  
  Set whether this component is allowed to perform scalability checks and potentially be culled etc. Occasionally it is useful to disable this for specific components. E.g. Effects on the local player.
- `SetAsset(UNiagaraSystem InAsset, bool bResetExistingOverrideParameters = true)`  
  Switch which asset the component is using.
This requires Niagara to wait for concurrent execution and the override parameter store to be synchronized with the new asset.
By default existing parameters are reset when we call SetAsset, modify bResetExistingOverrideParameters to leave existing parameter data as is.
- `SetAutoDestroy(bool bInAutoDestroy)`
- `SetCanRenderWhileSeeking(bool bInCanRenderWhileSeeking)`  
  Sets whether or not the system can render while seeking.
- `SetCustomTimeDilation(float32 Dilation = 1.000000)`  
  Sets the custom time dilation value for the component.
Note: This is only available on components that are in solo mode currently.
- `SetDesiredAge(float32 InDesiredAge)`  
  Sets the desired age of the System instance.  This is only relevant when using the DesiredAge age update mode.
- `SetEmitterFixedBounds(FName EmitterName, FBox LocalBounds)`  
  Sets the fixed bounds for an emitter instance, this overrides all other bounds.
The box is expected to be in local space not world space.
A default uninitialized box will clear the fixed bounds and revert back to emitter fixed / dynamic bounds.
- `SetForceLocalPlayerEffect(bool bIsPlayerEffect)`
- `SetForceSolo(bool bInForceSolo)`
- `SetGpuComputeDebug(bool bEnableDebug)`
- `SetLockDesiredAgeDeltaTimeToSeekDelta(bool bLock)`  
  Sets whether or not the delta time used to tick the system instance when using desired age is locked to the seek delta.  When true, the system instance
      will only be ticked when the desired age has changed by more than the seek delta.  When false the system instance will be ticked by the change in desired
      age when not seeking.
- `SetMaxSimTime(float32 InMaxTime)`  
  Sets the maximum CPU time in seconds we will simulate to the desired age, when we go beyond this limit ticks will be processed in the next frame.
This is only relevant when using the DesiredAge age update mode.
Note: The componet will not be visibile if we have ticks to process and SetCanRenderWhileSeeking is set to true
- `SetOcclusionQueryMode(ENiagaraOcclusionQueryMode Mode)`
- `SetPaused(bool bInPaused)`
- `SetPreviewLODDistance(bool bEnablePreviewLODDistance, float32 PreviewLODDistance, float32 PreviewMaxDistance)`
- `SetRandomSeedOffset(int NewRandomSeedOffset)`
- `SetRenderingEnabled(bool bInRenderingEnabled)`  
  Sets whether or not rendering is enabled for this component.
- `SetSeekDelta(float32 InSeekDelta)`  
  Sets the delta value which is used when seeking from the current age, to the desired age.  This is only relevant
      when using the DesiredAge age update mode.
- `SetSimCache(UNiagaraSimCache SimCache, bool bResetSystem = false)`  
  Sets the simulation cache to use for the component.
A null SimCache parameter will clear the active simulation cache.
When clearing a simulation cache that has been running you may wish to reset or continue, this option is only
valid when using a full simulation cache.  A renderer only cache will always reset as we can not continue the
simulation due to missing simulation data.
- `SetSystemFixedBounds(FBox LocalBounds)`  
  Sets the fixed bounds for the system instance, this overrides all other bounds.
The box is expected to be in local space not world space.
A default uninitialized box will clear the fixed bounds and revert back to system fixed / dynamic bounds.
- `SetTickBehavior(ENiagaraTickBehavior NewTickBehavior)`
- `SetVariableActor(FName InVariableName, AActor Actor)`
- `SetVariableBool(FName InVariableName, bool InValue)`  
  Sets a Niagara bool parameter by name, overriding locally if necessary.
- `SetVariableFloat(FName InVariableName, float32 InValue)`  
  Sets a Niagara float parameter by name, overriding locally if necessary.
- `SetVariableInt(FName InVariableName, int InValue)`  
  Sets a Niagara int parameter by name, overriding locally if necessary.
- `SetVariableLinearColor(FName InVariableName, FLinearColor InValue)`  
  Sets a Niagara FLinearColor parameter by name, overriding locally if necessary.
- `SetVariableMaterial(FName InVariableName, UMaterialInterface Object)`
- `SetVariableMatrix(FName InVariableName, FMatrix InValue)`  
  Sets a Niagara matrix parameter by name, overriding locally if necessary.
- `SetVariableObject(FName InVariableName, UObject Object)`
- `SetVariablePosition(FName InVariableName, FVector InValue)`  
  Sets a Niagara Position parameter by name, overriding locally if necessary.
- `SetVariableQuat(FName InVariableName, FQuat InValue)`  
  Sets a Niagara quaternion parameter by name, overriding locally if necessary.
- `SetVariableStaticMesh(FName InVariableName, UStaticMesh InValue)`
- `SetVariableTexture(FName InVariableName, UTexture Texture)`
- `SetVariableTextureRenderTarget(FName InVariableName, UTextureRenderTarget TextureRenderTarget)`
- `SetVariableVec2(FName InVariableName, FVector2D InValue)`  
  Sets a Niagara Vector2 parameter by name, overriding locally if necessary.
- `SetVariableVec3(FName InVariableName, FVector InValue)`  
  Sets a Niagara Vector3 parameter by name, overriding locally if necessary.
- `SetVariableVec4(FName InVariableName, FVector4 InValue)`  
  Sets a Niagara Vector4 parameter by name, overriding locally if necessary.

---

