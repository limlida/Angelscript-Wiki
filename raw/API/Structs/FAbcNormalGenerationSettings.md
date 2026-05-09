### FAbcNormalGenerationSettings


**属性**:

- `float32 HardEdgeAngleThreshold [Threshold used to determine whether an angle between two normals should be considered hard, closer to 0 means more smooth vs 1]`
- `bool bForceOneSmoothingGroupPerObject [Whether or not to force smooth normals for each individual object rather than calculating smoothing groups]`
- `bool bIgnoreDegenerateTriangles [Determines whether or not the degenerate triangles should be ignored when calculating tangents/normals]`
- `bool bRecomputeNormals [Determines whether or not the normals should be forced to be recomputed]`
- `bool bSkipComputingTangents [Determines whether tangents are computed for GeometryCache. Skipping them can improve streaming performance but may cause visual artifacts where they are required]`


**方法**:

- `FAbcNormalGenerationSettings& opAssign(FAbcNormalGenerationSettings Other)`

---

