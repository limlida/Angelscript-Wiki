### UMRMeshComponent


**属性**:

- `UMaterialInterface Material []`
- `UMaterialInterface WireframeMaterial []`
- `bool bCreateMeshProxySections [If true, MRMesh will create a renderable mesh proxy.  If false it will not, but could still provide collision.]`
- `bool bNeverCreateCollisionMesh [If true, MRMesh will not create a collidable ridgid body for each mesh section and can therefore never have collision.  Avoids the cost of generating collision.]`
- `bool bUpdateNavMeshOnMeshUpdate [If true, MRMesh will automatically update its navmesh whenever any Mesh section is updated. This may be expensive. If this is disabled use ForceNavMeshUpdate to trigger a navmesh update when necessary.  Moving the component will also trigger a navmesh update.]`


**方法**:

- `Clear()`
- `ForceNavMeshUpdate()`  
  Force navmesh generation to run using the current collision data.  This will run even if the collision data has not been udpated! Unless you are changing navmesh settings or similar RequestNavMeshUpdate is reccomended.
- `bool GetEnableMeshOcclusion() const`
- `bool GetUseWireframe() const`
- `FLinearColor GetWireframeColor() const`
- `bool IsConnected() const`
- `RequestNavMeshUpdate()`  
  Generate nav mesh if collision data has changed since the last nav mesh generation.
- `SetEnableMeshOcclusion(bool bEnable)`
- `SetUseWireframe(bool bUseWireframe)`
- `SetWireframeColor(FLinearColor InColor)`
- `SetWireframeMaterial(UMaterialInterface InMaterial)`  
  Set the wireframe material.

---

