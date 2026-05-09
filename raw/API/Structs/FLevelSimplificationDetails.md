### FLevelSimplificationDetails


**属性**:

- `float32 DetailsPercentage [Percentage of details for static mesh proxy]`
- `int LandscapeExportLOD [Landscape LOD to use for static mesh generation, when not specified 'Max LODLevel' from landscape actor will be used]`
- `FMaterialProxySettings LandscapeMaterialSettings [Landscape material simplification]`
- `FMaterialProxySettings StaticMeshMaterialSettings [Landscape material simplification]`
- `bool bBakeFoliageToLandscape [Whether to bake foliage into landscape static mesh texture]`
- `bool bBakeGrassToLandscape [Whether to bake grass into landscape static mesh texture]`
- `bool bCreatePackagePerAsset [Whether to create separate packages for each generated asset. All in map package otherwise]`
- `bool bOverrideLandscapeExportLOD []`


**方法**:

- `FLevelSimplificationDetails& opAssign(FLevelSimplificationDetails Other)`

---

