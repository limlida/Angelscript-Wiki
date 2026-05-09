### UBoomArmCameraNode


A camera node that can rotate the camera in yaw and pitch based on player input.

**属性**:

- `UCameraValueInterpolator BoomLengthInterpolator [The interpolator to use for changing the boom length based on its pivot's movements.]`
- `FVector3dCameraParameter BoomOffset [The offset of the boom. Rotation occurs at the base (i.e. before the offset).]`
- `FDoubleCameraParameter MaxBackwardInterpolationFactor [The maximum amount of backward movement the interpolator can introduce, expressed
as a factor of the default boom length.]`
- `FDoubleCameraParameter MaxForwardInterpolationFactor [The maximum amount of forward movement the interpolator can introduce, expressed
as a factor of the default boom length.]`

---

