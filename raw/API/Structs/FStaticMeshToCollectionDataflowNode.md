### FStaticMeshToCollectionDataflowNode


Create a geometry collection from a UStaticMesh
Deprecated (5.6) - use the second version of StaticMeshToCollection node with only one materials ouput

**属性**:

- `FTransform MeshTransform [Transform to apply to the mesh before converting it to a collection]`
- `FLinearColor OverrideColor []`
- `UStaticMesh StaticMesh [Asset input]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bSetInternalFromMaterialIndex [Set the internal faces from material index]`
- `bool bSplitComponents [Split components]`


**方法**:

- `FStaticMeshToCollectionDataflowNode& opAssign(FStaticMeshToCollectionDataflowNode Other)`

---

