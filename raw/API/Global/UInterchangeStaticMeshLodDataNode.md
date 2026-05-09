### UInterchangeStaticMeshLodDataNode


namespace UE

**方法**:

- `bool AddBoxCollisionMeshUid(FString ColliderMeshUid)`
- `bool AddBoxCollisionMeshUids(FString ColliderMeshUid, FString RenderMeshUid)`
- `bool AddCapsuleCollisionMeshUid(FString ColliderMeshUid)`
- `bool AddCapsuleCollisionMeshUids(FString ColliderMeshUid, FString RenderMeshUid)`
- `bool AddConvexCollisionMeshUid(FString ColliderMeshUid)`
- `bool AddConvexCollisionMeshUids(FString ColliderMeshUid, FString RenderMeshUid)`
- `bool AddMeshUid(FString MeshName)`
- `bool AddSphereCollisionMeshUid(FString ColliderMeshUid)`
- `bool AddSphereCollisionMeshUids(FString ColliderMeshUid, FString RenderMeshUid)`
- `GetBoxColliderRenderMeshUid(FString InColliderMeshUid, FString& OutRenderMeshUid) const`
- `TMap<FString,FString> GetBoxCollisionMeshMap() const`
- `GetBoxCollisionMeshUids(TArray<FString>& OutMeshNames) const`
- `int GetBoxCollisionMeshUidsCount() const`
- `GetCapsuleColliderRenderMeshUid(FString InColliderMeshUid, FString& OutRenderMeshUid) const`
- `TMap<FString,FString> GetCapsuleCollisionMeshMap() const`
- `GetCapsuleCollisionMeshUids(TArray<FString>& OutMeshNames) const`
- `int GetCapsuleCollisionMeshUidsCount() const`
- `GetConvexColliderRenderMeshUid(FString InColliderMeshUid, FString& OutRenderMeshUid) const`
- `TMap<FString,FString> GetConvexCollisionMeshMap() const`
- `GetConvexCollisionMeshUids(TArray<FString>& OutMeshNames) const`
- `int GetConvexCollisionMeshUidsCount() const`
- `bool GetForceCollisionPrimitiveGeneration(bool& bGenerate) const`  
  Gets whether we're generating collision primitive shapes even if the mesh data
doesn't match the desired shape very well
- `bool GetImportCollision(bool& AttributeValue) const`
- `bool GetImportCollisionType(EInterchangeMeshCollision& AttributeValue) const`
- `GetMeshUids(TArray<FString>& OutMeshNames) const`
- `int GetMeshUidsCount() const`  
  Mesh UIDs can be either a scene node or a mesh node UID. If it is a scene node, the mesh factory bakes the geometry payload with the global transform of the scene node.
- `bool GetOneConvexHullPerUCX(bool& AttributeValue) const`
- `GetSphereColliderRenderMeshUid(FString InColliderMeshUid, FString& OutRenderMeshUid) const`
- `TMap<FString,FString> GetSphereCollisionMeshMap() const`
- `GetSphereCollisionMeshUids(TArray<FString>& OutMeshNames) const`
- `int GetSphereCollisionMeshUidsCount() const`
- `bool RemoveAllBoxCollisionMeshes()`
- `bool RemoveAllCapsuleCollisionMeshes()`
- `bool RemoveAllConvexCollisionMeshes()`
- `bool RemoveAllMeshes()`
- `bool RemoveAllSphereCollisionMeshes()`
- `bool RemoveBoxCollisionMeshUid(FString ColliderMeshUid)`
- `bool RemoveCapsuleCollisionMeshUid(FString ColliderMeshUid)`
- `bool RemoveConvexCollisionMeshUid(FString MeshName)`
- `bool RemoveMeshUid(FString MeshName)`
- `bool RemoveSphereCollisionMeshUid(FString ColliderMeshUid)`
- `bool SetForceCollisionPrimitiveGeneration(bool bGenerate)`  
  Sets whether we're generating collision primitive shapes even if the mesh data
doesn't match the desired shape very well
- `bool SetImportCollision(bool AttributeValue)`
- `bool SetImportCollisionType(EInterchangeMeshCollision AttributeValue)`
- `bool SetOneConvexHullPerUCX(bool AttributeValue)`

---

