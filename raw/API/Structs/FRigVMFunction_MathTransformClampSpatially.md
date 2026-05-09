### FRigVMFunction_MathTransformClampSpatially


Clamps a position using a plane collision, cylindric collision or spherical collision.

**属性**:

- `EAxis Axis`
- `FLinearColor DebugColor`
- `float32 DebugThickness`
- `float32 Maximum [This maximum allowed distance.
A collision will occur towards the center at this wall.
Note: For capsule this represents the length.
Disable by setting to 0.0.]`
- `float32 Minimum [The minimum allowed distance at which a collision occurs.
Note: For capsule this represents the radius.
Disable by setting to 0.0.]`
- `FTransform Result []`
- `FTransform Space [The space this spatial clamp happens within.
The input position will be projected into this space.]`
- `ERigVMClampSpatialMode Type`
- `FTransform Value`
- `bool bDrawDebug`


**方法**:

- `FRigVMFunction_MathTransformClampSpatially& opAssign(FRigVMFunction_MathTransformClampSpatially Other)`

---

