### UPyTestTypeHint


Used to verify if the generated Python stub is correctly type-hinted (if type hint is enabled). The stub is generated
* in the project intermediate folder when the Python developer mode is enabled (Editor preferences). The type hints can
* be checked in the stub itself or PythonScriptPlugin/Content/Python/test_type_hints.py can be loaded in a Python IDE that
* supports type checking and look at the code to verify that there is not problems with the types.

**属性**:

- `bool BoolProp [Check type hinted properties (setter/getter)]`
- `FPyTestDelegate DelegateProp`
- `EPyTestEnum EnumProp`
- `float32 FloatProp`
- `int IntProp`
- `TMap<int,FString> MapProp`
- `FPyTestMulticastDelegate MulticastDelegateProp`
- `TArray<FName> NameArrayProp`
- `FName NameProp`
- `TArray<TObjectPtr<UObject>> ObjectArrayProp`
- `UPyTestObject ObjectProp`
- `TSet<FString> SetProp`
- `FPyTestSlateTickDelegate SlateTickDelegate [Members to facilitate testing particular Python API.]`
- `TArray<FString> StrArrayProp`
- `FString StringProp`
- `FPyTestStruct StructProp`
- `TArray<FText> TextArrayProp`
- `FText TextProp`


**方法**:

- `TArray<FText> CheckArrayTypeHints(TArray<FString> Param1, TArray<FName> Param2, TArray<FText> Param3, TArray<UObject> Param4)`
- `bool CheckBoolTypeHints(bool bParam1, bool bParam2 = true, bool bParam3 = false)`  
  Check type hinted methods.
- `FPyTestDelegate& CheckDelegateTypeHints(FPyTestDelegate Param1 = FPyTestDelegate ( ))`
- `EPyTestEnum CheckEnumTypeHints(EPyTestEnum Param1, EPyTestEnum Param2 = EPyTestEnum :: One)`
- `float CheckFloatTypeHints(float32 Param1, float Param2, float32 Param3 = - 3.300000, float Param4 = 4.400000)`
- `int CheckIntegerTypeHints(uint8 Param1, int Param2 = 4, int64 Param3 = 5)`
- `TMap<FString,UObject> CheckMapTypeHints(TMap<int,FString> Param1, TMap<int,FName> Param2, TMap<int,FText> Param3, TMap<int,UObject> Param4)`
- `FName CheckNameTypeHints(FName Param1, FName Param2 = FName ( "" ))`
- `UPyTestObject CheckObjectTypeHints(const UPyTestObject Param1, const UPyTestObject Param4 = nullptr)`
- `TSet<FName> CheckSetTypeHints(TSet<FString> Param1, TSet<FName> Param2, TSet<UObject> Param3)`
- `FString CheckStringTypeHints(FString Param1, FString Param2 = "Hi")`
- `FPyTestStruct CheckStructTypeHints(FPyTestStruct Param1, FPyTestStruct Param2)`
- `FText CheckTextTypeHints(FText Param1, FText Param2)`

---

