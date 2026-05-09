### UInterchangeMeshUtilities


**方法**:

- `bool ScriptedImportMorphTarget(USkeletalMesh SkeletalMesh, int LodIndex, const UInterchangeSourceData SourceData, FString MorphTargetName) const`  
  This function import a morph target from the source data and add/replace the skeletal mesh morph target.

@Param SkeletalMesh - The target skeletal mesh we want to add the morph targets
@Param LodIndex - The index of the LOD we want to replace or add the morph targets
@Param SourceData - The source to import the morph targets
@Param MorphTargetName - If not empty we will use this name to create the morph target, if there is already an existing morph target it will be re-import
@Return - return true if it successfully add or replace the skeletal mesh morph target at LodIndex, flase otherwise.

---

