### UCustomMeshComponent


Component that allows you to specify custom triangle mesh geometry

**方法**:

- `AddCustomMeshTriangles(TArray<FCustomMeshTriangle> Triangles)`  
  Add to the geometry to use on this triangle mesh.  This may cause an allocation.  Use SetCustomMeshTriangles() instead when possible to reduce allocations.
- `ClearCustomMeshTriangles()`  
  Removes all geometry from this triangle mesh.  Does not deallocate memory, allowing new geometry to reuse the existing allocation.
- `bool SetCustomMeshTriangles(TArray<FCustomMeshTriangle> Triangles)`  
  Set the geometry to use on this triangle mesh

---

