### TSoftObjectPtr


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
- `TSoftObjectPtr<T>& opAssign(T Object)`
- `TSoftObjectPtr<T>& opAssign(TSoftObjectPtr<T> Other)`
- `bool opEquals(TSoftObjectPtr<T> Other) const`
- `bool opEquals(T Object) const`
- `T Get() const`  
  Returns the object selected at the specified path.
If the object is not loaded, returns nullptr.
- `LoadAsync(FOnSoftObjectLoaded OnLoaded) const`  
  Asynchronously loads the package that contains the referenced object.
Delegate may be called immediately if object is already loaded.
- `T EditorOnlyLoadSynchronous() const`  
  Synchronously load the asset references by the soft pointer. Only available in editor, because it would cause hitches during gameplay.

---

