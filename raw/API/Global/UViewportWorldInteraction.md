### UViewportWorldInteraction


**方法**:

- `AddActorToExcludeFromHitTests(AActor ActorToExcludeFromHitTests)`  
  Adds an actor to the list of actors to never allow an interactor to hit in the scene.  No selection.  No hover.
There's no need to remove actors from this list.  They'll expire from it automatically when destroyed.

@param       ActorToExcludeFromHitTests      The actor that should be forever excluded from hit tests
- `AddInteractor(UViewportInteractor Interactor)`  
  Adds interactor to the worldinteraction
- `FTransform GetHeadTransform() const`  
  Gets the transform of the viewport / user's HMD in world space
- `TArray<UViewportInteractor> GetInteractors() const`  
  Gets all the interactors
- `FTransform GetRoomSpaceHeadTransform() const`  
  Gets the transform of the viewport / user's HMD in room space
- `FTransform GetRoomTransform() const`  
  Gets the world space transform of the calibrated VR room origin.  When using a seated VR device, this will feel like the
      camera's world transform (before any HMD positional or rotation adjustments are applied.)
- `ABaseTransformGizmo GetTransformGizmoActor()`  
  Gets the transform gizmo actor, or returns null if we currently don't have one
- `float32 GetWorldScaleFactor() const`  
  Gets the world scale factor, which can be multiplied by a scale vector to convert to room space
- `RemoveInteractor(UViewportInteractor Interactor)`  
  Removes interactor from the worldinteraction and removes the interactor from its paired interactor if any
- `SetHeadTransform(FTransform NewHeadTransform)`  
  Sets a new transform for the room so that the HMD is aligned to the new transform.
              The Head is kept level to the ground and only rotated on the yaw
- `SetRoomTransformForNextFrame(FTransform NewRoomTransform)`
- `SetWorldToMetersScale(float32 NewWorldToMetersScale, bool bCompensateRoomWorldScale = false)`  
  Sets GNewWorldToMetersScale

---

