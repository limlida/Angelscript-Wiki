### UInterchangeInstancedStaticMeshComponentNode


**方法**:

- `AddInstanceTransform(FTransform InstanceTransform)`
- `AddInstanceTransforms(TArray<FTransform> InInstanceTransforms)`
- `bool GetCustomInstancedAssetUid(FString& AttributeValue) const`  
  Get which asset, if any, a scene node is instantiating. Return false if the Attribute was not set previously.
- `GetInstanceTransforms(TArray<FTransform>& OutInstanceTransforms) const`
- `bool SetCustomInstancedAssetUid(FString AttributeValue)`  
  Add an asset for this scene node to instantiate.

---

