### AVREditorTeleporter


VR Editor teleport manager and the visual representation of the teleport

**方法**:

- `DoTeleport()`  
  Do and finalize teleport.
- `UViewportInteractor GetInteractorTryingTeleport() const`  
  Get the actor we're currently trying to teleport with.
Valid during aiming and teleporting.
- `float32 GetSlideDelta(UVREditorInteractor Interactor, bool Axis)`  
  Get slide delta to push/pull or scale the teleporter
- `UVREditorMode GetVRMode() const`
- `Init(UVREditorMode InMode)`  
  Initializes the teleporter
- `bool IsAiming() const`  
  Whether we are currently aiming to teleport.
- `bool IsTeleporting() const`
- `SetColor(FLinearColor Color)`  
  Sets the color for the teleporter visuals
- `SetVisibility(bool bVisible)`  
  Hide or show the teleporter visuals
- `Shutdown()`  
  Shuts down the teleporter
- `StartAiming(UViewportInteractor Interactor)`  
  Functions we call to handle teleporting in navigation mode
- `StartTeleport()`  
  Start teleporting, does a ray trace with the hand passed and calculates the locations for lerp movement in Teleport
- `StopAiming()`  
  Cancel teleport aiming mode without doing the teleport
- `TeleportDone()`  
  Called when teleport is done for cleanup

---

