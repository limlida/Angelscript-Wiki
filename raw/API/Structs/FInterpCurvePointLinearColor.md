### FInterpCurvePointLinearColor


Describes one specific point on an interpolation curve.
@note This is a mirror of TInterpCurvePoint<FLinearColor>, defined in Engine/Source/Runtime/Core/Public/Math/InterpCurvePoint.h

**属性**:

- `FLinearColor ArriveTangent [Tangent of curve arriving at this point.]`
- `float32 InVal [Float input value that corresponds to this key (eg. time).]`
- `EInterpCurveMode InterpMode [Interpolation mode between this point and the next one.]`
- `FLinearColor LeaveTangent [Tangent of curve leaving this point.]`
- `FLinearColor OutVal [Color output value of when input is equal to InVal.]`


**方法**:

- `FInterpCurvePointLinearColor& opAssign(FInterpCurvePointLinearColor Other)`

---

