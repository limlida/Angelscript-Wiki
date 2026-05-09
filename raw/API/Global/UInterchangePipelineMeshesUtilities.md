### UInterchangePipelineMeshesUtilities


**方法**:

- `GetAllGeometryCacheGeometry(TArray<FString>& MeshGeometryUids) const`  
  Get the unique IDs of all geometry cache geometry.
- `GetAllGeometryCacheInstance(TArray<FString>& MeshInstanceUids) const`  
  Get the unique IDs of all geometry cache instances.
- `GetAllMeshGeometry(TArray<FString>& MeshGeometryUids) const`  
  Get the unique IDs of all mesh geometry.
- `GetAllMeshGeometryNotInstanced(TArray<FString>& MeshGeometryUids) const`  
  Get the unique IDs of all non-instanced mesh geometry.
- `GetAllMeshInstanceUids(TArray<FString>& MeshInstanceUids) const`  
  Get the unique IDs of all mesh instances.
- `GetAllMeshInstanceUidsUsingMeshGeometryUid(FString MeshGeometryUid, TArray<FString>& MeshInstanceUids) const`  
  Get all instanced mesh UIDs that use the mesh geometry unique ID.
- `GetAllSkinnedMeshGeometry(TArray<FString>& MeshGeometryUids) const`  
  Get the unique IDs of all skinned mesh geometry.
- `GetAllSkinnedMeshInstance(TArray<FString>& MeshInstanceUids) const`  
  Get the unique IDs of all skinned mesh instances.
- `GetAllStaticMeshGeometry(TArray<FString>& MeshGeometryUids) const`  
  Get the unique IDs of all static mesh geometry.
- `GetAllStaticMeshInstance(TArray<FString>& MeshInstanceUids) const`  
  Get the unique IDs of all static mesh instances.
- `FInterchangeMeshGeometry GetMeshGeometryByUid(FString MeshGeometryUid) const`  
  Get the geometry mesh from the unique ID.
- `FString GetMeshGeometrySkeletonRootUid(FString MeshGeometryUid) const`  
  Return the skeleton root node UID. This is the UID for a UInterchangeSceneNode that has a "Joint" specialized type.
Return an empty string if the MeshGeometryUid parameter points to nothing.
- `FInterchangeMeshInstance GetMeshInstanceByUid(FString MeshInstanceUid) const`  
  Get the instanced mesh from the unique ID.
- `FString GetMeshInstanceSkeletonRootUid(FString MeshInstanceUid) const`  
  Return the skeleton root node UID. This is the UID for a UInterchangeSceneNode that has a "Joint" specialized type.
Return an empty string if the MeshInstanceUid parameter points to nothing.
- `bool IsValidMeshGeometryUid(FString MeshGeometryUid) const`  
  Return true if there is an existing FInterchangeMeshGeometry that matches the MeshInstanceUid key.
- `bool IsValidMeshInstanceUid(FString MeshInstanceUid) const`  
  Return true if there is an existing FInterchangeMeshInstance that matches the MeshInstanceUid key.
- `SetContext(FInterchangePipelineMeshesUtilitiesContext Context) const`

---

