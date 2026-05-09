### TSoftClassPtr


**方法**:

- `FSoftObjectPath ToSoftObjectPath() const`
- `FString ToString() const`
- `FString GetLongPackageName() const`
- `FString GetAssetName() const`
- `bool IsValid() const`
- `bool IsPending() const`
- `bool IsNull() const`
- `Reset()`
- `TSoftObjectPtr<T>& opAssign(FSoftObjectPath Path)`
- `TSoftClassPtr<T>& opAssign(UClass Object)`
- `TSoftClassPtr<T>& opAssign(TSoftClassPtr<T> Other)`
- `TSoftClassPtr<T>& opAssign(TSubclassOf<T> Other)`
- `bool opEquals(TSoftClassPtr<T> Other) const`
- `bool opEquals(TSubclassOf<T> Other) const`
- `bool opEquals(UClass Object) const`
- `TSubclassOf<T> Get() const`  
  Returns the class selected at the specified path.
If the class is not loaded, returns nullptr.
- `LoadAsync(FOnSoftClassLoaded OnLoaded) const`  
  Asynchronously loads the package that contains the referenced class.
Delegate may be called immediately if class is already loaded.

---

