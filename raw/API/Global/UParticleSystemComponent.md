### UParticleSystemComponent


A particle emitter.

**属性**:

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
If no auto attach socket name is set during registration, the current attach socket will be
assigned to AutoAttachSocketName and used when activated.
@see bAutoManageAttachment]`
- `float32 CustomTimeDilation [Scales DeltaTime in UParticleSystemComponent::Tick(...)]`
- `TArray<FParticleSysParam> InstanceParameters [Array holding name instance parameters for this ParticleSystemComponent.
Parameters can be used in Cascade using DistributionFloat/VectorParticleParameters.]`
- `ParticleSystemLODMethod LODMethod [The method of LOD level determination to utilize for this particle system]`
- `FParticleBurstSignature OnParticleBurst`
- `FParticleCollisionSignature OnParticleCollide`
- `FParticleDeathSignature OnParticleDeath`
- `FParticleSpawnSignature OnParticleSpawn`
- `FOnSystemFinished OnSystemFinished [Called when the particle system is done]`
- `float32 SecondsBeforeInactive [Number of seconds of emitter not being rendered that need to pass before it
no longer gets ticked/ becomes inactive.]`
- `UParticleSystem Template`
- `bool bAllowRecycling [If true, this Particle System will be available for recycling after it has completed. Auto-destroyed systems cannot be recycled.
Some systems (currently particle trail effects) can recycle components to avoid respawning them to play new effects.
This is only an optimization and does not change particle system behavior, aside from not triggering normal component initialization events more than once.]`
- `bool bAutoAttachWeldSimulatedBodies [Option for how we handle bWeldSimulatedBodies when we attach to the AutoAttachParent, if bAutoManageAttachment is true.
@see bAutoManageAttachment]`
- `bool bAutoManageAttachment [True if we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed.
This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null).
When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored.
This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.
@see AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType]`
- `bool bOverrideLODMethod [indicates that the component's LODMethod overrides the Template's]`
- `bool bResetOnDetach`


**方法**:

- `BeginTrails(FName InFirstSocketName, FName InSecondSocketName, ETrailWidthMode InWidthMode, float32 InWidth)`  
  Begins all trail emitters in this component.

@param        InFirstSocketName       The name of the first socket for the trail.
@param        InSecondSocketName      The name of the second socket for the trail.
@param        InWidthMode                     How the width value is applied to the trail.
@param        InWidth                         The width of the trail.
- `UMaterialInstanceDynamic CreateNamedDynamicMaterialInstance(FName InName, UMaterialInterface SourceMaterial = nullptr)`  
  Creates a Dynamic Material Instance for the specified named material override, optionally from the supplied material.
@param Name - The slot name of the material to replace.  If invalid, the material is unchanged and NULL is returned.
- `EndTrails()`  
  Ends all trail emitters in this component.
- `GenerateParticleEvent(FName InEventName, float32 InEmitterTime, FVector InLocation, FVector InDirection, FVector InVelocity)`  
  Record a kismet event.

@param  InEventName                             The name of the event that fired.
@param  InEmitterTime                   The emitter time when the event fired.
@param  InLocation                              The location of the particle when the event fired.
@param  InVelocity                              The velocity of the particle when the event fired.
@param  InNormal                                Normal vector of the collision in coordinate system of the returner. Zero=none.
- `bool GetBeamEndPoint(int EmitterIndex, FVector& OutEndPoint) const`  
  Get the beam end point

@param  EmitterIndex            The index of the emitter to get the value of

@return true            EmitterIndex is valid and End point is set - OutEndPoint is valid
                false           EmitterIndex invalid or End point is not set - OutEndPoint is invalid
- `bool GetBeamSourcePoint(int EmitterIndex, int SourceIndex, FVector& OutSourcePoint) const`  
  Get the beam source point

@param  EmitterIndex            The index of the emitter to get
@param  SourceIndex                     Which beam within the emitter to get
@param  OutSourcePoint          Value of source point

@return true            EmitterIndex and SourceIndex are valid - OutSourcePoint is valid
                false           EmitterIndex or SourceIndex is invalid - OutSourcePoint is invalid
- `bool GetBeamSourceStrength(int EmitterIndex, int SourceIndex, float32& OutSourceStrength) const`  
  Get the beam source strength

@param  EmitterIndex            The index of the emitter to get
@param  SourceIndex                     Which beam within the emitter to get
@param  OutSourceStrength               Value of source tangent

@return true            EmitterIndex and SourceIndex are valid - OutSourceStrength is valid
                false           EmitterIndex or SourceIndex is invalid - OutSourceStrength is invalid
- `bool GetBeamSourceTangent(int EmitterIndex, int SourceIndex, FVector& OutTangentPoint) const`  
  Get the beam source tangent

@param  EmitterIndex            The index of the emitter to get
@param  SourceIndex                     Which beam within the emitter to get
@param  OutTangentPoint         Value of source tangent

@return true            EmitterIndex and SourceIndex are valid - OutTangentPoint is valid
                false           EmitterIndex or SourceIndex is invalid - OutTangentPoint is invalid
- `bool GetBeamTargetPoint(int EmitterIndex, int TargetIndex, FVector& OutTargetPoint) const`  
  Get the beam target point

@param  EmitterIndex            The index of the emitter to get
@param  TargetIndex                     Which beam within the emitter to get
@param  OutTargetPoint          Value of target point

@return true            EmitterIndex and TargetIndex are valid - OutTargetPoint is valid
                false           EmitterIndex or TargetIndex is invalid - OutTargetPoint is invalid
- `bool GetBeamTargetStrength(int EmitterIndex, int TargetIndex, float32& OutTargetStrength) const`  
  Get the beam target strength

@param  EmitterIndex            The index of the emitter to get
@param  TargetIndex                     Which beam within the emitter to get
@param  OutTargetStrength       Value of target tangent

@return true            EmitterIndex and TargetIndex are valid - OutTargetStrength is valid
                false           EmitterIndex or TargetIndex is invalid - OutTargetStrength is invalid
- `bool GetBeamTargetTangent(int EmitterIndex, int TargetIndex, FVector& OutTangentPoint) const`  
  Get the beam target tangent

@param  EmitterIndex            The index of the emitter to get
@param  TargetIndex                     Which beam within the emitter to get
@param  OutTangentPoint         Value of target tangent

@return true            EmitterIndex and TargetIndex are valid - OutTangentPoint is valid
                false           EmitterIndex or TargetIndex is invalid - OutTangentPoint is invalid
- `UMaterialInterface GetNamedMaterial(FName InName) const`  
  Returns a named material. If this named material is not found, returns NULL.
- `int GetNumActiveParticles() const`  
  Get the current number of active particles in this system
- `SetBeamEndPoint(int EmitterIndex, FVector NewEndPoint)`  
  Set the beam end point

@param  EmitterIndex            The index of the emitter to set it on
@param  NewEndPoint                     The value to set it to
- `SetBeamSourcePoint(int EmitterIndex, FVector NewSourcePoint, int SourceIndex)`  
  Set the beam source point

@param  EmitterIndex            The index of the emitter to set it on
@param  NewSourcePoint          The value to set it to
@param  SourceIndex                     Which beam within the emitter to set it on
- `SetBeamSourceStrength(int EmitterIndex, float32 NewSourceStrength, int SourceIndex)`  
  Set the beam source strength

@param  EmitterIndex            The index of the emitter to set it on
@param  NewSourceStrength       The value to set it to
@param  SourceIndex                     Which beam within the emitter to set it on
- `SetBeamSourceTangent(int EmitterIndex, FVector NewTangentPoint, int SourceIndex)`  
  Set the beam source tangent

@param  EmitterIndex            The index of the emitter to set it on
@param  NewTangentPoint         The value to set it to
@param  SourceIndex                     Which beam within the emitter to set it on
- `SetBeamTargetPoint(int EmitterIndex, FVector NewTargetPoint, int TargetIndex)`  
  Set the beam target point

@param  EmitterIndex            The index of the emitter to set it on
@param  NewTargetPoint          The value to set it to
@param  TargetIndex                     Which beam within the emitter to set it on
- `SetBeamTargetStrength(int EmitterIndex, float32 NewTargetStrength, int TargetIndex)`  
  Set the beam target strength

@param  EmitterIndex            The index of the emitter to set it on
@param  NewTargetStrength       The value to set it to
@param  TargetIndex                     Which beam within the emitter to set it on
- `SetBeamTargetTangent(int EmitterIndex, FVector NewTangentPoint, int TargetIndex)`  
  Set the beam target tangent

@param  EmitterIndex            The index of the emitter to set it on
@param  NewTangentPoint         The value to set it to
@param  TargetIndex                     Which beam within the emitter to set it on
- `SetMaterialParameter(FName ParameterName, UMaterialInterface Param)`  
  Set a named material instance parameter on this ParticleSystemComponent.
Updates the parameter if it already exists, or creates a new entry if not.
- `SetTemplate(UParticleSystem NewTemplate)`  
  Change the ParticleSystem used by this ParticleSystemComponent
- `SetTrailSourceData(FName InFirstSocketName, FName InSecondSocketName, ETrailWidthMode InWidthMode, float32 InWidth)`  
  Sets the defining data for all trails in this component.

@param        InFirstSocketName       The name of the first socket for the trail.
@param        InSecondSocketName      The name of the second socket for the trail.
@param        InWidthMode                     How the width value is applied to the trail.
@param        InWidth                         The width of the trail.

---

