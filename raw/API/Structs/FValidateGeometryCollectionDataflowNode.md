### FValidateGeometryCollectionDataflowNode


Editor Fracture Mode / Utilities / Validate tool
Ensures that geometrycollection is valid and clean.

**属性**:

- `FLinearColor OverrideColor []`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`
- `bool bRemoveClustersOfOne [Whether to collapse any clusters with only a single child]`
- `bool bRemoveDanglingClusters [Remove dangling clusters -- Note this can invalidate caches]`
- `bool bRemoveUnreferencedGeometry [Find and remove any unused geometry data]`


**方法**:

- `FValidateGeometryCollectionDataflowNode& opAssign(FValidateGeometryCollectionDataflowNode Other)`

---

