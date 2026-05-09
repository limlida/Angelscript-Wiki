### FInterpCurvePointFloat


Describes one specific point on an interpolation curve.
@note This is a mirror of TInterpCurvePoint<float>, defined in Engine/Source/Runtime/Core/Public/Math/InterpCurvePoint.h

**属性**:

- `float32 ArriveTangent [Tangent of curve arriving at this point.]`
- `float32 InVal [Float input value that corresponds to this key (eg. time).]`
- `EInterpCurveMode InterpMode [Interpolation mode between this point and the next one.]`
- `float32 LeaveTangent [Tangent of curve leaving this point.]`
- `float32 OutVal [Float output value type when input is equal to InVal.]`


**方法**:

- `FInterpCurvePointFloat& opAssign(FInterpCurvePointFloat Other)`

---

