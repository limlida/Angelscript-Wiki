### AGameplayAbilityWorldReticle


Reticles allow targeting to be visualized. Tasks can spawn these. Artists/designers can create BPs for these.

**属性**:

- `FWorldReticleParameters Parameters`
- `APlayerController PrimaryPC [This is used in the process of determining whether we should replicate to a specific client.]`
- `AGameplayAbilityTargetActor TargetingActor [In the future, we may want to grab things like sockets off of this.]`
- `bool bFaceOwnerFlat [Makes the reticle's default owner-facing behavior operate in 2D (flat) instead of 3D (pitched). Defaults to true.]`
- `bool bIsTargetAnActor [This indicates whether or not the targeting reticle is pointed at an actor. Defaults to false.]`
- `bool bIsTargetValid [This indicates whether or not the targeting actor considers the current target to be valid. Defaults to true.]`
- `bool bSnapToTargetedActor [If the target is an actor snap to it's location]`


**方法**:

- `FaceTowardSource(bool bFaceIn2D)`
- `OnParametersInitialized()`
- `OnTargetingAnActor(bool bNewValue)`  
  Called whenever bIsTargetAnActor changes value.
- `OnValidTargetChanged(bool bNewValue)`  
  Called whenever bIsTargetValid changes value.
- `SetReticleMaterialParamFloat(FName ParamName, float value)`
- `SetReticleMaterialParamVector(FName ParamName, FVector value)`

---

