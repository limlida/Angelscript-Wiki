### UVREditorInteractor


VREditor default interactor

**属性**:

- `UStaticMeshComponent HandMeshComponent [Access to the current handmesh. Use ReplaceHandMeshComponent() to update the entire StaticMeshComponent.]`
- `bool bIsUndoRedoSwipeEnabled [Whether swiping left/right on touchpad/joystick triggers undo/redo]`


**方法**:

- `FName GetControllerHandSide() const`  
  Sets the EControllerHand for this motioncontroller
- `EControllerHand GetControllerSide() const`  
  Get the side of the controller
- `EControllerType GetControllerType() const`  
  Returns what controller type this is for asymmetric control schemes
- `FName GetHMDDeviceType() const`  
  @return Returns the type of HMD we're dealing with
- `FVector GetLaserEnd() const`
- `FVector GetLaserStart() const`  
  Getters and setters
- `FVector2D GetLastTrackpadPosition() const`  
  Get the last position of the trackpad or analog stick
- `UMotionControllerComponent GetMotionControllerComponent() const`  
  Get the motioncontroller component of this interactor
- `float32 GetSelectAndMoveTriggerValue() const`  
  Gets the trigger value
- `float32 GetSlideDelta() const`  
  Returns the slide delta for pushing and pulling objects. Needs to be implemented by derived classes (e.g. touchpad for vive controller or scrollweel for mouse )
- `AVREditorTeleporter GetTeleportActor()`
- `FVector2D GetTrackpadPosition() const`  
  Get the current position of the trackpad or analog stick
- `Init(UVREditorMode InVRMode)`  
  Initialize default values
- `bool IsClickingOnUI() const`  
  Gets if the interactor is clicking on any UI
- `bool IsHoveringOverUI() const`  
  Gets if this interactor is hovering over UI
- `bool IsTouchingTrackpad() const`  
  Check if the touchpad is currently touched
- `ReplaceHandMeshComponent(UStaticMesh NewMesh, FVector MeshScale = FVector ( 1.000000 , 1.000000 , 1.000000 ))`  
  Replace the default VR controller mesh with a custom one.
- `SetControllerHandSide(FName InControllerHandSide)`  
  Sets the EControllerHand for this motioncontroller
- `SetControllerType(EControllerType InControllerType)`  
  Set what controller type this is for asymmetric control schemes
- `SetForceLaserColor(FLinearColor InColor)`  
  Next frame this will be used as color for the laser
- `SetForceShowLaser(bool bInForceShow)`  
  Set if we want to force to show the laser
- `SetupComponent(AActor OwningActor)`  
  Sets up all components
- `bool TryOverrideControllerType(EControllerType InControllerType)`  
  Temporary set what controller type this is for asymmetric control schemes.
You can't override the controller type when there's already an override.
Remove the temporary controller type with EControllerType::Unknown
@return true if the controller type was changed
- `UpdateHandMeshRelativeTransform()`

---

