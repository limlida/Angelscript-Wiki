### FSkeletalMeshBuildSettings


Settings applied when building a mesh.

**属性**:

- `int BoneInfluenceLimit [The maximum number of bone influences to allow each vertex in this mesh to use.

If set higher than the limit determined by the project settings, it has no effect.

If set to 0, the value is taken from the DefaultBoneInfluenceLimit project setting.]`
- `float32 MorphThresholdPosition [Threshold to compare vertex position equality when computing morph target deltas.]`
- `float32 ThresholdPosition [Threshold use to decide if two vertex position are equal.]`
- `float32 ThresholdTangentNormal [Threshold use to decide if two normal, tangents or bi-normals are equal.]`
- `float32 ThresholdUV [Threshold use to decide if two UVs are equal.]`
- `bool bComputeWeightedNormals [If true, we will use the surface area and the corner angle of the triangle as a ratio when computing the normals.]`
- `bool bRecomputeNormals [If true, normals in the raw mesh are ignored and recomputed.]`
- `bool bRecomputeTangents [If true, tangents in the raw mesh are ignored and recomputed.]`
- `bool bRemoveDegenerates [If true, degenerate triangles will be removed.]`
- `bool bUseBackwardsCompatibleF16TruncUVs [If true, UVs will use backwards-compatible F16 conversion with truncation for legacy meshes.]`
- `bool bUseFullPrecisionUVs [If true, UVs will be stored at full floating point precision.]`
- `bool bUseHighPrecisionSkinWeights [Use 16-bit precision for rendering skin weights, instead of 8-bit precision.]`
- `bool bUseHighPrecisionTangentBasis [If true, Tangents will be stored at 16 bit vs 8 bit precision.]`
- `bool bUseMikkTSpace [If true, degenerate triangles will be removed.]`


**方法**:

- `FSkeletalMeshBuildSettings& opAssign(FSkeletalMeshBuildSettings Other)`

---

