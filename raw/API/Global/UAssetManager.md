### UAssetManager


A singleton UObject that is responsible for loading and unloading PrimaryAssets, and maintaining game-specific asset references
Games should override this class and change the class reference

**方法**:

- `FPrimaryAssetId GetPrimaryAssetIdForPath(FSoftObjectPath ObjectPath) const`
- `FSoftObjectPath GetPrimaryAssetPath(FPrimaryAssetId PrimaryAssetId) const`
- `FPrimaryAssetId GetPrimaryAssetIdForData(FAssetData AssetData) const`
- `int UnloadPrimaryAsset(FPrimaryAssetId AssetToUnload)`
- `int UnloadPrimaryAssets(TArray<FPrimaryAssetId> AssetsToUnload)`
- `LoadPrimaryAsset(FPrimaryAssetId AssetToLoad, TArray<FName> LoadBundles, int Priority = 0, UObject OptionalCallbackObject = nullptr, FName OptionalFinishedCallbackFunctionName = NAME_None, FName OptionalCanceledCallbackName = NAME_None)`
- `LoadPrimaryAssets(TArray<FPrimaryAssetId> AssetsToLoad, TArray<FName> LoadBundles, int Priority = 0, UObject OptionalCallbackObject = nullptr, FName OptionalFinishedCallbackFunctionName = NAME_None, FName OptionalCanceledCallbackName = NAME_None)`
- `LoadPrimaryAssetsWithType(FPrimaryAssetType PrimaryAssetType, TArray<FName> LoadBundles = TArray < FName > ( ), int Priority = 0, UObject OptionalCallbackObject = nullptr, FName OptionalFinishedCallbackFunctionName = NAME_None, FName OptionalCanceledCallbackName = NAME_None)`
- `CallOrRegister_OnCompletedInitialScan(UObject Object, FName FunctionName)`  
  Register a function to call when all types are scanned at startup, if this has already happened call immediately
- `bool GetPrimaryAssetData(FPrimaryAssetId PrimaryAssetId, FAssetData& AssetData)`  
  Gets the FAssetData for a primary asset with the specified type/name, will only work for once that have been scanned for already. Returns true if it found a valid data
- `bool GetPrimaryAssetDataList(FPrimaryAssetType PrimaryAssetType, TArray<FAssetData>& AssetDataList)`  
  Gets list of all FAssetData for a primary asset type, returns true if any were found
- `FPrimaryAssetId GetPrimaryAssetIdForObject(UObject Object)`  
  Sees if the passed in object is a registered primary asset, if so return it. Returns invalid Identifier if not found
- `bool GetPrimaryAssetIdList(FPrimaryAssetType PrimaryAssetType, TArray<FPrimaryAssetId>& PrimaryAssetIdList)`  
  Gets list of all FPrimaryAssetId for a primary asset type, returns true if any were found
- `UObject GetPrimaryAssetObject(FPrimaryAssetId PrimaryAssetId)`  
  Gets the in-memory UObject for a primary asset id, returning nullptr if it's not in memory. Will return blueprint class for blueprint assets. This works even if the asset wasn't loaded explicitly
- `FPrimaryAssetRules GetPrimaryAssetRules(FPrimaryAssetId PrimaryAssetId)`  
  Gets the management rules for a specific asset, this will merge the type and individual values
- `bool GetPrimaryAssetTypeInfo(FPrimaryAssetType PrimaryAssetType, FPrimaryAssetTypeInfo& AssetTypeInfo)`  
  Gets metadata for a specific asset type, returns false if not found
- `GetPrimaryAssetTypeInfoList(TArray<FPrimaryAssetTypeInfo>& AssetTypeInfoList)`  
  Gets list of all primary asset types infos
- `int ScanPathForPrimaryAssets(FPrimaryAssetType PrimaryAssetType, FString Path, UClass BaseClass, bool bHasBlueprintClasses, bool bIsEditorOnly = false, bool bForceSynchronousScan = true)`  
  Scans a list of paths and reads asset data for all primary assets of a specific type.
If done in the editor it will load the data off disk, in cooked games it will load out of the asset registry cache

---

