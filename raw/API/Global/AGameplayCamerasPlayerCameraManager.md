### AGameplayCamerasPlayerCameraManager


A player camera manager that runs the GameplayCameras camera system.

Setting the view target does the following:
- Push a new evaluation context for the provided view target actor.
   - If that actor contains a GameplayCameraComponent, use its evaluation context directly.
   - If that actor contains a CameraComponent, make an evaluation context that wraps it
     and runs by simply copying that camera's properties (see FCameraActorCameraEvaluationContext).
   - For other actors, do as above, but convert the output of the actor's CalcCamera function.
- The old view target's evaluation context is immediately removed from the evaluation stack.
  For other way to handle evaluation contexts, call methods directly on the camera system
  evaluator instead of going through the base APlayerCameraManager class.

There is only ever one active view target, the "pending" view target isn't used. This is
because we may be blending between more than two camera rigs that may belong to more than
two actors.

**属性**:

- `EGameplayCamerasViewRotationMode ViewRotationMode [The view rotation handling mode to use.]`
- `bool bOverrideViewRotationMode [Whether the default view rotation mode setting should be overriden.]`


**方法**:

- `ActivatePersistentBaseCameraRig(UCameraRigAsset CameraRig)`  
  Activates the given camera rig prefab in the base layer.
- `ActivatePersistentGlobalCameraRig(UCameraRigAsset CameraRig)`  
  Activates the given camera rig prefab in the global layer.
- `ActivatePersistentVisualCameraRig(UCameraRigAsset CameraRig)`  
  Activates the given camera rig prefab in the visual layer.
- `bool IsCameraShakeAssetPlaying(FCameraShakeInstanceID InInstanceID) const`  
  Checks if a camera shake is running.
- `ReleasePlayerController()`  
  Restore an originally stolen camera manager (see StealPlayerController).
- `FCameraShakeInstanceID StartCameraShakeAsset(const UCameraShakeAsset CameraShake, float32 ShakeScale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRotation = FRotator ( ))`  
  Starts a new camera shake.
- `FCameraRigInstanceID StartGlobalCameraModifierRig(const UCameraRigAsset CameraRig, int OrderKey = 0)`  
  Starts a camera modifier rig on the global layer.
- `FCameraRigInstanceID StartVisualCameraModifierRig(const UCameraRigAsset CameraRig, int OrderKey = 0)`  
  Starts a camera modifier rig on the visual layer.
- `StealPlayerController(APlayerController PlayerController)`  
  Replace the camera manager currently set on the provided controller with this camera manager.
- `StopCameraModifierRig(FCameraRigInstanceID InstanceID, bool bImmediately = false)`  
  Stops a camera modifier rig on previously started on the global or visual layer.
- `bool StopCameraShakeAsset(FCameraShakeInstanceID InInstanceID, bool bImmediately = false)`  
  Stops a running camera shake.

---

