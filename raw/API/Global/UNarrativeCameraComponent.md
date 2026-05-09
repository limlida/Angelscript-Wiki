### UNarrativeCameraComponent


Narrative pro comes with a custom camera component to support handling different camera modes, and blending between them.

**属性**:

- `UNarrativeCameraMode CurrentCameraMode [The camera mode currently being used.]`
- `TSubclassOf<UNarrativeCameraMode> DefaultCameraMode [The default camera mode to use.]`


**方法**:

- `SetCameraMode(TSubclassOf<UNarrativeCameraMode> NewMode)`  
  Set the camera mode to the specified mode.
- `SetCameraModeToDefault()`  
  Set the camera mode back to the default mode.

---

