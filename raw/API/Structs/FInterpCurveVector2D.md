### FInterpCurveVector2D


Describes an entire curve that is used to compute a 2D vector output value from a float input.
@note This is a mirror of TInterpCurve<FVector2D>, defined in Engine/Source/Runtime/Core/Public/Math/InterpCurve.h

**属性**:

- `float32 LoopKeyOffset [Specify the offset from the last point's input key corresponding to the loop point]`
- `TArray<FInterpCurvePointVector2D> Points [Holds the collection of interpolation points.]`
- `bool bIsLooped [Specify whether the curve is looped or not]`


**方法**:

- `FInterpCurveVector2D& opAssign(FInterpCurveVector2D Other)`

---

