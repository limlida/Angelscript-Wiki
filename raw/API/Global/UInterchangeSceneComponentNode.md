### UInterchangeSceneComponentNode


**方法**:

- `bool AddComponentUid(FString ComponentUid)`
- `GetComponentUids(TArray<FString>& OutComponentUids) const`
- `bool GetCustomComponentVisibility(bool& AttributeValue) const`
- `bool GetCustomLocalTransform(FTransform& AttributeValue) const`
- `const UInterchangeSceneNode GetParentSceneNodeAndTransform(const UInterchangeBaseNodeContainer BaseNodeContainer, FTransform& SceneNodeTransform, bool bForceRecache = false) const`  
  Get's the SceneNode that the SceneComponentNode belongs to, also calculates the GlobalTransform within the SceneNode space.
- `bool SetCustomComponentVisibility(bool AttributeValue)`
- `bool SetCustomLocalTransform(FTransform AttributeValue)`

---

