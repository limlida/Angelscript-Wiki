### ADynamicMeshActor


ADynamicMeshActor is an Actor that has a USimpleDynamicMeshComponent as it's RootObject.

**属性**:

- `UDynamicMeshComponent DynamicMeshComponent`
- `bool bEnableComputeMeshPool [Control whether the DynamicMeshPool will be created when requested via GetComputeMeshPool()]`


**方法**:

- `UDynamicMesh AllocateComputeMesh()`  
  Request a compute mesh from the Pool, which will return a previously-allocated mesh or add and return a new one. If the Pool is disabled, a new UDynamicMesh will be allocated and returned.
- `FreeAllComputeMeshes()`  
  Release all compute meshes that the Pool has allocated, and then release them from the Pool, so that they will be garbage-collected
- `UDynamicMeshPool GetComputeMeshPool()`  
  Access the compute mesh pool
- `UDynamicMeshComponent GetDynamicMeshComponent() const`
- `ReleaseAllComputeMeshes()`  
  Release all compute meshes that the Pool has allocated
- `bool ReleaseComputeMesh(UDynamicMesh Mesh)`  
  Release a compute mesh back to the Pool

---

