### FIKRetargetPose


**属性**:

- `TMap<FName,FQuat> BoneRotationOffsets [these are LOCAL-space rotation deltas to be applied to a bone to modify it's retarget pose]`
- `FVector RootTranslationOffset [a translational delta in GLOBAL space, applied only to the pelvis bone]`


**方法**:

- `FIKRetargetPose& opAssign(FIKRetargetPose Other)`

---

