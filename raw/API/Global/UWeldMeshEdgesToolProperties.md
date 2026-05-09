### UWeldMeshEdgesToolProperties


**属性**:

- `EWeldMeshEdgesAttributeUIMode AttrWeldingMode [Controls split-attribute welding performed after the Mesh weld.  Applies to normals, tangents, UVs and colors.]`
- `float32 SplitColorThreshold [Threshold color-distance used to determine if split colors should be merged]`
- `float32 SplitNormalThreshold [Threshold on the angle between normals used to determine if split normals should be merged]`
- `float32 SplitTangentsThreshold [Threshold on the angle between tangent used to determine if split tangents should be merged]`
- `float32 SplitUVThreshold [Threshold uv-distance used to determine if split UVs should be merged]`
- `float32 Tolerance [Edges are considered matching if both pairs of endpoint vertices are closer than this distance]`
- `bool bOnlyUnique [Only merge unambiguous pairs that have unique duplicate-edge matches]`
- `bool bResolveTJunctions [If enabled, after an initial attempt at Welding, attempt to resolve remaining open edges in T-junction configurations via edge splits, and then retry Weld]`
- `bool bSplitBowties [If enabled, will split bowtie vertices before welding. This can in some cases enable more edges to be successfully welded]`

---

