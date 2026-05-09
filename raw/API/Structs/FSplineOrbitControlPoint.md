### FSplineOrbitControlPoint


Control point for the spline orbit camera node.

**属性**:

- `FVector3d LocationOffset [The offset of the camera position from the orbit pivot.
This defines the radius of the orbit at the given control point, along with any lateral or
vertical position offsets.]`
- `float32 PitchAngle [The pitch angle for this control point.]`
- `FRotator3d RotationOffset [A rotation offset applied to the camera.
This adds rotation to the camera, in local space, applied after TargetOffset.]`
- `FVector3d TargetOffset [The offset of the camera target as defined by projecting the orbit pivot on the line of sight.
This adds rotation to the camera by making it look higher/lower/etc at the given control
point.]`


**方法**:

- `FSplineOrbitControlPoint& opAssign(FSplineOrbitControlPoint Other)`

---

