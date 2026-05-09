### UCurveFloat


**方法**:

- `float32 GetFloatValue(float32 InTime) const`  
  Evaluate this float curve at the specified time
- `FCurveKeyHandle AddAutoCurveKey(float32 InTime, float32 InValue)`
- `FCurveKeyHandle AddConstantCurveKey(float32 InTime, float32 InValue)`
- `FCurveKeyHandle AddCurveKey(float32 InTime, float32 InValue)`
- `FCurveKeyHandle AddCurveKeyBrokenTangent(float32 InTime, float32 InValue, float32 ArriveTangent, float32 LeaveTangent)`
- `FCurveKeyHandle AddCurveKeyTangent(float32 InTime, float32 InValue, float32 Tangent)`
- `FCurveKeyHandle AddCurveKeyWeightedArriveTangent(float32 InTime, float32 InValue, bool bBrokenTangent, float32 ArriveTangent, float32 LeaveTangent, float32 ArriveTangentWeight, float32 LeaveTangentWeight)`
- `FCurveKeyHandle AddCurveKeyWeightedBothTangent(float32 InTime, float32 InValue, bool bBrokenTangent, float32 ArriveTangent, float32 LeaveTangent, float32 ArriveTangentWeight, float32 LeaveTangentWeight)`
- `FCurveKeyHandle AddCurveKeyWeightedLeaveTangent(float32 InTime, float32 InValue, bool bBrokenTangent, float32 ArriveTangent, float32 LeaveTangent, float32 ArriveTangentWeight, float32 LeaveTangentWeight)`
- `FCurveKeyHandle AddLinearCurveKey(float32 InTime, float32 InValue)`
- `FCurveKeyHandle AddSmartAutoCurveKey(float32 InTime, float32 InValue)`
- `AutoSetTangents()`
- `SetDefaultValue(float32 DefaultValue)`
- `SetKeyInterpMode(FCurveKeyHandle KeyHandle, ERichCurveInterpMode NewInterpMode, bool bAutoSetTangents)`
- `SetKeyTangentMode(FCurveKeyHandle KeyHandle, ERichCurveTangentMode NewTangentMode, bool bAutoSetTangents = true)`
- `SetKeyTangentWeightMode(FCurveKeyHandle KeyHandle, ERichCurveTangentWeightMode NewTangentWeightMode, bool bAutoSetTangents = true)`
- `SetKeyUserTangents(FCurveKeyHandle KeyHandle, float32 ArriveTangent, float32 LeaveTangent)`
- `SetKeyUserTangentWeights(FCurveKeyHandle KeyHandle, float32 ArriveTangentWeight, float32 LeaveTangentWeight)`
- `SetPostInfinityExtrap(ERichCurveExtrapolation Extrapolation)`
- `SetPreInfinityExtrap(ERichCurveExtrapolation Extrapolation)`

---

