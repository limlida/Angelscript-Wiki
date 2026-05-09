### UInterchangeMeshNode


**方法**:

- `bool AddAssemblyPartDependencyUid(FString DependencyUid)`  
  Add the specified Nanite assembly part dependency to this object.
- `GetAssemblyPartDependencies(TArray<FString>& OutDependencies) const`  
  Retrieve the Nanite assembly part dependencies for this object.
- `int GetAssemblyPartDependenciesCount() const`  
  Retrieve the number of Nanite assembly part dependencies for this object.
- `GetAssemblyPartDependency(int Index, FString& OutDependency) const`  
  Retrieve the specified Nanite assembly part dependency for this object.
- `bool GetCustomBoundingBox(FBox& AttributeValue) const`  
  Query the bounding box of this mesh. Return false if the attribute was not set.
- `bool GetCustomCollisionType(EInterchangeMeshCollision& AttributeValue) const`  
  Get the type of collision shapes we should generate from this mesh.
Note: This is a separate mechanism from the FBX-style collision shape name prefixes. For now, these
collision shapes will only be used for the static mesh generated from this very same Mesh node
- `bool GetCustomHasSmoothGroup(bool& AttributeValue) const`  
  Query whether this mesh has smoothing groups. Return false if the attribute was not set.
- `bool GetCustomHasVertexBinormal(bool& AttributeValue) const`  
  Query whether this mesh has vertex bi-normals. Return false if the attribute was not set.
- `bool GetCustomHasVertexColor(bool& AttributeValue) const`  
  Query whether this mesh has vertex colors. Return false if the attribute was not set.
- `bool GetCustomHasVertexNormal(bool& AttributeValue) const`  
  Query whether this mesh has vertex normals. Return false if the attribute was not set.
- `bool GetCustomHasVertexTangent(bool& AttributeValue) const`  
  Query whether this mesh has vertex tangents. Return false if the attribute was not set.
- `bool GetCustomPolygonCount(int& AttributeValue) const`  
  Query the polygon count of this mesh. Return false if the attribute was not set.
- `bool GetCustomUVCount(int& AttributeValue) const`  
  Query the UV count of this mesh. Return false if the attribute was not set.
- `bool GetCustomVertexCount(int& AttributeValue) const`  
  Query the vertex count of this mesh. Return false if the attribute was not set.
- `int GetMorphTargetDependeciesCount() const`  
  Retrieve the number of morph target dependencies for this object.
- `GetMorphTargetDependencies(TArray<FString>& OutDependencies) const`  
  Retrieve all morph target dependencies for this object.
- `GetMorphTargetDependency(int Index, FString& OutDependency) const`  
  Retrieve the specified morph target dependency for this object.
- `bool GetMorphTargetName(FString& OutMorphTargetName) const`  
  Get the morph target name.
Return true if we successfully retrieved the MorphTargetName attribute.
- `GetSceneInstanceUid(int Index, FString& OutDependency) const`  
  Retrieve the asset instance this scene node refers to.
- `GetSceneInstanceUids(TArray<FString>& OutDependencies) const`  
  Retrieve the asset instances this scene node refers to.
- `int GetSceneInstanceUidsCount() const`  
  Retrieve the number of scene nodes instancing this mesh.
- `int GetSkeletonDependeciesCount() const`  
  Retrieve the number of skeleton dependencies for this object.
- `GetSkeletonDependencies(TArray<FString>& OutDependencies) const`  
  Retrieve the skeleton dependency for this object.
- `GetSkeletonDependency(int Index, FString& OutDependency) const`  
  Retrieve the specified skeleton dependency for this object.
- `GetSlotMaterialDependencies(TMap<FString,FString>& OutMaterialDependencies) const`  
  Retrieve the correspondence table between slot names and assigned materials for this object.
- `bool GetSlotMaterialDependencyUid(FString SlotName, FString& OutMaterialDependency) const`  
  Retrieve the specified Material dependency for a given slot of this object.
- `bool IsMorphTarget() const`  
  Return true if this node represents a morph target.
- `bool IsSkinnedMesh() const`  
  Return true if this node represents a skinned mesh.
- `bool RemoveAssemblyPartDependencyUid(FString DependencyUid)`  
  Remove the specified Nanite assembly part dependency from this object.
- `bool RemoveMorphTargetDependencyUid(FString DependencyUid)`  
  Remove the specified morph target dependency from this object.
- `bool RemoveSceneInstanceUid(FString DependencyUid)`  
  Remove the specified asset instance this scene node refers to.
- `bool RemoveSkeletonDependencyUid(FString DependencyUid)`  
  Remove the specified skeleton dependency from this object.
- `bool RemoveSlotMaterialDependencyUid(FString SlotName)`  
  Remove the Material dependency associated with the given slot name from this object.
- `bool SetCustomBoundingBox(FBox AttributeValue)`  
  Set the bounding box of this mesh. Return false if the attribute could not be set.
- `bool SetCustomCollisionType(EInterchangeMeshCollision AttributeValue)`  
  Set the type of collision shapes we should generate from this mesh
- `bool SetCustomHasSmoothGroup(bool AttributeValue)`  
  Set the smoothing group attribute of this mesh. Return false if the attribute could not be set.
- `bool SetCustomHasVertexBinormal(bool AttributeValue)`  
  Set the vertex bi-normal attribute of this mesh. Return false if the attribute could not be set.
- `bool SetCustomHasVertexColor(bool AttributeValue)`  
  Set the vertex color attribute of this mesh. Return false if the attribute could not be set.
- `bool SetCustomHasVertexNormal(bool AttributeValue)`  
  Set the vertex normal attribute of this mesh. Return false if the attribute could not be set.
- `bool SetCustomHasVertexTangent(bool AttributeValue)`  
  Set the vertex tangent attribute of this mesh. Return false if the attribute could not be set.
- `bool SetCustomPolygonCount(int AttributeValue)`  
  Set the polygon count of this mesh. Return false if the attribute could not be set.
- `bool SetCustomUVCount(int AttributeValue)`  
  Set the UV count attribute of this mesh. Return false if the attribute could not be set.
- `bool SetCustomVertexCount(int AttributeValue)`  
  Set the vertex count of this mesh. Return false if the attribute could not be set.
- `bool SetMorphTarget(bool bIsMorphTarget)`  
  Set the IsMorphTarget attribute to determine whether this node represents a morph target.
- `bool SetMorphTargetDependencyUid(FString DependencyUid)`  
  Add the specified morph target dependency to this object.
- `bool SetMorphTargetName(FString MorphTargetName)`  
  Set the MorphTargetName attribute to determine the name of the morph target.
- `SetPayLoadKey(FString PayLoadKey, EInterchangeMeshPayLoadType PayLoadType)`
- `bool SetSceneInstanceUid(FString DependencyUid)`  
  Add the specified asset instance this scene node refers to.
- `bool SetSkeletonDependencyUid(FString DependencyUid)`  
  Add the specified skeleton dependency to this object.
- `bool SetSkinnedMesh(bool bIsSkinnedMesh)`  
  Set the IsSkinnedMesh attribute to determine whether this node represents a skinned mesh.
- `bool SetSlotMaterialDependencyUid(FString SlotName, FString MaterialDependencyUid)`  
  Add the specified Material dependency to a specific slot name of this object.

---

