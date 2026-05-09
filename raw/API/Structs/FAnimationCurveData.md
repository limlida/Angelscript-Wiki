### FAnimationCurveData


Structure encapsulating animated curve data. Currently only contains Float and Transform curves.

**属性**:

- `TArray<FFloatCurve> FloatCurves [Float-based animation curves]`
- `TArray<FTransformCurve> TransformCurves [FTransform-based animation curves, used for animation layer editing]`


**方法**:

- `FAnimationCurveData& opAssign(FAnimationCurveData Other)`

---

