### UFbxSceneImportOptionsStaticMesh


**属性**:

- `EFBXSceneNormalGenerationMethod NormalGenerationMethod [Use the MikkTSpace tangent space generator for generating normals and tangents on the mesh]`
- `EFBXSceneNormalImportMethod NormalImportMethod [Enabling this option will read the tangents(tangent,binormal,normal) from FBX file instead of generating them automatically.]`
- `EFbxSceneVertexColorImportOption VertexColorImportOption [Specify how vertex colors should be imported]`
- `FColor VertexOverrideColor [Specify override color in the case that VertexColorImportOption is set to Override]`
- `bool bAutoGenerateCollision [If checked, collision will automatically be generated (ignored if custom collision is imported or used).]`
- `bool bBuildReversedIndexBuffer`
- `bool bGenerateLightmapUVs`
- `bool bOneConvexHullPerUCX [If checked, one convex hull per UCX_ prefixed collision mesh will be generated instead of decomposing into multiple hulls]`
- `bool bRemoveDegenerates [Disabling this option will keep degenerate triangles found.  In general you should leave this option on.]`

---

