### UNarrativeCameraMode


Camera modes are managed by the UNarrativeCameraComponent and allow us to blend between different camera behaviours.

Camera modes are extremely simple - a mode just specifies the cameras desired FOV and location, and the camera component blends towards it based on its blendspeed.

**属性**:

- `float32 DefaultFOV [Default FOV this camera mode wants - you can override GetDesiredFOV if you need to return a dynamic value]`
- `float32 DefaultFOVBlendSpeed [TODO move these to time based instead of units/s
units/s Speed to interp FOV at]`
- `FVector Offset [The offset from the character this mode wants. If you don't want an offset, or need something more complex, you can override GetCameraDesiredTransform()]`
- `float32 OffsetInterpSpeed [units/s Speed to interp offset at]`
- `float32 PivotInterpSpeed [units/s Speed to interp offset at]`
- `float32 TargetArmLength [The length the target arm should aim for]`


**方法**:

- `EnterMode()`  
  Enter/exit mode handlers if your mode wants to do anything custom
- `ExitMode()`
- `FVector GetCameraDesiredOffset()`  
  What the cameras target arm offset should be.
- `FVector GetCameraRootLocation()`  
  Where the cameras target arm should attach to the character.
- `GetDesiredFOV(float32& FOV, float32& FOVBlendSpeed)`  
  What the cameras target FOV should be, and how fast we should be blending to it
- `UNarrativeCameraComponent GetOwningCamera() const`

---

