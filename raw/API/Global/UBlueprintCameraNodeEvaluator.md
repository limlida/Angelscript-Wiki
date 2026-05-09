### UBlueprintCameraNodeEvaluator


The base class for Blueprint camera node evaluators.

**属性**:

- `FBlueprintCameraEvaluationDataRef CameraData [The input/output camera data for this frame.]`
- `UObject EvaluationContextOwner [The owner object of this camera node's evaluation context.]`
- `bool bIsActiveCameraRig [Whether this camera node is running inside the active camera rig in this layer.]`
- `bool bIsFirstFrame [Whether this is the first frame of this camera node's lifetime.]`


**方法**:

- `AActor FindEvaluationContextOwnerActor(TSubclassOf<AActor> ActorClass = nullptr) const`  
  A utility function that tries to find if an actor owns the evaluation context.
Handles the situation where the evaluation context is an actor component (like a
UGameplayCameraComponent) or an actor itself.
- `FBlueprintCameraPose GetCurrentCameraPose() const`  
  A utility function to get the current camera pose from this node's camera data.
- `APlayerController GetPlayerController() const`  
  Gets the player controller that the node is running for, if any.
- `InitializeCameraNode()`
- `SetCurrentCameraPose(FBlueprintCameraPose CameraPose)`  
  A utility function to set the current camera pose on this node's camera data.
- `SetDefaultOwningCameraRigParameters(FBlueprintCameraEvaluationDataRef TargetCameraData) const`  
  Assigns the default parameter values of the owning camera rig to the given camera evaluation data.
- `TickCameraNode(float DeltaTime)`  
  The main execution callback for the camera node. Call SetCameraPose to affect the result.

---

