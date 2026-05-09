### UFbxAnimSequenceImportData


Import data and options used when importing any mesh from FBX

**属性**:

- `EFBXAnimationLengthImportType AnimationLength [Which animation range to import. The one defined at Exported, at Animated time or define a range manually]`
- `int CustomSampleRate [Sample fbx animation data at the specified sample rate, 0 find automaticaly the best sample rate]`
- `FInt32Interval FrameImportRange [Frame range used when Set Range is used in Animation Length]`
- `TArray<FString> MaterialCurveSuffixes [Set Material Curve Type for the custom attribute with the following suffixes. This doesn't matter if Set Material Curve Type is true]`
- `bool bAddCurveMetadataToSkeleton [Whether to automatically add curve metadata to an animation's skeleton. If this is disabled, curve metadata will be added to skeletal meshes for morph targets, but no metadata entry will be created for general curves.]`
- `bool bDeleteExistingCustomAttributeCurves [If true, all previous node attributes imported as Animation Curves will be deleted when doing a re-import.]`
- `bool bDeleteExistingMorphTargetCurves [If enabled, this will delete this type of asset from the FBX]`
- `bool bDeleteExistingNonCurveCustomAttributes [If true, all previous node attributes imported as Animation Attributes will be deleted when doing a re-import.]`
- `bool bDoNotImportCurveWithZero [When importing custom attribute or morphtarget as curve, do not import if it doesn't have any value other than zero. This is to avoid adding extra curves to evaluate]`
- `bool bImportBoneTracks [Import bone transform tracks. If false, this will discard any bone transform tracks. (useful for curves only animations)]`
- `bool bImportCustomAttribute [If true, import node attributes as either Animation Curves or Animation Attributes]`
- `bool bImportMeshesInBoneHierarchy [If checked, meshes nested in bone hierarchies will be imported instead of being converted to bones.]`
- `bool bPreserveLocalTransform [If enabled, this will import a curve within the animation]`
- `bool bRemoveRedundantKeys [When importing custom attribute as curve, remove redundant keys]`
- `bool bSetMaterialDriveParameterOnCustomAttribute [Set Material Curve Type for all custom attributes that exists]`
- `bool bSnapToClosestFrameBoundary [If enabled, snaps the animation to the closest frame boundary using the import sampling rate]`
- `bool bUseDefaultSampleRate [If enabled, samples all animation curves to 30 FPS]`

---

