### UInterchangeInstancedStaticMeshComponentFactoryNode


**方法**:

- `AddInstanceTransform(FTransform InstanceTransform)`
- `AddInstanceTransforms(TArray<FTransform> InInstanceTransforms)`
- `bool GetCustomHierarchicalISM(bool& AttributeValue) const`
- `bool GetCustomInstancedAssetUid(FString& AttributeValue) const`  
  Get which asset, if any, a scene node is instantiating. Return false if the Attribute was not set previously.
- `GetInstanceTransforms(TArray<FTransform>& OutInstanceTransforms) const`
- `bool SetCustomHierarchicalISM(bool AttributeValue)`
- `bool SetCustomInstancedAssetUid(FString AttributeValue)`  
  Add an asset for this scene node to instantiate.

---

