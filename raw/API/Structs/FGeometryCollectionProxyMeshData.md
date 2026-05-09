### FGeometryCollectionProxyMeshData


**属性**:

- `TArray<FGeometryCollectionProxyMeshMaterials> MeshOverrideMaterials [Optional arrays of override material matching each proxy Mesh
if an entry is missing or if the arary is empty , then no material will be assigned]`
- `TArray<FTransform3f> MeshTransforms [Transform of the mesh relative to the geometry collection it belongs to
if an entry is missing or if the arary is empty , those transforms are assume to be identity
making any proxy mesh done before 5.6 be fully backward compatible]`
- `TArray<TObjectPtr<UStaticMesh>> ProxyMeshes [References to meshes to be used as proxies for rendering when the geometry collection is not broken yet]`


**方法**:

- `FGeometryCollectionProxyMeshData& opAssign(FGeometryCollectionProxyMeshData Other)`

---

