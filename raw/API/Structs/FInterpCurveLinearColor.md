### FInterpCurveLinearColor


Describes an entire curve that is used to compute a color output value from a float input.
@note This is a mirror of TInterpCurve<FLinearColor>, defined in Engine/Source/Runtime/Core/Public/Math/InterpCurve.h

**属性**:

- `float32 LoopKeyOffset [Specify the offset from the last point's input key corresponding to the loop point]`
- `TArray<FInterpCurvePointLinearColor> Points [Holds the collection of interpolation points.]`
- `bool bIsLooped [Specify whether the curve is looped or not]`


**方法**:

- `FInterpCurveLinearColor& opAssign(FInterpCurveLinearColor Other)`

---

