### UUnrealEditorSubsystem


UUnrealEditorSubsystem
Subsystem for exposing editor functionality to scripts

**方法**:

- `UWorld GetEditorWorld()`  
  Find the World in the world editor. It can then be used as WorldContext by other libraries like GameplayStatics.
@return      The World used by the world editor.
- `UWorld GetGameWorld()`
- `bool GetLevelViewportCameraInfo(FVector& CameraLocation, FRotator& CameraRotation)`  
  Gets information about the camera position for the primary level editor viewport.  In non-editor builds, these will be zeroed
In the UnrealEd module instead of Level Editor as it uses FLevelEditorViewportClient which is in this module

@param       CameraLocation  (out) Current location of the level editing viewport camera, or zero if none found
@param       CameraRotation  (out) Current rotation of the level editing viewport camera, or zero if none found
@return      Whether or not we were able to get a camera for a level editing viewport
- `SetLevelViewportCameraInfo(FVector CameraLocation, FRotator CameraRotation)`  
  Sets information about the camera position for the primary level editor viewport.
In the UnrealEd module instead of Level Editor as it uses FLevelEditorViewportClient which is in this module

@param        CameraLocation  Location the camera will be moved to.
@param        CameraRotation  Rotation the camera will be set to.

---

