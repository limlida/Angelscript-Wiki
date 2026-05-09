### FInterchangePipelineMeshesUtilitiesContext


* Represents the context UInterchangePipelineMeshesUtilities will use when the client queries data.

**属性**:

- `bool bConvertSkeletalMeshToStaticMesh [If enabled, all skeletal meshes are converted to static meshes.]`
- `bool bConvertStaticMeshToSkeletalMesh [If enabled, all static meshes are converted to skeletal meshes.]`
- `bool bConvertStaticsWithMorphTargetsToSkeletals [If enabled, all static meshes that have morph targets will be imported as skeletal meshes instead.]`
- `bool bIgnoreGeometryCaches [If enabled, all geometry caches will be ignored. The mesh utility will not return any geometry caches.]`
- `bool bIgnoreStaticMeshes [If enabled, all static meshes will be ignored. The mesh utility will not return any static meshes.]`
- `bool bImportMeshesInBoneHierarchy [If enabled, meshes nested in bone hierarchies are imported as meshes instead of being converted to bones. If the meshes are not skinned, they are
added to the skeletal mesh and removed from the list of static meshes.]`
- `bool bQueryGeometryOnlyIfNoInstance [When querying geometry, this flag will not add MeshGeometry if there is a scene node that points to a geometry.]`


**方法**:

- `FInterchangePipelineMeshesUtilitiesContext& opAssign(FInterchangePipelineMeshesUtilitiesContext Other)`

---

