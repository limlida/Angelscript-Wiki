### FSkeletalMeshLODGroupSettings


**属性**:

- `UAnimSequence BakePose [Pose which should be used to reskin vertex influences for which the bones will be removed in this LOD level, uses ref-pose by default]`
- `EBoneFilterActionOption BoneFilterActionOption [Bones which should be removed from the skeleton for the LOD level]`
- `TArray<FBoneFilter> BoneList [Bones which should be removed from the skeleton for the LOD level]`
- `TArray<FName> BonesToPrioritize [Bones which should be prioritized for the quality, this will be weighted toward keeping source data. Use WeightOfPrioritization to control the value.]`
- `float32 LODHysteresis [Used to avoid 'flickering' when on LOD boundary. Only taken into account when moving from complex->simple.]`
- `FSkeletalMeshOptimizationSettings ReductionSettings [The optimization settings to use for the respective LOD level]`
- `FPerPlatformFloat ScreenSize [The screen sizes to use for the respective LOD level]`
- `TArray<int> SectionsToPrioritize [Sections which should be prioritized for the quality, this will be weighted toward keeping source data. Use WeightOfPrioritization to control the value.]`
- `float32 WeightOfPrioritization [How much to consideration to give BonesToPrioritize and SectionsToPrioritize.  The weight is an additional vertex simplification penalty where 0 means nothing.]`
- `bool bAllowMeshDeformer [Whether a Mesh Deformer applied to the mesh asset or Skinned Mesh Component should be used on this LOD or not]`


**方法**:

- `FSkeletalMeshLODGroupSettings& opAssign(FSkeletalMeshLODGroupSettings Other)`

---

