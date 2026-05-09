### FInterpCurvePointVector2D


Describes one specific point on an interpolation curve.
@note This is a mirror of TInterpCurvePoint<FVector2D>, defined in Engine/Source/Runtime/Core/Public/Math/InterpCurvePoint.h

**属性**:

- `FVector2D ArriveTangent [Tangent of curve arriving at this point.]`
- `float32 InVal [Float input value that corresponds to this key (eg. time).]`
- `EInterpCurveMode InterpMode [Interpolation mode between this point and the next one.]`
- `FVector2D LeaveTangent [Tangent of curve leaving this point.]`
- `FVector2D OutVal [2D vector output value of when input is equal to InVal.]`


**方法**:

- `FInterpCurvePointVector2D& opAssign(FInterpCurvePointVector2D Other)`

---

