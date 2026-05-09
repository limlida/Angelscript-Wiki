### FTopLevelAssetPath


* A struct that can reference a top level asset such as '/Path/To/Package.AssetName'
* Stores two FNames internally to avoid
*  a) storing a concatenated FName that bloats global FName storage
*  b) storing an empty FString for a subobject path as FSoftObjectPath allows
* Can also be used to reference the package itself in which case the second name is NAME_None
* and the object resolves to the string `/Path/To/Package`

**属性**:

- `FName AssetName [Name of the asset within the package e.g. 'AssetName']`
- `FName PackageName [Name of the package containing the asset e.g. /Path/To/Package]`


**方法**:

- `bool IsValid() const`
- `bool IsNull() const`
- `Reset()`
- `bool opEquals(FTopLevelAssetPath Other) const`
- `FTopLevelAssetPath& opAssign(FString AssetPath)`
- `FString ToString() const`
- `FTopLevelAssetPath& opAssign(FTopLevelAssetPath Other)`

---

