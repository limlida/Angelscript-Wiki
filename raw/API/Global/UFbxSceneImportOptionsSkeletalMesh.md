### UFbxSceneImportOptionsSkeletalMesh


**属性**:

- `EFBXAnimationLengthImportType AnimationLength [Type of asset to import from the FBX file]`
- `int CustomSampleRate [Sample fbx animation data at the specified sample rate, 0 find automaticaly the best sample rate]`
- `FInt32Interval FrameImportRange [Frame range used when Set Range is used in Animation Length]`
- `float32 MorphThresholdPosition [Threshold to compare vertex position equality when computing morph target deltas.]`
- `float32 ThresholdPosition [Threshold to compare vertex position equality.]`
- `float32 ThresholdTangentNormal [Threshold to compare normal, tangent or bi-normal equality.]`
- `float32 ThresholdUV [Threshold to compare UV equality.]`
- `bool bCreatePhysicsAsset [If checked, create new PhysicsAsset if it doesn't have it]`
- `bool bDeleteExistingCustomAttributeCurves [If true, all previous node attributes imported as Animation Curves will be deleted when doing a re-import.]`
- `bool bDeleteExistingMorphTargetCurves [Type of asset to import from the FBX file]`
- `bool bDeleteExistingNonCurveCustomAttributes [If true, all previous node attributes imported as Animation Attributes will be deleted when doing a re-import.]`
- `bool bImportAnimations [True to import animations from the FBX File]`
- `bool bImportCustomAttribute [If true, import node attributes as either Animation Curves or Animation Attributes]`
- `bool bImportMeshesInBoneHierarchy [If checked, meshes nested in bone hierarchies will be imported instead of being converted to bones.]`
- `bool bImportMorphTargets [If enabled, creates Unreal morph objects for the imported meshes]`
- `bool bImportVertexAttributes [If enabled, import single-channel/weight/alpha vertex attributes]`
- `bool bKeepSectionsSeparate [If checked, sections with matching materials are kept separate and will not get combined.]`
- `bool bPreserveLocalTransform [Type of asset to import from the FBX file]`
- `bool bPreserveSmoothingGroups [If checked, triangles with non-matching smoothing groups will be physically split.]`
- `bool bSnapToClosestFrameBoundary [If enabled, snaps the animation to the closest frame boundary using the import sampling rate]`
- `bool bUpdateSkeletonReferencePose [If enabled, update the Skeleton (of the mesh being imported)'s reference pose.]`
- `bool bUseDefaultSampleRate [If enabled, samples all animation curves to 30 FPS]`

---

