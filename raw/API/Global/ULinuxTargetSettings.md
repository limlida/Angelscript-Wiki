### ULinuxTargetSettings


Implements the settings for the Linux target platform.

**属性**:

- `FString OcclusionPlugin [Which of the currently enabled occlusion plugins to use.]`
- `FString ReverbPlugin [Which of the currently enabled reverb plugins to use.]`
- `int SoundCueCookQualityIndex [Quality Level to COOK SoundCues at (if set, all other levels will be stripped by the cooker).]`
- `FString SourceDataOverridePlugin [Which of the currently enabled source data override plugins to use.]`
- `FString SpatializationPlugin [Which of the currently enabled spatialization plugins to use.]`
- `TArray<FString> TargetedRHIs [The collection of RHI's we want to support on this platform.
This is not always the full list of RHI we can support.]`
- `bool bGenerateNaniteFallbackMeshes [Whether to include Nanite Fallback Meshes in cooked builds for Linux. Can be overriden for specific assets in Static Mesh Editor.]`

---

