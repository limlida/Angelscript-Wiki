### FPrimaryAssetTypeInfo


Structure with publicly exposed information about an asset type. These can be loaded out of a config file or constructed at runtime

**属性**:

- `TSoftClassPtr<UObject> AssetBaseClass [Base Class of all assets of this type]`
- `TArray<FDirectoryPath> Directories [Directories to search for this asset type]`
- `FName PrimaryAssetType [The logical name for this type of Primary Asset]`
- `FPrimaryAssetRules Rules [Default management rules for this type, individual assets can be overridden]`
- `TArray<FSoftObjectPath> SpecificAssets [Individual assets to scan]`
- `bool bHasBlueprintClasses [True if the assets loaded are blueprints classes, false if they are normal UObjects]`
- `bool bIsEditorOnly [If true this type will not cause anything to be cooked; the AssetManager will use instances of this type to
define chunk assignments and NeverCook rules, but will ignore AlwaysCook rules. Assets labeled by instances
of this type will need to be reference by another PrimaryAsset, or by something outside the AssetManager,
to be cooked.]`


**方法**:

- `FPrimaryAssetTypeInfo& opAssign(FPrimaryAssetTypeInfo Other)`

---

