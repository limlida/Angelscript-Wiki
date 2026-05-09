### UEditNormalsToolProperties


Standard properties

**属性**:

- `ENormalCalculationMethod NormalCalculationMethod [Choose the method for computing vertex normals]`
- `float32 SharpEdgeAngleThreshold [Threshold on angle of change in face normals across an edge, above which we create a sharp edge if bSplitNormals is true]`
- `ESplitNormalMethod SplitNormalMethod [Control whether and how the topology of the normals is recomputed, e.g. to create sharp edges where face normals change by a large amount or where face group IDs change.  Normals will always be recomputed unless SplitNormal Method is UseExistingTopology.]`
- `bool bAllowSharpVertices [Assign separate normals at 'sharp' vertices, for example, at the tip of a cone]`
- `bool bFixInconsistentNormals [For meshes with inconsistent triangle orientations/normals, flip as needed to make the normals consistent]`
- `bool bInvertNormals [Invert (flip) all mesh normals and associated triangle orientations]`
- `bool bRecomputeNormals [Recompute all mesh normals]`

---

