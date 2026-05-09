### FAssetManagerSearchRules


Rules for how to scan the asset registry for assets matching path and type descriptions

**属性**:

- `UClass AssetBaseClass [Assets must inherit from this class, for blueprints this should be the instance base class]`
- `TArray<FString> AssetScanPaths [List of top-level directories and specific assets to search, must be paths starting with /, directories should not have a trailing /]`
- `TArray<FString> ExcludePatterns [Optional list of exclude wildcard patterns that can use *, if any of these match it will be excluded]`
- `TArray<FString> IncludePatterns [Optional list of include wildcard patterns using * that will get matched against full package path. If there are any at least one of these must match]`
- `bool bForceSynchronousScan [True if this should force a synchronous scan of the disk even if an async scan is in progress]`
- `bool bHasBlueprintClasses [True if scanning for blueprints, false for all other assets]`
- `bool bSkipManagerIncludeCheck [True if this test should skip the ShouldIncludeInAssetSearch function on AssetManager]`
- `bool bSkipVirtualPathExpansion [True if AssetScanPaths are real paths that do not need expansion]`


**方法**:

- `FAssetManagerSearchRules& opAssign(FAssetManagerSearchRules Other)`

---

