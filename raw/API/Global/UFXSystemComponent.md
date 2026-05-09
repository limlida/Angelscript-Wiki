### UFXSystemComponent


**方法**:

- `DeactivateImmediate()`
- `UFXSystemAsset GetFXSystemAsset() const`  
  Get the referenced FXSystem asset.
- `ReleaseToPool()`  
  Deactivates this system and releases it to the pool on completion.
Usage of this PSC reference after this call is unsafe.
You should clear out your references to it.
- `SetActorParameter(FName ParameterName, AActor Param)`  
  Set a named actor instance parameter on this ParticleSystemComponent.
Updates the parameter if it already exists, or creates a new entry if not.
- `SetAutoAttachmentParameters(USceneComponent Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule)`  
  Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule to the specified parameters. Does not change bAutoManageAttachment; that must be set separately.
@param  Parent                       Component to attach to.
@param  SocketName           Socket on Parent to attach to.
@param  LocationRule         Option for how we handle our location when we attach to Parent.
@param  RotationRule         Option for how we handle our rotation when we attach to Parent.
@param  ScaleRule            Option for how we handle our scale when we attach to Parent.
@see bAutoManageAttachment, AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule
- `SetBoolParameter(FName ParameterName, bool Param)`  
  Change a named boolean parameter, ParticleSystemComponent converts to float.
- `SetColorParameter(FName ParameterName, FLinearColor Param)`  
  Set a named color instance parameter on this ParticleSystemComponent.
Updates the parameter if it already exists, or creates a new entry if not.
- `SetEmitterEnable(FName EmitterName, bool bNewEnableState)`  
  Enables / disables an emitter by halting spawning of new particles.
You will still pay the cost of the emitter update.

@param  EmitterName                     The name of the emitter
@param  bNewEnableState         The value to set it to
- `SetFloatParameter(FName ParameterName, float32 Param)`  
  Change a named float parameter
- `SetIntParameter(FName ParameterName, int Param)`  
  Change a named int parameter
- `SetUseAutoManageAttachment(bool bAutoManage)`  
  Sets whether we should automatically attach to AutoAttachParent when activated, and detach from our parent when completed.
This overrides any current attachment that may be present at the time of activation (deferring initial attachment until activation, if AutoAttachParent is null).
When enabled, detachment occurs regardless of whether AutoAttachParent is assigned, and the relative transform from the time of activation is restored.
This also disables attachment on dedicated servers, where we don't actually activate even if bAutoActivate is true.
@see SetAutoAttachmentParameters()
- `SetVectorParameter(FName ParameterName, FVector Param)`  
  Set a named vector instance parameter on this ParticleSystemComponent.
Updates the parameter if it already exists, or creates a new entry if not.

---

