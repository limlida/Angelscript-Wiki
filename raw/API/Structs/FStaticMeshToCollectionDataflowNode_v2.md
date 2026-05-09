### FStaticMeshToCollectionDataflowNode_v2


Create a geometry collection from a UStaticMesh

**属性**:

- `FTransform MeshTransform [Transform to apply to the mesh before converting it to a collection]`
- `FLinearColor OverrideColor []`
- `UStaticMesh StaticMesh [Asset input]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bSetInternalFromMaterialIndex [Set the internal faces from material index]`
- `bool bSplitComponents [Split components - when enabled, each island of the mesh will be converted to an individual transform in the collection]`


**方法**:

- `FStaticMeshToCollectionDataflowNode_v2& opAssign(FStaticMeshToCollectionDataflowNode_v2 Other)`

---

