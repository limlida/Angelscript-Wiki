### UPoseAsset


Pose Asset that can be blended by weight of curves

**属性**:

- `FName RetargetSource [Base pose to use when retargeting]`
- `TSoftObjectPtr<USkeletalMesh> RetargetSourceAsset []`
- `UAnimSequence SourceAnimation []`
- `bool bAdditivePose [Whether or not Additive Pose or not - these are property that needs post process, so]`


**方法**:

- `ClearRetargetSourceAsset()`  
  Resets the retarget source asset
- `FName GetBasePoseName() const`  
  Returns base pose name, only valid when additive, NAME_None indicates reference pose
- `GetPoseNames(TArray<FName>& PoseNames) const`  
  Returns the name of all contained poses
- `TSoftObjectPtr<USkeletalMesh> GetRetargetSourceAsset() const`  
  Returns the retarget source asset soft object pointer.
- `RenamePose(FName OriginalPoseName, FName NewPoseName)`  
  Renames a specific pose
- `bool SetBasePoseName(FName NewBasePoseName)`  
  Set base pose index by name, NAME_None indicates reference pose - returns true if set successfully
- `SetRetargetSourceAsset(USkeletalMesh InRetargetSourceAsset)`  
  Assigns the passed skeletal mesh to the retarget source
- `UpdatePoseFromAnimation(UAnimSequence AnimSequence)`  
  Contained poses are re-generated from the provided Animation Sequence
- `UpdateRetargetSourceAssetData()`  
  Update the retarget data pose from the source, if it exist, else clears the retarget data pose saved in RetargetSourceAssetReferencePose.
Warning : This function calls LoadSynchronous at the retarget source asset soft object pointer, so it can not be used at PostLoad

---

