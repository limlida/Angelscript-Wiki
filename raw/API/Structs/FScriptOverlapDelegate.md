### FScriptOverlapDelegate


**方法**:

- `FScriptOverlapDelegate& opAssign(FScriptOverlapDelegate Other)`
- `bool IsBound() const`
- `UObject GetUObject() const`
- `FName GetFunctionName() const`
- `Clear()`
- `BindUFunction(UObject Object, FName FunctionName)`
- `Execute(uint64 TraceHandle, const TArray<FOverlapResult>&in OutOverlaps, uint UserData) const`
- `ExecuteIfBound(uint64 TraceHandle, const TArray<FOverlapResult>&in OutOverlaps, uint UserData) const`

---

