### FScriptTraceDelegate


**方法**:

- `FScriptTraceDelegate& opAssign(FScriptTraceDelegate Other)`
- `bool IsBound() const`
- `UObject GetUObject() const`
- `FName GetFunctionName() const`
- `Clear()`
- `BindUFunction(UObject Object, FName FunctionName)`
- `Execute(uint64 TraceHandle, const TArray<FHitResult>&in OutHits, uint UserData) const`
- `ExecuteIfBound(uint64 TraceHandle, const TArray<FHitResult>&in OutHits, uint UserData) const`

---

