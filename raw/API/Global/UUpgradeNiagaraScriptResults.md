### UUpgradeNiagaraScriptResults


Wrapper class for passing results back from the version upgrade python script.

**属性**:

- `TArray<TObjectPtr<UNiagaraPythonScriptModuleInput>> NewInputs []`
- `TArray<TObjectPtr<UNiagaraPythonScriptModuleInput>> OldInputs []`
- `bool bCancelledByPythonError [Whether the converter process was cancelled due to an unrecoverable error in the python script process.]`


**方法**:

- `UNiagaraPythonScriptModuleInput GetOldInput(FString InputName)`
- `ResetToDefault(FString InputName)`
- `SetBoolInput(FString InputName, bool Value)`
- `SetColorInput(FString InputName, FLinearColor Value)`
- `SetEnumInput(FString InputName, FString Value)`
- `SetEnumInputFromInt(FString InputName, int Value)`
- `SetFloatInput(FString InputName, float32 Value)`
- `SetIntInput(FString InputName, int Value)`
- `SetLinkedInput(FString InputName, FString Value)`
- `SetNewInput(FString InputName, UNiagaraPythonScriptModuleInput Value)`
- `SetQuatInput(FString InputName, FQuat Value)`
- `SetVec2Input(FString InputName, FVector2D Value)`
- `SetVec3Input(FString InputName, FVector Value)`
- `SetVec4Input(FString InputName, FVector4 Value)`

---

