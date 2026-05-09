### FMakeRootProxyMeshDataflowNode


Create a RootProxyMesh object
(used by geometry collection assets)

**属性**:

- `UStaticMesh Mesh [mesh to use as a proxy]`
- `FLinearColor OverrideColor []`
- `TArray<TObjectPtr<UMaterialInterface>> OverrideMaterials []`
- `FTransform Transform [transform to use for the proxy, relative to the asset it will be used for]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FMakeRootProxyMeshDataflowNode& opAssign(FMakeRootProxyMeshDataflowNode Other)`

---

