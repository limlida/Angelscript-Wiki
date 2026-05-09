### UGameplayCameraComponentBase


A component that can run a camera asset inside its own camera evaluation context.

**属性**:

- `EAutoReceiveInput AutoActivateForPlayer [If AutoActivate is set, auto-activates this component's camera for the given player.
This is equivalent to calling ActivateCameraForPlayerIndex on BeginPlay.]`
- `int EditorPreviewCameraRigIndex [The camera rig to run in the editor.]`
- `bool bRunInEditor [Whether to run this camera in editor.]`
- `bool bSetControlRotationWhenViewTarget [Specifies whether this component should set the player controller's control rotation
to the computed point of view's orientation every frame. This is only used when a
player controller is associated with this component, and the view target is that
component.]`


**方法**:

- `ActivateCameraForPlayerController(APlayerController PlayerController, bool bSetAsViewTarget = true, EGameplayCameraComponentActivationMode ActivationMode = EGameplayCameraComponentActivationMode :: Push)`  
  Activates the camera for the given player.

@param PlayerController   The player to activate the camera for.
@param bSetAsViewTarget   Whether to set this component's actor as the view target for the player.
@param ActivationMode     How to activate this camera into the player's camera system. Only valid
                          and used when the player camera manager is running the camera system.
                          Must be 'Push' otherwise, when this component runs as a standalone camera
                          system.
- `ActivateCameraForPlayerIndex(int PlayerIndex, bool bSetAsViewTarget = true, EGameplayCameraComponentActivationMode ActivationMode = EGameplayCameraComponentActivationMode :: Push)`  
  Activates the camera for the given player.

@param PlayerIndex        The player to activate the camera for.
@param bSetAsViewTarget   Whether to set this component's actor as the view target for the player.
@param ActivationMode     How to activate this camera into the player's camera system. Only valid
                          and used when the player camera manager is running the camera system.
                          Must be 'Push' otherwise, when this component runs as a standalone camera
                          system.
- `ActivatePersistentBaseCameraRig(UCameraRigAsset CameraRig)`  
  Activates the given camera rig prefab in the base layer.
- `ActivatePersistentGlobalCameraRig(UCameraRigAsset CameraRig)`  
  Activates the given camera rig prefab in the global layer.
- `ActivatePersistentVisualCameraRig(UCameraRigAsset CameraRig)`  
  Activates the given camera rig prefab in the visual layer.
- `DeactivateCamera(bool bImmediately = false)`  
  Deactivates the camera.

@param bImmediately       Whether to let this component's camera rigs gracefully blend out before
                          deactivating. If true, any running camera rigs will be frozen or forcibly
                          removed from the camera system.
- `FBlueprintCameraEvaluationDataRef GetConditionalResult(ECameraEvaluationDataCondition Condition) const`  
  Gets the camera evaluation data for a given sub-set of camera rigs in this component's evaluation context.
- `FRotator GetEvaluatedCameraRotation() const`  
  Gets the last evaluated orientation of the camera.
- `FBlueprintCameraEvaluationDataRef GetInitialResult() const`  
  Gets the shared camera evaluation data for this component's evaluation context.
- `UCineCameraComponent GetOutputCameraComponent() const`  
  Gets the child camera component used as the "output" for the gameplay/procedural camera.

---

