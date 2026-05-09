### FIKRetargetPinBoneOpSettings


**属性**:

- `TArray<FPinBoneData> BonesToPin [A list of bone-pairs to copy transforms between]`
- `FTransform GlobalOffset [A manual offset to apply in global space]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `FTransform LocalOffset [A manual offset to apply in local space]`
- `EPinBoneRotationMode RotationMode [The method used to calculate the rotation of the bone.]`
- `ERetargetSourceOrTarget SkeletonToCopyFrom [Which skeleton to copy animation from.]`
- `EPinBoneTranslationMode TranslationMode [The method used to calculate the translation of the bone.]`
- `bool bCopyRotation [Copy the rotation of the bone.]`
- `bool bCopyScale [Copy the scale of the bone.]`
- `bool bCopyTranslation [Copy the translation of the bone.]`
- `bool bPropagateToChildren [Update children bone transforms (recursively).]`


**方法**:

- `FIKRetargetPinBoneOpSettings& opAssign(FIKRetargetPinBoneOpSettings Other)`

---

