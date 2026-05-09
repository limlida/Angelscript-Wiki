### FRuntimeFloatCurve


**属性**:

- `UCurveFloat ExternalCurve []`


**方法**:

- `AddDefaultKey(float32 InTime, float32 InValue)`
- `bool Equals(FRuntimeFloatCurve Other) const`
- `float32 GetFloatValue(float32 InTime, float32 DefaultValue = 0.000000) const`  
  Evaluate this float curve at the specified time
- `int GetNumKeys() const`
- `GetTimeRange(float32& MinTime, float32& MaxTime) const`
- `GetTimeRange(float& MinTime, float& MaxTime) const`
- `GetValueRange(float32& MinValue, float32& MaxValue) const`
- `GetValueRange(float& MinValue, float& MaxValue) const`
- `FRuntimeFloatCurve& opAssign(FRuntimeFloatCurve Other)`

---

