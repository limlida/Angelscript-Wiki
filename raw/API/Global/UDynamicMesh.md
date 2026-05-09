### UDynamicMesh


UDynamicMesh is a UObject container for a FDynamicMesh3.

**属性**:

- `FOnDynamicMeshModifiedBP MeshModifiedBPEvent [Blueprintable event called when mesh is modified, in the same cases as OnMeshChanged]`
- `bool bEnableMeshGenerator [Controls whether the active Generator (if configured) will be applied when rebuilding the mesh]`


**方法**:

- `int GetTriangleCount() const`  
  @return number of triangles in the mesh
- `bool IsEmpty() const`  
  @return true if the mesh has no triangles
- `UDynamicMesh Reset()`  
  Clear the internal mesh to an empty mesh.
This *does not* allocate a new mesh, so any existing mesh pointers/refs are still valid
- `UDynamicMesh ResetToCube()`  
  Clear the internal mesh to a 100x100x100 cube with base at the origin.
This this instead of Reset() if an initially-empty mesh is undesirable (eg for a Component)

---

