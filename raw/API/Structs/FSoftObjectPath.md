### FSoftObjectPath


A struct that contains a string reference to an object, either a package, a top level asset or a subobject.
This can be used to make soft references to assets that are loaded on demand.
This is stored internally as an FTopLevelAssetPath pointing to the top level asset (/package/path.assetname) and an optional string subobject path.
If the MetaClass metadata is applied to a FProperty with this the UI will restrict to that type of asset.

**方法**:

- `FString GetLongPackageName() const`
- `FString GetAssetName() const`
- `FTopLevelAssetPath GetAssetPath() const`
- `bool IsValid() const`
- `bool IsNull() const`
- `bool IsAsset() const`
- `bool IsSubobject() const`
- `bool opEquals(FSoftObjectPath Other) const`
- `UObject TryLoad() const`
- `UObject ResolveObject() const`
- `FString ToString() const`
- `FSoftObjectPath& opAssign(FSoftObjectPath Other)`

---

