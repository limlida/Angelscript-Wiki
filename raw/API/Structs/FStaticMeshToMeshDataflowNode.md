### FStaticMeshToMeshDataflowNode


Converts a StaticMesh into a DynamicMesh

**属性**:

- `int LODLevel [Specifies the LOD level to use]`
- `FLinearColor OverrideColor []`
- `UStaticMesh StaticMesh [StaticMesh to convert]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bUseHiRes [Output the HiRes representation, if set to true and HiRes doesn't exist it will output empty mesh]`


**方法**:

- `FStaticMeshToMeshDataflowNode& opAssign(FStaticMeshToMeshDataflowNode Other)`

---

