### FMeshMergingSettings


Mesh merging settings

**属性**:

- `int GutterSize [The gutter (in texels) to add to each sub-chart for our baked-out material for the top mip level]`
- `EMeshLODSelectionType LODSelectionType [Which selection mode should be used when generating the merged static mesh]`
- `FMaterialProxySettings MaterialSettings [Material simplification]`
- `FMeshNaniteSettings NaniteSettings [Settings related to building Nanite data.]`
- `EUVOutput OutputUVs [Whether to output the specified UV channels into the merged mesh (only if the source meshes contain valid UVs for the specified channel)]`
- `int SpecificLOD [A given LOD level to export from the source meshes, used if LOD Selection Type is set to SpecificLOD]`
- `int TargetLightMapResolution [The lightmap resolution used both for generating lightmap UV coordinates, and also set on the generated static mesh]`
- `bool bAllowDistanceField [Whether to allow distance field to be computed for this mesh. Disable this to save memory if the merged mesh will only be rendered in the distance.]`
- `bool bBakeVertexDataToMesh [Whether or not vertex data such as vertex colours should be baked into the resulting mesh]`
- `bool bComputedLightMapResolution [Whether or not the lightmap resolution should be computed by summing the lightmap resolutions for the input Mesh Components]`
- `bool bGenerateLightMapUV [Whether to generate lightmap UVs for a merged mesh]`
- `bool bIncludeImposters [Whether or not to include any imposter LODs that are part of the source static meshes]`
- `bool bMergeEquivalentMaterials [Whether to attempt to merge materials that are deemed equivalent. This can cause artifacts in the merged mesh if world position/actor position etc. is used to determine output color.]`
- `bool bMergeMaterials [Whether to merge source materials into one flat material, ONLY available when LOD Selection Type is set to LowestDetailLOD]`
- `bool bMergeMeshSockets [Whether to merge sockets]`
- `bool bMergePhysicsData [Whether to merge physics data (collision primitives)]`
- `bool bPivotPointAtZero [Whether merged mesh should have pivot at world origin, or at first merged component otherwise]`
- `bool bReuseMeshLightmapUVs [Whether to attempt to re-use the source mesh's lightmap UVs when baking the material or always generate a new set.]`
- `bool bSupportRayTracing [Whether ray tracing will be supported on this mesh. Disable this to save memory if the generated mesh will only be rendered in the distance.]`
- `bool bUseLandscapeCulling [Whether or not to use available landscape geometry to cull away invisible triangles]`
- `bool bUseTextureBinning [Whether or not to calculate varying output texture sizes according to their importance in the final atlas texture]`
- `bool bUseVertexDataForBakingMaterial [Whether or not vertex data such as vertex colours should be used when baking out materials]`


**方法**:

- `FMeshMergingSettings& opAssign(FMeshMergingSettings Other)`

---

