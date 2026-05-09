### UInterchangeGenericAnimationPipeline


**属性**:

- `EInterchangeAnimationRange AnimationRange [Determines which animation range to import: the range defined at export, the range of frames with animation, or a manually defined range.]`
- `int CustomBoneAnimationSampleRate [Sample fbx animation data at the specified sample rate, 0 find automaticaly the best sample rate]`
- `FInt32Interval FrameImportRange [The frame range used when the Animation Length setting is set to Set Range.]`
- `TArray<FString> MaterialCurveSuffixes [Set the Material Curve Type for custom attributes that have the specified suffixes. This setting is not used if the Set Material Curve Type setting is enabled.]`
- `bool bDeleteExistingCustomAttributeCurves [If enabled, all previous node attributes imported as Animation Curves will be deleted when doing a reimport.]`
- `bool bDeleteExistingMorphTargetCurves [If enabled, all previous morph target curves will be deleted when doing a reimport.]`
- `bool bDeleteExistingNonCurveCustomAttributes [If enabled, all previous node attributes imported as Animation Attributes will be deleted when doing a reimport.]`
- `bool bDoNotImportCurveWithZero [When importing a custom attribute or morph target as a curve, only import if it has a value other than zero. This avoids adding extra curves to evaluate.]`
- `bool bImportAnimations [If enabled, import all animation assets found in the source.]`
- `bool bImportBoneTracks [Import bone transform tracks. If false, this will discard any bone transform tracks.]`
- `bool bImportCustomAttribute [If enabled, import node attributes as either Animation Curves or Animation Attributes.]`
- `bool bRemoveCurveRedundantKeys [When importing custom attributes as curves, remove redundant keys.]`
- `bool bSetMaterialDriveParameterOnCustomAttribute [Set the material curve type for all custom attributes.]`
- `bool bSnapToClosestFrameBoundary [If enabled, snaps the animation to the closest frame boundary using the import sampling rate.]`
- `bool bUse30HzToBakeBoneAnimation [If enabled, samples all animation curves to 30 FPS]`

---

