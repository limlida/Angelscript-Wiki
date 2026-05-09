### FJsonObject


**方法**:

- `bool IsValid() const`
- `bool HasField(FString FieldName) const`
- `RemoveField(FString FieldName)`
- `RemoveAllFields()`
- `FString GetStringField(FString FieldName) const`
- `float GetNumberField(FString FieldName) const`
- `bool GetBoolField(FString FieldName) const`
- `FJsonObject GetObjectField(FString FieldName) const`
- `FJsonArray GetArrayField(FString FieldName) const`
- `SetStringField(FString FieldName, FString StringValue)`
- `SetNumberField(FString FieldName, float Number)`
- `SetBoolField(FString FieldName, bool InValue)`
- `SetObjectField(FString FieldName, FJsonObject InObject)`
- `SetArrayField(FString FieldName, FJsonArray InArray)`
- `bool TryGetStringField(FString FieldName, FString& OutString) const`
- `bool TryGetNumberField(FString FieldName, float& OutNumber) const`
- `bool TryGetBoolField(FString FieldName, bool& bOutBool) const`
- `bool TryGetObjectField(FString FieldName, FJsonObject& OutObject) const`
- `FJsonObject CreateObjectField(FString FieldName)`
- `bool TryGetArrayField(FString FieldName, FJsonArray& OutArray) const`
- `bool LoadFromString(FString JsonStr)`
- `FString SaveToString(bool bPrettyPrint = true) const`
- `FJsonObjectFieldIterator Iterator()`

---

