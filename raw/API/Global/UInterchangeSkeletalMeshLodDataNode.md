### UInterchangeSkeletalMeshLodDataNode


ns UE

**方法**:

- `bool AddMeshUid(FString MeshName)`  
  Add a mesh geometry used to create this LOD geometry. A mesh UID can represent either a scene node or a mesh node. If it is a scene node, the mesh factory bakes the geometry payload with the global transform of the scene node.
- `bool GetCustomSkeletonUid(FString& AttributeValue) const`  
  Query the LOD skeletal mesh factory skeleton reference. Return false if the attribute was not set.
- `GetMeshUids(TArray<FString>& OutMeshNames) const`  
  Query all mesh geometry this LOD will be made from. A mesh UID can represent either a scene node or a mesh node. If it is a scene node, the mesh factory bakes the geometry payload with the global transform of the scene node.
- `int GetMeshUidsCount() const`  
  Return the number of mesh geometries this LOD will be made from. A mesh UID can represent either a scene node or a mesh node. If it is a scene node, the mesh factory bakes the geometry payload with the global transform of the scene node.
- `bool RemoveAllMeshes()`  
  Remove all mesh geometry used to create this LOD geometry. A mesh UID can represent either a scene node or a mesh node. If it is a scene node, the mesh factory bakes the geometry payload with the global transform of the scene node.
- `bool RemoveMeshUid(FString MeshName)`  
  Remove a mesh geometry used to create this LOD geometry. A mesh UID can represent either a scene node or a mesh node. If it is a scene node, the mesh factory bakes the geometry payload with the global transform of the scene node.
- `bool SetCustomSkeletonUid(FString AttributeValue)`  
  Set the LOD skeletal mesh factory skeleton reference. Return false if the attribute could not be set.

---

