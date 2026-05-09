### UAutoRotateInput2DCameraNode


An input node that modifies a yaw/pitch input in order to re-align its
values to a given default direction.

**属性**:

- `FBooleanCameraParameter AutoRotatePitch [Whether to auto-rotate pitch.]`
- `FBooleanCameraParameter AutoRotateYaw [Whether to auto-rotate yaw.]`
- `FFloatCameraParameter DeactivationThreshold [The minimum player-induced/manual rotation, in degrees, to deactivate auto-rotation.]`
- `ECameraAutoRotateDirection Direction [The direction to re-align towards.]`
- `FVector3dCameraVariableReference DirectionVector [An override for the direction to re-align towards.]`
- `FBooleanCameraParameter EnableAutoRotate [Whether to enable auto-rotation.]`
- `FBooleanCameraParameter FreezeControlRotation [Whether to suggest freezing the input control rotation.]`
- `UCameraValueInterpolator Interpolator [The interpolation for re-alignment.]`
- `FFloatCameraParameter WaitTime [The time, in seconds, to wait before re-aligning.]`

---

