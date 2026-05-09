### UCollectionManagerScriptingSubsystem


**方法**:

- `bool AddAssetDatasToCollection(FCollectionScriptingRef Collection, TArray<FAssetData> AssetDatas)`  
  Add the given assets to the given collection.

@param Collection The collection to modify. Will be created if it does not exist.
@param AssetDatas Assets to add.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool AddAssetDataToCollection(FCollectionScriptingRef Collection, FAssetData AssetData)`  
  Add the given asset to the given collection.

@param Collection The collection to modify. Will be created if it does not exist.
@param AssetData Asset to add.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool AddAssetPtrsToCollection(FCollectionScriptingRef Collection, TArray<UObject> AssetPtrs)`  
  Add the given assets to the given collection.

@param Collection The collection to modify. Will be created if it does not exist.
@param AssetPtrs Assets to add.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool AddAssetPtrToCollection(FCollectionScriptingRef Collection, const UObject AssetPtr)`  
  Add the given asset to the given collection.

@param Collection The collection to modify. Will be created if it does not exist.
@param AssetPtr Asset to add.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool AddAssetsToCollection(FCollectionScriptingRef Collection, TArray<FSoftObjectPath> AssetPaths)`  
  Add the given assets to the given collection.

@param Collection The collection to modify. Will be created if it does not exist.
@param AssetPaths Assets to add (their paths, eg) /Game/MyFolder/MyAsset.MyAsset).

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool AddAssetToCollection(FCollectionScriptingRef Collection, FSoftObjectPath AssetPath)`  
  Add the given asset to the given collection.

@param Collection The collection to modify. Will be created if it does not exist.
@param AssetPath Asset to add (its path name, eg) /Game/MyFolder/MyAsset.MyAsset).

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool CollectionExists(FCollectionScriptingContainerSource Container, FName Collection, ECollectionScriptingShareType ShareType)`  
  Check whether the given collection exists in the given container (matching both name and share type).

@param Container The container to search. "None" defaults to the base game's container.
@param Collection The name of the collection to look for.
@param ShareType The share type of the collection to look for.

@return True if the collection exists, false otherwise (if false is due to an error, see the output log for details).
- `bool CreateCollection(FCollectionScriptingContainerSource Container, FName Collection, ECollectionScriptingShareType ShareType, FCollectionScriptingRef& OutNewCollection)`  
  Create a new collection with the given name and share type in the provided collection container.

@param Container The container the collection should be created in. "None" defaults to the base game's container.
@param Collection Name to give to the collection.
@param ShareType Whether the collection should be local, private, or shared?
@param OutNewCollection The newly created collection.

@return True if the collection was created, false otherwise (see the output log for details on error).
- `bool CreateOrEmptyCollection(FCollectionScriptingContainerSource Container, FName Collection, ECollectionScriptingShareType ShareType, FCollectionScriptingRef& OutNewOrEmptyCollection)`  
  Create a new collection with the given name and share type in the provided collection container if it doesn't already exist, or empty the existing collection if it does.

@param Container The container the collection should be created or found in. "None" defaults to the base game's container.
@param Collection Name of the collection to create or empty.
@param ShareType Whether the collection should be local, private, or shared?
@param OutNewOrEmptyCollection The collection that was created or emptied.

@return True if the collection was created or emptied, false otherwise (see the output log for details on error).
- `bool DestroyCollection(FCollectionScriptingRef Collection)`  
  Destroy the given collection.

@param Collection The collection to destroy.

@return True if the collection was destroyed, false otherwise (see the output log for details on error).
- `bool EmptyCollection(FCollectionScriptingRef Collection)`  
  Remove all assets from the given collection.

@param Collection The collection to modify.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool GetAssetsInCollection(FCollectionScriptingRef Collection, TArray<FAssetData>& OutAssets)`  
  Get the assets in the given collection.

@param Collection The collection from which to retrieve assets.
@param OutAssets The assets found in the collection.

@return True if the collection exists, false otherwise (see the output log for details on error).
- `FCollectionScriptingContainerSource GetBaseGameCollectionContainer() const`  
  Get the collection container for the base game.

@return The collection container for the base game.
- `TArray<FCollectionScriptingContainerSource> GetCollectionContainers()`  
  Gets all available collection containers.

@return Array of all collection containers.
- `bool GetCollections(FCollectionScriptingContainerSource Container, TArray<FCollectionScriptingRef>& OutCollections)`  
  Get all available collections in the specified container.

@param Container The container to retrieve collections from. "None" defaults to the base game's container.
@param OutCollections The collections found in the container.

@return True if OutCollections contains at least one collection, false otherwise (see the output log for details on error).
- `bool GetCollectionsByName(FCollectionScriptingContainerSource Container, FName Collection, TArray<FCollectionScriptingRef>& OutCollections)`  
  Gets the given collections in the given container (matching only by name).

@param Container The container to search. "None" defaults to the base game's container.
@param Collection The collection to look for.
@param OutCollections The collections found.

@return True if OutCollections contains at least one collection, false otherwise (see the output log for details on error).
- `bool GetCollectionsContainingAsset(FCollectionScriptingContainerSource Container, FSoftObjectPath AssetPath, TArray<FCollectionScriptingRef>& OutCollections)`  
  Get the collections in the specified container that contain the given asset.

@param Container Container to search for collections containing the given asset. "None" defaults to the base game's container.
@param AssetPath Asset to test (its path name, eg) /Game/MyFolder/MyAsset.MyAsset).
@param OutCollections Array of the collections that contain the asset.

@return True if the container exists, false otherwise (see the output log for details on error).
- `bool GetCollectionsContainingAssetData(FCollectionScriptingContainerSource Container, FAssetData AssetData, TArray<FCollectionScriptingRef>& OutCollections)`  
  Get the collections in the specified container that contain the given asset.

@param Container Container to search for collections containing the given asset. "None" defaults to the base game's container.
@param AssetData Asset to test.
@param OutCollections Array of the collections that contain the asset.

@return True if the container exists, false otherwise (see the output log for details on error).
- `bool GetCollectionsContainingAssetPtr(FCollectionScriptingContainerSource Container, const UObject AssetPtr, TArray<FCollectionScriptingRef>& OutCollections)`  
  Get the collections in the specified container that contain the given asset.

@param Container Container to search for collections containing the given asset. "None" defaults to the base game's container.
@param AssetPtr Asset to test.
@param OutCollections Array of the collections that contain the asset.

@return True if the container exists, false otherwise (see the output log for details on error).
- `bool RemoveAssetDataFromCollection(FCollectionScriptingRef Collection, FAssetData AssetData)`  
  Remove the given asset from the given collection.

@param Collection The collection to modify.
@param AssetData Asset to remove.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool RemoveAssetDatasFromCollection(FCollectionScriptingRef Collection, TArray<FAssetData> AssetDatas)`  
  Remove the given assets from the given collection.

@param Collection The collection to modify.
@param AssetDatas Assets to remove.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool RemoveAssetFromCollection(FCollectionScriptingRef Collection, FSoftObjectPath AssetPath)`  
  Remove the given asset from the given collection.

@param Collection The collection to modify.
@param AssetPath Asset to remove (its path, eg) /Game/MyFolder/MyAsset.MyAsset).

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool RemoveAssetPtrFromCollection(FCollectionScriptingRef Collection, const UObject AssetPtr)`  
  Remove the given asset from the given collection.

@param Collection The collection to modify.
@param AssetPtr Asset to remove.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool RemoveAssetPtrsFromCollection(FCollectionScriptingRef Collection, TArray<UObject> AssetPtrs)`  
  Remove the given assets from the given collection.

@param Collection The collection to modify.
@param AssetPtrs Assets to remove.

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool RemoveAssetsFromCollection(FCollectionScriptingRef Collection, TArray<FSoftObjectPath> AssetPaths)`  
  Remove the given assets from the given collection.

@param Collection The collection to modify.
@param AssetPaths Assets to remove (their paths, eg) /Game/MyFolder/MyAsset.MyAsset).

@return True if the collection was modified, false otherwise (see the output log for details on error).
- `bool RenameCollection(FCollectionScriptingRef Collection, FName NewName, ECollectionScriptingShareType NewShareType)`  
  Rename the given collection.

@param Collection The collection to rename.
@param NewName New name to give to the collection.
@param NewShareType New share type to give to the collection (local, private, or shared).

@return True if the collection was renamed, false otherwise (see the output log for details on error).
- `bool ReparentCollection(FCollectionScriptingRef Collection, FCollectionScriptingRef NewParentCollection)`  
  Re-parent the given collection.

@param Collection The collection to re-parent.
@param NewParentCollection The new parent collection, or "None" to have the collection become a root collection.

@return True if the collection was re-parented, false otherwise (see the output log for details on error).

---

