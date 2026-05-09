### UGameplayCameraSystemComponent


A component that hosts a camera system.

**属性**:

- `EAutoReceiveInput AutoActivateForPlayer [If AutoActivate is set, auto-activates the camera system for the given player.
This sets this actor as the view target, and is equivalent to calling ActivateCameraSystem on BeginPlay.]`
- `bool bSetPlayerControllerRotation [If enabled, sets the evaluated camera orientation as the player controller rotation every frame.
This is set on the player controller that this component was activated for.]`


**方法**:

- `ActivateCameraSystemForPlayerController(APlayerController PlayerController)`  
  Sets this component's actor as the view target for the given player.
- `ActivateCameraSystemForPlayerIndex(int PlayerIndex)`  
  Sets this component's actor as the view target for the given player.
- `DeactivateCameraSystem(AActor NextViewTarget = nullptr)`  
  Removes this component's actor from being the view target.
- `bool IsCameraSystemActiveForPlayController(APlayerController PlayerController) const`  
  Returns whether this component's actor is set as the view target for the given player.
- `FCameraRigInstanceID StartGlobalCameraModifierRig(const UCameraRigAsset CameraRig, int OrderKey = 0)`
- `FCameraRigInstanceID StartVisualCameraModifierRig(const UCameraRigAsset CameraRig, int OrderKey = 0)`
- `StopCameraModifierRig(FCameraRigInstanceID InstanceID, bool bImmediately = false)`

---

