### FPreviewSceneProfile


Preview scene profile settings structure.

**属性**:

- `FLinearColor DirectionalLightColor [Manually set the directional light colour]`
- `float32 DirectionalLightIntensity [Manually set the directional light intensity (0.0 - 20.0)]`
- `FLinearColor EnvironmentColor [The environment color, used if Show Environment is false.]`
- `TSoftObjectPtr<UTextureCube> EnvironmentCubeMap [Sets environment cube map used for sky lighting and reflections]`
- `float32 EnvironmentIntensity [The environment intensity (0.0 - 20.0), used if Show Environment is false.]`
- `float32 LightingRigRotation [Current rotation value of the sky in degrees (0 - 360)]`
- `FPostProcessSettings PostProcessingSettings [Manual set post processing settings]`
- `FString ProfileName [Name to identify the profile]`
- `float32 RotationSpeed [Speed at which the sky rotates when rotating is toggled]`
- `float32 SkyLightIntensity [Manually set the sky light intensity (0.0 - 20.0)]`
- `bool bEnableToneMapping [Useful when editing in an unlit view, prevents colors from being adjusted by the tonemapping]`
- `bool bPostProcessingEnabled [Whether or not the Post Processing should influence the scene]`
- `bool bRotateLightingRig [Toggle rotating of the sky and directional lighting, press K and drag for manual rotating of Sky and L for Directional lighting]`
- `bool bSharedProfile [Whether or not this profile should be stored in the Project ini file]`
- `bool bShowEnvironment [Toggle visibility of the environment sphere]`
- `bool bShowFloor [Toggle visibility of the floor mesh]`
- `bool bShowGrid [Toggle visibility of floor grid on/off]`
- `bool bShowMeshEdges [Show wireframes composited on top of the shaded view]`
- `bool bUseSkyLighting [Whether or not image based lighting is enabled for the environment cube map]`


**方法**:

- `FPreviewSceneProfile& opAssign(FPreviewSceneProfile Other)`

---

