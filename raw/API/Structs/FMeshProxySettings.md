### FMeshProxySettings


**属性**:

- `float32 HardAngleThreshold [Angle at which a hard edge is introduced between faces]`
- `ELandscapeCullingPrecision LandscapeCullingPrecision [Level of detail of the landscape that should be used for the culling]`
- `int LightMapResolution [Lightmap resolution]`
- `FMaterialProxySettings MaterialSettings [Material simplification]`
- `float32 MaxRayCastDist [Override search distance used when discovering texture values for simplified geometry. Useful when non-zero Merge Distance setting generates new geometry in concave corners.]`
- `float32 MergeDistance [Distance at which meshes should be merged together, this can close gaps like doors and windows in distant geometry]`
- `FMeshNaniteSettings NaniteSettings [Settings related to building Nanite data.]`
- `EProxyNormalComputationMethod NormalCalculationMethod [Controls the method used to calculate the normal for the simplified geometry]`
- `int ScreenSize [Screen size of the resulting proxy mesh in pixels]`
- `FColor UnresolvedGeometryColor [Base color assigned to LOD geometry that can't be associated with the source geometry: e.g. doors and windows that have been closed by the Merge Distance]`
- `float32 VoxelSize [Override when converting multiple meshes for proxy LOD merging. Warning, large geometry with small sampling has very high memory costs]`
- `bool bAllowDistanceField [Whether to allow distance field to be computed for this mesh. Disable this to save memory if the merged mesh will only be rendered in the distance.]`
- `bool bAllowVertexColors [Whether to allow vertex colors saved in the merged mesh]`
- `bool bCalculateCorrectLODModel [Determines whether or not the correct LOD models should be calculated given the source meshes and transition size]`
- `bool bComputeLightMapResolution [If ticked will compute the lightmap resolution by summing the dimensions for each mesh included for merging]`
- `bool bCreateCollision [Whether to generate collision for the merged mesh]`
- `bool bGenerateLightmapUVs [Whether to generate lightmap uvs for the merged mesh]`
- `bool bGroupIdenticalMeshesForBaking [Bake identical meshes (or mesh instances) only once. Can lead to discrepancies with the source mesh visual, especially for materials that are using world position or per instance data. However, this will result in better quality baked textures & greatly reduce baking time.]`
- `bool bOverrideTransferDistance [Enable an override for material transfer distance]`
- `bool bOverrideVoxelSize [If true, Spatial Sampling Distance will not be automatically computed based on geometry and you must set it directly]`
- `bool bRecalculateNormals [Whether Simplygon should recalculate normals, otherwise the normals channel will be sampled from the original mesh]`
- `bool bReuseMeshLightmapUVs [Whether to attempt to re-use the source mesh's lightmap UVs when baking the material or always generate a new set.]`
- `bool bSupportRayTracing [Whether ray tracing will be supported on this mesh. Disable this to save memory if the generated mesh will only be rendered in the distance.]`
- `bool bUseHardAngleThreshold [Enable the use of hard angle based vertex splitting]`
- `bool bUseLandscapeCulling [Whether or not to use available landscape geometry to cull away invisible triangles]`


**方法**:

- `FMeshProxySettings& opAssign(FMeshProxySettings Other)`

---

