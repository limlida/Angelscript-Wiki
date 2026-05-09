### UPyTestObject


Object to allow testing of the various UObject features that are exposed to Python wrapped types.

**属性**:

- `bool Bool`
- `bool BoolDefaultsOnly []`
- `bool BoolInstanceOnly []`
- `FPyTestChildStruct ChildStruct`
- `FPyTestDelegate Delegate`
- `EPyTestEnum Enum`
- `float32 Float`
- `int Int`
- `FPyTestMulticastDelegate MulticastDelegate`
- `FName Name`
- `FString String`
- `TArray<FString> StringArray`
- `TMap<FString,int> StringIntMap`
- `TSet<FString> StringSet`
- `FPyTestStruct Struct`
- `TArray<FPyTestStruct> StructArray`
- `FText Text`


**方法**:

- `int CallFuncBlueprintImplementable(int InValue) const`
- `bool CallFuncBlueprintImplementablePackedGetter(int& OutValue) const`
- `int CallFuncBlueprintNative(int InValue) const`
- `CallFuncBlueprintNativeRef(FPyTestStruct& InOutStruct) const`
- `int DelegatePropertyCallback(int InValue) const`  
  UHT couldn't parse any default value for the FieldPath.
- `int FuncBlueprintImplementable(int InValue) const`
- `bool FuncBlueprintImplementablePackedGetter(int& OutValue) const`
- `int FuncBlueprintNative(int InValue) const`
- `FuncBlueprintNativeRef(FPyTestStruct& InOutStruct) const`
- `FuncTakingPyTestChildStruct(FPyTestChildStruct InStruct) const`
- `int FuncTakingPyTestDelegate(FPyTestDelegate InDelegate, int InValue) const`
- `FuncTakingPyTestStruct(FPyTestStruct InStruct) const`
- `FuncTakingPyTestStructDefault(FPyTestStruct InStruct)`
- `MulticastDelegatePropertyCallback(FString InStr) const`
- `bool IsBoolSet() const`

---

