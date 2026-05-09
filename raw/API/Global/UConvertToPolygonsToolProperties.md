### UConvertToPolygonsToolProperties


**属性**:

- `float32 AngleTolerance [Tolerance for planarity]`
- `EConvertToPolygonsMode ConversionMode [Strategy to use to group triangles]`
- `FName GroupLayer [Select PolyGroup layer to use.]`
- `int MinGroupSize [Minimum number of triangles to include in a group. Any group containing fewer triangles will be merged with an adjacent group (if possible).]`
- `FString NewLayerName [Name of the new Group Layer]`
- `float32 NormalWeighting [This parameter modulates the effect of normal weighting during region-growing]`
- `int NumPoints [Furthest-Point Sample count, approximately this number of polygroups will be generated]`
- `float32 QuadAdjacencyWeight [Bias for Quads that are adjacent to already-discovered Quads. Set to 0 to disable.]`
- `float32 QuadMetricClamp [Set to values below 1 to ignore less-likely triangle pairings]`
- `int QuadSearchRounds [Iteratively repeat quad-searching in uncertain areas, to try to slightly improve results]`
- `bool bCalculateNormals [If true, normals are recomputed per-group, with hard edges at group boundaries]`
- `bool bNormalWeighted [If true, region-growing in Sampling modes will be controlled by face normals, resulting in regions with borders that are more-aligned with curvature ridges]`
- `bool bRespectHardNormals [If true, polygroup borders will not cross existing hard normal seams]`
- `bool bRespectUVSeams [If true, polygroup borders will not cross existing UV seams]`
- `bool bShowGroupColors [Display each group with a different auto-generated color]`
- `bool bSplitExisting [If enabled, then furthest-point sampling happens with respect to existing Polygroups, ie the existing groups are further subdivided]`
- `bool bUseAverageGroupNormal [Whether to compute Face Normal Deviation based on the overall PolyGroup's average normal, or to only consider the normals of the individual triangles]`

---

