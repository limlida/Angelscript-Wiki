### UViewportInteractor


Represents the interactor in the world

**方法**:

- `bool CanCarry() const`  
  Gets if the interactor can carry an object
- `EViewportInteractionDraggingMode GetDraggingMode() const`  
  Gets the current interactor data dragging mode
- `EHitResultGizmoFilterMode GetHitResultGizmoFilterMode() const`  
  Gets current gizmo filter mode used for Interaction
- `FVector GetHoverLocation()`  
  Gets the interactor laser hover location
- `bool GetLaserPointer(FVector& LaserPointerStart, FVector& LaserPointerEnd, bool bEvenIfBlocked = false, float32 LaserLengthOverride = 0.000000)`  
  Gets the start and end point of the laser pointer for the specified hand

@param LasertPointerStart    (Out) The start location of the laser pointer in world space
@param LasertPointerEnd              (Out) The end location of the laser pointer in world space
@param bEvenIfBlocked                If true, returns a laser pointer even if the hand has UI in front of it (defaults to false)
@param LaserLengthOverride   If zero the default laser length (VREdMode::GetLaserLength) is used

@return      True if we have motion controller data for this hand and could return a valid result
- `FTransform GetLastRoomSpaceTransform() const`  
  Gets the last hand transform of the interactor, in the local tracking space
- `FTransform GetLastTransform() const`  
  Gets the last world transform of this interactor
- `UViewportInteractor GetOtherInteractor() const`  
  Gets the paired interactor assigned by the world interaction, can return null when there is no other interactor
- `FTransform GetRoomSpaceTransform() const`  
  Gets the hand transform of the interactor, in the local tracking space
- `FTransform GetTransform() const`  
  Gets the world transform of this interactor
- `bool GetTransformAndForwardVector(FTransform& OutHandTransform, FVector& OutForwardVector) const`  
  Creates a hand transform and forward vector for a laser pointer for a given hand

@param OutHandTransform      The created hand transform
@param OutForwardVector      The forward vector of the hand

@return      True if we have motion controller data for this hand and could return a valid result
- `UViewportWorldInteraction GetWorldInteraction() const`  
  Gets the world interaction
- `HandleInputAxis_BP(FViewportActionKeyInput Action, FKey Key, float Delta, float DeltaTime, bool& bOutWasHandled)`  
  To be overridden. Called by HandleInputAxis before delegates and default input implementation
- `HandleInputKey_BP(FViewportActionKeyInput Action, FKey Key, EInputEvent Event, bool& bOutWasHandled)`  
  To be overridden. Called by HandleInputKey before delegates and default input implementation
- `bool IsHoveringOverGizmo() const`  
  If the interactor laser is currently hovering over a gizmo handle
- `SetCanCarry(bool bInCanCarry)`  
  Sets if the interactor can carry an object
- `SetDraggingMode(EViewportInteractionDraggingMode NewDraggingMode)`  
  Sets the current dragging mode for this interactor
- `SetHitResultGizmoFilterMode(EHitResultGizmoFilterMode newFilter)`  
  Sets the current gizmo filter mode used for Interaction
- `Shutdown()`  
  Whenever the ViewportWorldInteraction is shut down, the interacts will shut down as well
- `Tick(float DeltaTime)`  
  Update for this interactor called by the ViewportWorldInteraction

---

