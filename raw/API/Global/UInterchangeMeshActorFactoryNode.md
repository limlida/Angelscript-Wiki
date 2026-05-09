### UInterchangeMeshActorFactoryNode


**方法**:

- `bool GetCustomAnimationAssetUidToPlay(FString& AttributeValue) const`  
  Get the animation asset set for this scene node to play.
- `bool GetCustomGeometricTransform(FTransform& AttributeValue) const`  
  Get the geometric offset. Any mesh attached to this scene node will be offset using this transform.
- `bool GetCustomInstancedAssetFactoryNodeUid(FString& AttributeValue) const`  
  Get the resolved asset factory node.
- `GetSlotMaterialDependencies(TMap<FString,FString>& OutMaterialDependencies) const`  
  Retrieve the correspondence table between slot names and assigned materials for this object.
- `bool GetSlotMaterialDependencyUid(FString SlotName, FString& OutMaterialDependency) const`  
  Retrieve the Material dependency for the specified slot of this object.
- `bool RemoveSlotMaterialDependencyUid(FString SlotName)`  
  Remove the Material dependency associated with the specified slot name from this object.
- `bool SetCustomAnimationAssetUidToPlay(FString AttributeValue)`  
  Set the animation asset for this scene node to play. (This is only relevant for SkeletalMeshActors: scene nodes that are instantiating skeletal meshes.)
- `bool SetCustomGeometricTransform(FTransform AttributeValue)`  
  Set the geometric offset. Any mesh attached to this scene node will be offset using this transform.
- `bool SetCustomInstancedAssetFactoryNodeUid(FString AttributeValue)`  
  Set the resolved asset factory node.
- `bool SetSlotMaterialDependencyUid(FString SlotName, FString MaterialDependencyUid)`  
  Add a Material dependency to the specified slot of this object.

---

