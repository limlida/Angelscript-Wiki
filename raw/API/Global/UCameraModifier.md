### UCameraModifier


A CameraModifier is a base class for objects that may adjust the final camera properties after
being computed by the APlayerCameraManager (@see ModifyCamera). A CameraModifier
can be stateful, and is associated uniquely with a specific APlayerCameraManager.

**属性**:

- `float32 Alpha [Current blend alpha.]`
- `float32 AlphaInTime [When blending in, alpha proceeds from 0 to 1 over this time]`
- `float32 AlphaOutTime [When blending out, alpha proceeds from 1 to 0 over this time]`
- `APlayerCameraManager CameraOwner [Camera this object is associated with.]`
- `uint8 Priority [Priority value that determines the order in which modifiers are applied. 0 = highest priority, 255 = lowest.]`
- `bool bDebug [If true, enables certain debug visualization features.]`
- `bool bExclusive [If true, no other modifiers of same priority allowed.]`


**方法**:

- `BlueprintModifyCamera(float DeltaTime, FVector ViewLocation, FRotator ViewRotation, float FOV, FVector& NewViewLocation, FRotator& NewViewRotation, float32& NewFOV)`  
  Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's transform.
Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.
@param       DeltaTime       Change in time since last update
@param       ViewLocation            The current camera location.
@param       ViewRotation            The current camera rotation.
@param       FOV                                     The current camera fov.
@param       NewViewLocation         (out) The modified camera location.
@param       NewViewRotation         (out) The modified camera rotation.
@param       NewFOV                          (out) The modified camera FOV.
- `BlueprintModifyPostProcess(float DeltaTime, float32& PostProcessBlendWeight, FPostProcessSettings& PostProcessSettings)`  
  Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's postprocess effects.
Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint.
@param       DeltaTime                               Change in time since last update
@param       PostProcessBlendWeight  (out) Blend weight applied to the entire postprocess structure.
@param       PostProcessSettings             (out) Post process structure defining what settings and values to override.
- `DisableModifier(bool bImmediate = false)`  
  Disables this modifier.
@param  bImmediate  - true to disable with no blend out, false (default) to allow blend out
- `EnableModifier()`  
  Enables this modifier.
- `AActor GetViewTarget() const`  
  @return Returns the actor the camera is currently viewing.
- `bool IsDisabled() const`  
  @return Returns true if modifier is disabled, false otherwise.
- `bool IsPendingDisable() const`  
  @return Returns true if modifier is pending disable, false otherwise.

---

