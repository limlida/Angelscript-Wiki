### UAssetTagsSubsystem


**方法**:

- `bool CollectionExists(FName Name)`  
  Check whether the given collection exists.
Use this for in-game access. Use the Collections Manager Scripting Subsystem for any other use case.

@param Name Name of the collection to test.

@return True if the collection exists, false otherwise.
- `TArray<FAssetData> GetAssetsInCollection(FName Name)`  
  Get the assets in the given collection.
Use this for in-game access. Use the Collections Manager Scripting Subsystem for any other use case.

@param Name Name of the collection to test.

@return Assets in the given collection.
- `TArray<FName> GetCollections()`  
  Get the names of all available collections.
Use this for in-game access. Use the Collections Manager Scripting Subsystem for any other use case.

@return Names of all available collections.
- `TArray<FName> GetCollectionsContainingAssetData(FAssetData AssetData)`  
  Get the names of the collections that contain the given asset.
Use this for in-game access. Use the Collections Manager Scripting Subsystem for any other use case.

@param AssetData Asset to test.

@return Names of the collections that contain the asset.
- `TArray<FName> GetCollectionsContainingAssetPtr(const UObject AssetPtr)`  
  Get the names of the collections that contain the given asset.
Use this for in-game access. Use the Collections Manager Scripting Subsystem for any other use case.

@param AssetPtr Asset to test.

@return Names of the collections that contain the asset.
- `TArray<FName> K2_GetCollectionsContainingAsset(FSoftObjectPath AssetPath)`  
  Get the names of the collections that contain the given asset.
Use this for in-game access. Use the Collections Manager Scripting Subsystem for any other use case.

@param AssetPathName Asset to test (its path name, eg) /Game/MyFolder/MyAsset.MyAsset).

@return Names of the collections that contain the asset.

---

