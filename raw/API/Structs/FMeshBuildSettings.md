### FMeshBuildSettings


Settings applied when building a mesh.

**属性**:

- `FVector BuildScale3D [The local scale applied when building the mesh]`
- `UStaticMesh DistanceFieldReplacementMesh`
- `float32 DistanceFieldResolutionScale [Scale to apply to the mesh when allocating the distance field volume texture.
The default scale is 1, which is assuming that the mesh will be placed unscaled in the world.]`
- `int DstLightmapIndex`
- `int MaxLumenMeshCards [Max Lumen mesh cards to generate for this mesh.
More cards means that surface will have better coverage, but will result in increased runtime overhead.
Set to 0 in order to disable mesh card generation for this mesh.
Default is 12.]`
- `int MinLightmapResolution`
- `int SrcLightmapIndex`
- `bool bBuildReversedIndexBuffer [Required to optimize mesh in mirrored transform. Double index buffer size.]`
- `bool bComputeWeightedNormals [If true, we will use the surface area and the corner angle of the triangle as a ratio when computing the normals.]`
- `bool bGenerateDistanceFieldAsIfTwoSided [Whether to generate the distance field treating every triangle hit as a front face.
When enabled prevents the distance field from being discarded due to the mesh being open, but also lowers Distance Field AO quality.]`
- `bool bGenerateLightmapUVs`
- `bool bRecomputeNormals [If true, normals in the raw mesh are ignored and recomputed.]`
- `bool bRecomputeTangents [If true, tangents in the raw mesh are ignored and recomputed.]`
- `bool bRemoveDegenerates [If true, degenerate triangles will be removed.]`
- `bool bSupportFaceRemap`
- `bool bUseBackwardsCompatibleF16TruncUVs [If true, UVs will use backwards-compatible F16 conversion with truncation for legacy meshes.]`
- `bool bUseFullPrecisionUVs [If true, UVs will be stored at full floating point precision.]`
- `bool bUseHighPrecisionTangentBasis [If true, Tangents will be stored at 16 bit vs 8 bit precision.]`
- `bool bUseMikkTSpace [If true, degenerate triangles will be removed.]`


**方法**:

- `FMeshBuildSettings& opAssign(FMeshBuildSettings Other)`

---

