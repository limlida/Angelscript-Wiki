### FPrimaryAssetId


This identifies an object as a "primary" asset that can be searched for by the AssetManager and used in various tools

**属性**:

- `FName PrimaryAssetName [An FName describing this asset. This is usually the short name of the object, but could be a full asset path for things like maps, or objects with GetPrimaryId() overridden.
      "PrimaryAssetType:PrimaryAssetName" should form a unique name across your project.]`
- `FPrimaryAssetType PrimaryAssetType [An FName describing the logical type of this object, usually the name of a base UClass. For example, any Blueprint derived from APawn will have a Primary Asset Type of "Pawn".
      "PrimaryAssetType:PrimaryAssetName" should form a unique name across your project.]`


**方法**:

- `bool IsValid() const`
- `bool opEquals(FPrimaryAssetId Other) const`
- `FString ToString() const`
- `FPrimaryAssetId& opAssign(FPrimaryAssetId Other)`

---

