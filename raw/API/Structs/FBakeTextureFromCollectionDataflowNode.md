### FBakeTextureFromCollectionDataflowNode


* Bake a texture from a geometry collection
* Output to a 4 channels Image object  ( RGBA )

**属性**:

- `ECollectionBakeTextureAttribute AlphaChannel [Attribute to bake in the alpha channel]`
- `ECollectionBakeTextureAttribute BlueChannel [Attribute to bake in the blue channel]`
- `float32 CurvatureBlurRadius [Pixel Radius of Gaussian Blur Kernel applied to Curvature map (0 will apply no blur)]`
- `ECollectionBakeTextureAttribute GreenChannel [Attribute to bake in the green channel]`
- `int GutterSize [Approximate space to leave between UV islands, measured in texels]`
- `float32 MaxCurvature [Curvatures in the range [-MaxCurvature, MaxCurvature] will be mapped from [0,1]. Values outside that range will be clamped]`
- `float32 MaxDistance [Max distance to search for the outer mesh surface]`
- `float32 OcclusionBlurRadius [Pixel Radius of Gaussian Blur Kernel applied to AO map (0 will apply no blur)]`
- `int OcclusionRays [Number of occlusion rays]`
- `FLinearColor OverrideColor []`
- `ECollectionBakeTextureAttribute RedChannel [Attribute to bake in the red channel]`
- `EDataflowImageResolution Resolution [resolution of the image to bake]`
- `int SmoothingIterations [Amount of smoothing iterations to apply before computing curvature]`
- `float32 ThicknessFactor [Distance to search for correspondence between fractured shape and smoothed shape, as factor of voxel size]`
- `int UVChannel [Index of the added UV channel]`
- `int VoxelResolution [Voxel resolution of smoothed shape representation]`
- `bool bActive [Used to calculate ContainerElementOffsets]`
- `bool bOverrideColor []`


**方法**:

- `FBakeTextureFromCollectionDataflowNode& opAssign(FBakeTextureFromCollectionDataflowNode Other)`

---

