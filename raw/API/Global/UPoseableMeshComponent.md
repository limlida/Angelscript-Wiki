### UPoseableMeshComponent


UPoseableMeshComponent that allows bone transforms to be driven by blueprint.

**方法**:

- `AllocateTransformData()`
- `RefreshBoneTransforms()`
- `CopyPoseFromSkeletalComponent(USkeletalMeshComponent InComponentToCopy)`
- `FVector GetBoneLocationByName(FName BoneName, EBoneSpaces BoneSpace)`
- `FRotator GetBoneRotationByName(FName BoneName, EBoneSpaces BoneSpace)`
- `FVector GetBoneScaleByName(FName BoneName, EBoneSpaces BoneSpace)`
- `FTransform GetBoneTransformByName(FName BoneName, EBoneSpaces BoneSpace)`
- `ResetBoneTransformByName(FName BoneName)`
- `SetBoneLocationByName(FName BoneName, FVector InLocation, EBoneSpaces BoneSpace)`
- `SetBoneRotationByName(FName BoneName, FRotator InRotation, EBoneSpaces BoneSpace)`
- `SetBoneScaleByName(FName BoneName, FVector InScale3D, EBoneSpaces BoneSpace)`
- `SetBoneTransformByName(FName BoneName, FTransform InTransform, EBoneSpaces BoneSpace)`

---

