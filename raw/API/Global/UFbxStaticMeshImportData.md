### UFbxStaticMeshImportData


**属性**:

- `float32 DistanceFieldResolutionScale [Scale to apply to the mesh when allocating the distance field volume texture.
The default scale is 1, which is assuming that the mesh will be placed unscaled in the world.]`
- `FName StaticMeshLODGroup [The LODGroup to associate with this mesh when it is imported]`
- `EVertexColorImportOption VertexColorImportOption [Specify how vertex colors should be imported]`
- `FColor VertexOverrideColor [Specify override color in the case that VertexColorImportOption is set to Override]`
- `bool bAutoGenerateCollision [If checked, collision will automatically be generated (ignored if custom collision is imported or used).]`
- `bool bBuildNanite [If enabled, allows to render objects with Nanite]`
- `bool bBuildReversedIndexBuffer`
- `bool bCombineMeshes [If enabled, combines all meshes into a single mesh]`
- `bool bGenerateLightmapUVs`
- `bool bOneConvexHullPerUCX [If checked, one convex hull per UCX_ prefixed collision mesh will be generated instead of decomposing into multiple hulls]`
- `bool bRemoveDegenerates [Disabling this option will keep degenerate triangles found.  In general you should leave this option on.]`

---

