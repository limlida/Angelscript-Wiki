### UFractureAutoUVSettings


Settings for UV layout and texture baking on the geometry collection *

**属性**:

- `ETextureType BakeTextureType [Which standard set of texture channels to bake]`
- `float CurvatureBlurRadius [Pixel Radius of Gaussian Blur Kernel applied to Curvature map (0 will apply no blur)]`
- `int GutterSize [Approximate space to leave between UV islands, measured in texels]`
- `TArray<int> MaterialIDs [Custom selection of material IDs to target for texturing]`
- `float MaxCurvature [Curvatures in the range [-MaxCurvature, MaxCurvature] will be mapped from [0,1]. Values outside that range will be clamped]`
- `float MaxDistance [Max distance to search for the outer mesh surface]`
- `float OcclusionBlurRadius [Pixel Radius of Gaussian Blur Kernel applied to AO map (0 will apply no blur)]`
- `int OcclusionRays [Number of occlusion rays]`
- `FVector ProjectionScale [The scale factor to use for UV box projection]`
- `FVector2D ProjectionUVOffset [UV Offset to apply after UV box projection]`
- `EAutoUVTextureResolution Resolution [The pixel resolution of the generated map]`
- `int SmoothingIterations [Amount of smoothing iterations to apply before computing curvature]`
- `ETargetFaces TargetFaces [Choose whether to target internal faces, or a custom selection]`
- `float ThicknessFactor [Distance to search for correspondence between fractured shape and smoothed shape, as factor of voxel size]`
- `FString UVChannel [Which UV channel to use for layout and baking]`
- `int VoxelResolution [Voxel resolution of smoothed shape representation]`
- `bool bAmbientOcclusion [Bake the ambient occlusion of each bone (considered separately) to a texture channel (green)]`
- `bool bAutoFitToBounds [Set the scale factor for UV box projection based on the bounding box of the geometry]`
- `bool bCenterAtPivot [Optionally center the UV projection around the object pivot]`
- `bool bDistToOuter [Bake the distance to the external surface to a texture channel (red)]`
- `bool bPromptToSave [Whether to prompt user for an asset name for each generated texture, or automatically place them next to the source Geometry Collections]`
- `bool bReplaceExisting [Whether to allow the new texture to overwrite an existing texture]`
- `bool bSmoothedCurvature [Bake a smoothed curvature metric to a texture channel (blue)
Specifically, this is the mean curvature of a smoothed copy of each fractured piece, baked back to the respective fracture piece
Note that this attribute is relatively expensive to compute]`
- `bool bUniformProjectionScale [Ensure the projection scale is the same on each axis, either by repeating the X Axis scale, or using the max box dimension if Auto Fit to Bounds is selected.]`

---

