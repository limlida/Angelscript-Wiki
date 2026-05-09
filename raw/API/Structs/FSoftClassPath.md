### FSoftClassPath


A struct that contains a string reference to a class, can be used to make soft references to classes

**方法**:

- `FString GetLongPackageName() const`
- `FString GetAssetName() const`
- `FTopLevelAssetPath GetAssetPath() const`
- `bool IsValid() const`
- `bool IsNull() const`
- `bool IsAsset() const`
- `bool IsSubobject() const`
- `UClass ResolveClass() const`
- `UClass TryLoadClass() const`
- `FString ToString() const`
- `FSoftClassPath& opAssign(FSoftClassPath Other)`

---

