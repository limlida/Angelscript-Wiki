### UCurveSourceInterface


**方法**:

- `FName GetBindingName() const`  
  Get the name that this curve source can be bound to by.
Clients of this curve source will use this name to identify this source.
- `GetCurves(TArray<FNamedCurveValue>& OutValues) const`  
  Evaluate all curves that this source provides
- `float32 GetCurveValue(FName CurveName) const`  
  Get the value for a specified curve

---

