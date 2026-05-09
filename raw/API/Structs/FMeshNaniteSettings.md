### FMeshNaniteSettings


Settings applied when building Nanite data.

**属性**:

- `int BoneWeightPrecision [Blend Weight Precision in bits. -1 is auto. 0 is rigid.]`
- `TArray<FMeshDisplacementMap> DisplacementMaps []`
- `int DisplacementUVChannel [UV channel used to sample displacement maps]`
- `float32 FallbackPercentTriangles [Percentage of triangles to keep from source mesh for fallback. 1.0 = no reduction, 0.0 = no triangles.]`
- `float32 FallbackRelativeError [Reduce until at least this amount of error is reached relative to size of the mesh]`
- `ENaniteFallbackTarget FallbackTarget [Which heuristic to use when generating the fallback mesh.]`
- `ENaniteGenerateFallback GenerateFallback [Whether fallback mesh should be generated.]`
- `float32 KeepPercentTriangles [Percentage of triangles to keep from source mesh. 1.0 = no reduction, 0.0 = no triangles.]`
- `float32 MaxEdgeLengthFactor [Controls the maximum distance allowed between each vertex of the mesh on screen. Can be used to prevent oversimplification
of meshes that are intended to be deformed (e.g. animation using World Position Offset, Spline Mesh Component, etc.).
Should be left at default of 0 unless explicitly needed to fix oversimplification issues.]`
- `int NormalPrecision [Normal Precision in bits. -1 is auto.]`
- `int NumRays [Number of rays traced per voxel to sample the surface]`
- `int PositionPrecision [Position Precision. Step size is 2^(-PositionPrecision) cm. MIN_int32 is auto.]`
- `float32 RayBackUp`
- `ENaniteShapePreservation ShapePreservation`
- `int TangentPrecision [Tangent Precision in bits. -1 is auto.]`
- `uint TargetMinimumResidencyInKB [How much of the resource should always be resident (In KB). Approximate due to paging. 0: Minimum size (single page). MAX_uint32: Entire mesh.]`
- `float32 TrimRelativeError [Reduce until at least this amount of error is reached relative to size of the mesh]`
- `int VoxelLevel`
- `bool bEnabled [If true, Nanite data will be generated.]`
- `bool bExplicitTangents [Whether to store explicit tangents instead of using the implicitly derived ones.]`
- `bool bLerpUVs [Whether to interpolate UVs when simplifying.
Should be enabled whenever possible.
For real UV coordinates this allows calculating the lowest error optimal UVs for new vertices when simplifying,
assuming the UVs are used as normal texture coordinates and will interpolate across the face of the triangles.

Disable if data stored in UVs isn't valid to interpolate, for example if indexes are stored in UVs.
Lerping an index doesn't make sense and would break the shader trying to use it.
Note: If disabled, error from UVs is no longer accounted for when Nanite selects the LOD to render because
error due to arbitrary vertex attributes that aren't interpolatable can't be generally reasoned about.]`
- `bool bSeparable`
- `bool bVoxelNDF`
- `bool bVoxelOpacity`


**方法**:

- `FMeshNaniteSettings& opAssign(FMeshNaniteSettings Other)`

---

