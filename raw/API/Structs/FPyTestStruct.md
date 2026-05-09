### FPyTestStruct


Struct to allow testing of the various UStruct features that are exposed to Python wrapped types.

**属性**:

- `bool Bool`
- `bool BoolDefaultsOnly []`
- `bool BoolInstanceOnly []`
- `bool BoolMutable []`
- `EPyTestEnum Enum`
- `float32 Float`
- `int Int`
- `FName Name`
- `FString String`
- `TArray<FString> StringArray`
- `TMap<FString,int> StringIntMap`
- `TSet<FString> StringSet`
- `FText Text`


**方法**:

- `FPyTestStruct AddFloat(float32 InValue) const`
- `FPyTestStruct AddInt(int InValue) const`
- `FPyTestStruct AddStr(FString InValue) const`
- `ClearBoolMutable() const`
- `ClearBoolMutableViaRef()`
- `bool IsBoolSet() const`
- `SetBoolMutable() const`
- `SetBoolMutableViaRef()`
- `FPyTestStruct& opAssign(FPyTestStruct Other)`

---

