### UBlueprintCameraDirectorEvaluator


Base class for a Blueprint camera director evaluator.

**方法**:

- `ActivateCameraDirector(UObject EvaluationContextOwner, FBlueprintCameraDirectorActivateParams Params)`
- `ActivateCameraRig(UCameraRigAsset CameraRig, bool bForceNewInstance = false)`  
  Specifies a camera rig to be active this frame.
- `ActivateCameraRigViaProxy(UCameraRigProxyAsset CameraRigProxy, bool bForceNewInstance = false)`  
  Specifies a camera rig to be active this frame, via a proxy which is later resolved
via the proxy table of the Blueprint camera director.
- `ActivatePersistentBaseCameraRig(UCameraRigAsset CameraRigPrefab)`  
  Activates the given camera rig prefab in the base layer.
- `ActivatePersistentGlobalCameraRig(UCameraRigAsset CameraRigPrefab)`  
  Activates the given camera rig prefab in the global layer.
- `ActivatePersistentVisualCameraRig(UCameraRigAsset CameraRigPrefab)`  
  Activates the given camera rig prefab in the visual layer.
- `FName AddChildEvaluationContext(UObject ChildEvaluationContextOwner)`
- `DeactivateCameraDirector(UObject EvaluationContextOwner, FBlueprintCameraDirectorDeactivateParams Params)`
- `DeactivatePersistentBaseCameraRig(UCameraRigAsset CameraRigPrefab)`  
  Deactivates the given camera rig prefab in the base layer.
- `DeactivatePersistentGlobalCameraRig(UCameraRigAsset CameraRigPrefab)`  
  Deactivates the given camera rig prefab in the global layer.
- `DeactivatePersistentVisualCameraRig(UCameraRigAsset CameraRigPrefab)`  
  Deactivates the given camera rig prefab in the visual layer.
- `AActor FindEvaluationContextOwnerActor(TSubclassOf<AActor> ActorClass) const`  
  A utility function that tries to find if an actor owns the evaluation context.
Handles the situation where the evaluation context is an actor component (like a
UGameplayCameraComponent) or an actor itself.
- `FBlueprintCameraEvaluationDataRef GetConditionalContextResult(ECameraEvaluationDataCondition Condition) const`  
  Gets the evaluation context data for a sub-set of camera rigs.
- `FBlueprintCameraEvaluationDataRef GetInitialContextResult() const`  
  Gets the shared evaluation context data.
- `bool RemoveChildEvaluationContext(UObject ChildEvaluationContextOwner, FName ChildSlotName)`
- `UCameraRigAsset ResolveCameraRigProxy(const UCameraRigProxyAsset CameraRigProxy) const`  
  Resolves the camera rig proxy using the camera director's proxy table.
- `RunCameraDirector(float DeltaTime, UObject EvaluationContextOwner, FBlueprintCameraDirectorEvaluationParams Params)`
- `bool RunChildCameraDirector(float32 DeltaTime, FName ChildSlotName)`

---

