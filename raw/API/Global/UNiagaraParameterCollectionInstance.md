### UNiagaraParameterCollectionInstance


Can be used to override selected parameters from a Niagara parameter collection with another value.
The values in the parameter collection instance can be set from Blueprint or C++, same as the regular parameter collection.

**属性**:

- `UNiagaraParameterCollection Collection [TODO: Abstract to some interface to allow a hierarchy like UMaterialInstance?]`


**方法**:

- `bool GetBoolParameter(FString InVariableName)`  
  Accessors from Blueprint. For now just exposing common types but ideally we can expose any somehow in future.
- `FLinearColor GetColorParameter(FString InVariableName)`
- `float32 GetFloatParameter(FString InVariableName)`
- `int GetIntParameter(FString InVariableName)`
- `FQuat GetQuatParameter(FString InVariableName)`
- `FVector2D GetVector2DParameter(FString InVariableName)`
- `FVector4 GetVector4Parameter(FString InVariableName)`
- `FVector GetVectorParameter(FString InVariableName)`
- `SetBoolParameter(FString InVariableName, bool InValue)`
- `SetColorParameter(FString InVariableName, FLinearColor InValue)`
- `SetFloatParameter(FString InVariableName, float32 InValue)`
- `SetIntParameter(FString InVariableName, int InValue)`
- `SetQuatParameter(FString InVariableName, FQuat InValue)`
- `SetVector2DParameter(FString InVariableName, FVector2D InValue)`
- `SetVector4Parameter(FString InVariableName, FVector4 InValue)`  
  TODO[mg]: add position setter for LWC
- `SetVectorParameter(FString InVariableName, FVector InValue)`

---

