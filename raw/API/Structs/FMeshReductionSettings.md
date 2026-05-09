### FMeshReductionSettings


Settings used to reduce a mesh.

**属性**:

- `int BaseLODModel`
- `float32 HardAngleThreshold [Angle at which a hard edge is introduced between faces.]`
- `float32 MaxDeviation [The maximum distance in object space by which the reduced mesh may deviate from the original mesh.]`
- `uint MaxNumOfTriangles [The maximum number of triangles to retain when using percentage termination criterion. (Triangles criterion properties)]`
- `uint MaxNumOfVerts [The maximum number of vertices to retain when using percentage termination criterion. (Vertices criterion properties)]`
- `float32 PercentTriangles [Percentage of triangles to keep. 1.0 = no reduction, 0.0 = no triangles. (Triangles criterion properties)]`
- `float32 PercentVertices [Percentage of vertices to keep. 1.0 = no reduction, 0.0 = no vertices. (Vertices criterion properties)]`
- `float32 PixelError [The amount of error in pixels allowed for this LOD.]`
- `EMeshFeatureImportance ShadingImportance [Higher values try to preserve normals better.]`
- `EMeshFeatureImportance SilhouetteImportance [Higher values minimize change to border edges.]`
- `EStaticMeshReductionTerimationCriterion TerminationCriterion [The method to use when optimizing static mesh LODs]`
- `EMeshFeatureImportance TextureImportance [Higher values reduce texture stretching.]`
- `EMeshFeatureImportance VertexColorImportance [Higher values minimize change to vertex color data.]`
- `EMeshFeatureImportance VisibilityAggressiveness [Higher values generates fewer samples]`
- `float32 WeldingThreshold [Threshold in object space at which vertices are welded together.]`
- `bool bCullOccluded`
- `bool bGenerateUniqueLightmapUVs`
- `bool bKeepSymmetry`
- `bool bRecalculateNormals`
- `bool bVisibilityAided`


**方法**:

- `FMeshReductionSettings& opAssign(FMeshReductionSettings Other)`

---

