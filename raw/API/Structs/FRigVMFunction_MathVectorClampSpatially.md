### FRigVMFunction_MathVectorClampSpatially


Clamps a position using a plane collision, cylindric collision or spherical collision.
The collision happens both towards an inner envelope (minimum) and towards an outer envelope (maximum).
You can disable the inner / outer envelope / collision by setting the minimum / maximum to 0.0.

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
- `FVector Result []`
- `FTransform Space [The space this spatial clamp happens within.
The input position will be projected into this space.]`
- `ERigVMClampSpatialMode Type`
- `FVector Value`
- `bool bDrawDebug`


**方法**:

- `FRigVMFunction_MathVectorClampSpatially& opAssign(FRigVMFunction_MathVectorClampSpatially Other)`

---

