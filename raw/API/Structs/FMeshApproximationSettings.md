### FMeshApproximationSettings


**属性**:

- `float32 ApproximationAccuracy [Approximation Accuracy in Meters, will determine (eg) voxel resolution]`
- `EMeshApproximationBaseCappingType BaseCapping [Optional methods to attempt to close off the bottom of open meshes]`
- `float32 CaptureFieldOfView`
- `int ClampVoxelDimension [Maximum allowable voxel count along main directions. This is a limit on ApproximationAccuracy. Max of 1290 (1290^3 is the last integer < 2^31, using a bigger number results in failures in TArray code & probably elsewhere)]`
- `float32 CurvatureAlignment [This parameter controls alignment of the initial patches to creases in the mesh]`
- `float32 GapDistance [Distance in Meters to expand/contract to fill gaps]`
- `float32 GeometricDeviation [Allowable Geometric Deviation in Meters when SimplifyMethod incorporates a Geometric Tolerance]`
- `EMeshApproximationGroundPlaneClippingPolicy GroundClipping [Configure how the final mesh should be clipped with a ground plane, if desired]`
- `float32 GroundClippingZHeight [Z-Height for the ground clipping plane, if enabled]`
- `float32 HardNormalAngle`
- `int InitialPatchCount [Number of initial patches mesh will be split into before computing island merging]`
- `FMaterialProxySettings MaterialSettings [Material generation settings]`
- `float32 MaxAngleDeviation [UV islands will not be merged if their average face normals deviate by larger than this amount]`
- `float32 MergingThreshold [Distortion/Stretching Threshold for island merging - larger values increase the allowable UV stretching]`
- `int MultiSamplingAA [If Value is > 1, Multisample output baked textures by this amount in each direction (eg 4 == 16x supersampling)]`
- `float32 NaniteFallbackPercentTriangles [Percentage of triangles to keep from source Nanite mesh for fallback. 1.0 = no reduction, 0.0 = no triangles.]`
- `float32 NaniteFallbackRelativeError [Reduce Nanite fallback mesh until at least this amount of error is reached relative to size of the mesh.]`
- `ENaniteFallbackTarget NaniteFallbackTarget [Which heuristic to use when generating the Nanite fallback mesh.]`
- `float32 NearPlaneDist`
- `EOccludedGeometryFilteringPolicy OcclusionMethod [Type of hidden geometry removal to apply]`
- `EMeshApproximationType OutputType [Type of output from mesh approximation process]`
- `int RenderCaptureResolution [If Value is zero, use MaterialSettings resolution, otherwise override the render capture resolution]`
- `EMeshApproximationSimplificationPolicy SimplifyMethod [Mesh Simplification criteria]`
- `float32 TargetMinThicknessMultiplier [Multiplier on Approximation Accuracy used for auto-thickening]`
- `int TargetTriCount [Target triangle count for Mesh Simplification, for SimplifyMethods that use a Count]`
- `float32 TinyPartSizeMultiplier [Multiplier on Approximation Accuracy used to define tiny-part threshold, using maximum bounding-box dimension]`
- `float32 TrianglesPerM [Approximate Number of triangles per Square Meter, for SimplifyMethods that use such a constraint]`
- `EMeshApproximationUVGenerationPolicy UVGenerationMethod [Mesh UV Generation Settings]`
- `float32 WindingThreshold [Winding Threshold controls hole filling at open mesh borders. Smaller value means "more/rounder" filling]`
- `bool bAllowDistanceField [Whether to allow distance field to be computed for this mesh. Disable this to save memory if the generated mesh will only be rendered in the distance.]`
- `bool bAttemptAutoThickening [if enabled, we will attempt to auto-thicken thin parts or flat sheets]`
- `bool bEmitFullDebugMesh [If true, write the full mesh triangle set (ie flattened, non-instanced) used for mesh generation. Warning: this asset may be extremely large!!]`
- `bool bEnableParallelBaking [If false, texture capture and baking will be done serially after mesh generation, rather than in parallel when possible. This will reduce the maximum memory requirements of the process.]`
- `bool bEnableSimplifyPrePass [If true, a faster mesh simplfication strategy will be used. This can significantly reduce computation time and memory usage, but potentially at the cost of lower quality output.]`
- `bool bEstimateHardNormals [If true, normal angle will be used to estimate hard normals]`
- `bool bFillGaps [If true, topological expand/contract is used to try to fill small gaps between objects.]`
- `bool bGenerateNaniteEnabledMesh [Whether to generate a nanite-enabled mesh]`
- `bool bIgnoreTinyParts [If enabled, tiny parts will be excluded from the mesh merging, which can improve performance]`
- `bool bOccludeFromBottom [If true, then the OcclusionMethod computation is configured to try to consider downward-facing "bottom" geometry as occluded]`
- `bool bPrintDebugMessages [If true, print out debugging messages]`
- `bool bSupportRayTracing [Whether ray tracing will be supported on this mesh. Disable this to save memory if the generated mesh will only be rendered in the distance.]`
- `bool bUseRenderLODMeshes [If true, LOD0 Render Meshes (or Nanite Fallback meshes) are used instead of Source Mesh data. This can significantly reduce computation time and memory usage, but potentially at the cost of lower quality output.]`


**方法**:

- `FMeshApproximationSettings& opAssign(FMeshApproximationSettings Other)`

---

