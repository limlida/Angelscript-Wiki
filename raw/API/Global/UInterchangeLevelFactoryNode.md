### UInterchangeLevelFactoryNode


**方法**:

- `bool AddCustomActorFactoryNodeUid(FString ActorFactoryNodeUid)`  
  Add one actor factory node unique id to this object.
- `GetCustomActorFactoryNodeUid(int Index, FString& OutActorFactoryNodeUid) const`  
  This function allow to retrieve one actor factory node unique id for this object.
- `int GetCustomActorFactoryNodeUidCount() const`  
  This function allow to retrieve the number of track dependencies for this object.
- `GetCustomActorFactoryNodeUids(TArray<FString>& OutActorFactoryNodeUids) const`  
  This function allow to retrieve all actor factory node unique id for this object.
- `bool GetCustomCreateWorldPartitionLevel(bool& AttributeValue) const`  
  If true, created world partition level.
- `bool GetCustomSceneImportAssetFactoryNodeUid(FString& AttributeValue) const`  
  Get the actor factory node unique id that hold the re-import data.
- `bool GetCustomShouldCreateLevel(bool& AttributeValue) const`  
  Get actors bounding box.
- `bool RemoveCustomActorFactoryNodeUid(FString ActorFactoryNodeUid)`  
  Remove one actor factory node unique id from this object.
- `bool SetCustomCreateWorldPartitionLevel(bool AttributeValue)`  
  If true, created world partition level.
- `bool SetCustomSceneImportAssetFactoryNodeUid(FString AttributeValue)`  
  Set the actor factory node unique id that hold the re-import data.
- `bool SetCustomShouldCreateLevel(bool AttributeValue)`  
  Set actors bounding box.

---

