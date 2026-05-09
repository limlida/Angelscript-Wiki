### FGeometryCollectionSource


**属性**:

- `TArray<float32> InstanceCustomData`
- `FTransform LocalTransform`
- `FSoftObjectPath SourceGeometryObject`
- `TArray<TObjectPtr<UMaterialInterface>> SourceMaterial`
- `bool bAddInternalMaterials [(Legacy) Whether source materials will be duplicated to create new slots for internal materials, or existing odd materials will be considered internal. (For non-Geometry Collection inputs only.)]`
- `bool bSetInternalFromMaterialIndex [Whether to set the 'internal' flag for faces with odd-numbered materials slots.]`
- `bool bSplitComponents [Whether individual source mesh components should be split into separate pieces of geometry based on mesh connectivity. If checked, triangles that are not topologically connected will be assigned separate bones. (For non-Geometry Collection inputs only.)]`


**方法**:

- `FGeometryCollectionSource& opAssign(FGeometryCollectionSource Other)`

---

