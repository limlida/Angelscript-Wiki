### UEnum


Reflection data for an enumeration.

**方法**:

- `FName GetNameByIndex(int InIndex) const`
- `int GetIndexByName(FName InName, EGetByNameFlags Flags = EGetByNameFlags :: None) const`
- `FName GetNameByValue(int64 InValue) const`
- `int64 GetValueByName(FName InName, EGetByNameFlags Flags = EGetByNameFlags :: None) const`
- `FString GetNameStringByIndex(int InIndex) const`
- `int GetIndexByNameString(FString SearchString, EGetByNameFlags Flags = EGetByNameFlags :: None) const`
- `FString GetNameStringByValue(int64 InValue) const`
- `int64 GetValueByNameString(FString SearchString, EGetByNameFlags Flags = EGetByNameFlags :: None) const`
- `FText GetDisplayNameTextByIndex(int InIndex) const`
- `FText GetDisplayNameTextByValue(int64 InValue) const`
- `int64 GetMaxEnumValue() const`
- `int NumEnums() const`
- `bool IsValidEnumValue(int64 InValue) const`
- `bool IsValidEnumName(FName InName) const`
- `bool ContainsExistingMax() const`
- `FString GenerateEnumPrefix() const`
- `FTopLevelAssetPath GetEnumPathName() const`  
  Returns the full path to the specified enum as a Top Level Asset Path used by asset utilities

---

