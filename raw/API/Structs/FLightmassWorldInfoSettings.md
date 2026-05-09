### FLightmassWorldInfoSettings


**属性**:

- `float32 DiffuseBoost [Scales the diffuse contribution of all materials in the scene.]`
- `float32 DirectIlluminationOcclusionFraction [How much of the AO to apply to direct lighting.]`
- `FColor EnvironmentColor [Represents a constant color light surrounding the upper hemisphere of the level, like a sky.
This light source currently does not get bounced as indirect lighting and causes reflection capture brightness to be incorrect.  Prefer using a Static Skylight instead.]`
- `float32 EnvironmentIntensity [Scales EnvironmentColor to allow independent color and brightness controls.]`
- `float32 FullyOccludedSamplesFraction [Fraction of samples taken that must be occluded in order to reach full occlusion.]`
- `float32 IndirectIlluminationOcclusionFraction [How much of the AO to apply to indirect lighting.]`
- `float32 IndirectLightingQuality [Warning: Setting this higher than 1 will greatly increase build times!
Can be used to increase the GI solver sample counts in order to get higher quality for levels that need it.
It can be useful to reduce IndirectLightingSmoothness somewhat (~.75) when increasing quality to get defined indirect shadows.
Note that this can't affect compression artifacts, UV seams or other texture based artifacts.]`
- `float32 IndirectLightingSmoothness [Smoothness factor to apply to indirect lighting.  This is useful in some lighting conditions when Lightmass cannot resolve accurate indirect lighting.
1 is default smoothness tweaked for a variety of lighting situations.
Higher values like 3 smooth out the indirect lighting more, but at the cost of indirect shadows losing detail.]`
- `float32 MaxOcclusionDistance [Maximum distance for an object to cause occlusion on another object.]`
- `int NumIndirectLightingBounces [Number of light bounces to simulate for point / spot / directional lights, starting from the light source.
0 is direct lighting only, 1 is one bounce, etc.
Bounce 1 takes the most time to calculate and contributes the most to visual quality, followed by bounce 2.
Successive bounces don't really affect build times, but have a much lower visual impact, unless the material diffuse colors are close to 1.]`
- `int NumSkyLightingBounces [Number of skylight and emissive bounces to simulate.
Lightmass uses a non-distributable radiosity method for skylight bounces whose cost is proportional to the number of bounces.]`
- `float32 OcclusionExponent [Higher exponents increase contrast.]`
- `float32 StaticLightingLevelScale [Warning: Setting this to less than 1 will greatly increase build times!
Scale of the level relative to real world scale (1 Unreal Unit = 1 cm).
All scale-dependent Lightmass setting defaults have been tweaked to work well with real world scale,
Any levels with a different scale should use this scale to compensate.
For large levels it can drastically reduce build times to set this to 2 or 4.]`
- `float32 VolumeLightSamplePlacementScale [Scales the distances at which volume lighting samples are placed.  Volume lighting samples are computed by Lightmass and are used for GI on movable components.
Using larger scales results in less sample memory usage and reduces Indirect Lighting Cache update times, but less accurate transitions between lighting areas.]`
- `EVolumeLightingMethod VolumeLightingMethod [Technique to use for providing precomputed lighting at all positions inside the Lightmass Importance Volume]`
- `float32 VolumetricLightmapDetailCellSize [Size of an Volumetric Lightmap voxel at the highest density (used around geometry), in world space units.
This setting has a large impact on build times and memory, use with caution.
Halving the DetailCellSize can increase memory by up to a factor of 8x.]`
- `float32 VolumetricLightmapLoadingCellSize [Size of an Volumetric Lightmap high detail loading cell.]`
- `float32 VolumetricLightmapMaximumBrickMemoryMb [Maximum amount of memory to spend on Volumetric Lightmap Brick data.  High density bricks will be discarded until this limit is met, with bricks furthest from geometry discarded first.]`
- `float32 VolumetricLightmapSphericalHarmonicSmoothing [Controls how much smoothing should be done to Volumetric Lightmap samples during Spherical Harmonic de-ringing.
Whenever highly directional lighting is stored in a Spherical Harmonic, a ringing artifact occurs which manifests as unexpected black areas on the opposite side.
Smoothing can reduce this artifact.  Smoothing is only applied when the ringing artifact is present.
0 = no smoothing, 1 = strong smooth (little directionality in lighting).]`
- `bool bCompressLightmaps [Whether to compress lightmap textures.  Disabling lightmap texture compression will reduce artifacts but increase memory and disk size by 4x.
Use caution when disabling this.]`
- `bool bGenerateAmbientOcclusionMaterialMask [Whether to generate textures storing the AO computed by Lightmass.
These can be accessed through the PrecomputedAOMask material node,
Which is useful for blending between material layers on environment assets.
Be sure to set DirectIlluminationOcclusionFraction and IndirectIlluminationOcclusionFraction to 0 if you only want the PrecomputedAOMask!]`
- `bool bUseAmbientOcclusion [If true, AmbientOcclusion will be enabled.]`
- `bool bVisualizeAmbientOcclusion [If true, override normal direct and indirect lighting with just the AO term.]`
- `bool bVisualizeMaterialDiffuse [If true, override normal direct and indirect lighting with just the exported diffuse term.]`


**方法**:

- `FLightmassWorldInfoSettings& opAssign(FLightmassWorldInfoSettings Other)`

---

