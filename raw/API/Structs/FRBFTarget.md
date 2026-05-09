### FRBFTarget


Data about a particular target in the RBF, including scaling factor

**属性**:

- `FRichCurve CustomCurve [Custom curve to apply to activation of this target, if bApplyCustomCurve is true.
              Ignored if the solver type is Interpolative.]`
- `ERBFDistanceMethod DistanceMethod [Override the distance method used to calculate the distance from this target to
              the input. Ignored if the solver type is Interpolative.]`
- `ERBFFunctionType FunctionType [Override the falloff function used to smooth the distance from this target to
              the input. Ignored if the solver type is Interpolative.]`
- `float32 ScaleFactor [How large the influence of this target.]`
- `TArray<float32> Values [Set of values for this target, size must be TargetDimensions]`
- `bool bApplyCustomCurve [Whether we want to apply an additional custom curve when activating this target.
          Ignored if the solver type is Interpolative.]`


**方法**:

- `FRBFTarget& opAssign(FRBFTarget Other)`

---

