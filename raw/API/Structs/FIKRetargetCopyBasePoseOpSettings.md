### FIKRetargetCopyBasePoseOpSettings


**属性**:

- `TArray<FBoneReference> BonesToExclude [Bones added to this list (and their children) will not have their pose copied. They will be left at the reference pose.]`
- `FBoneReference CopyFromStart [Filters the bones to copy when using "Copy Base Pose". If specified, will only copy all children of the specified bone (inclusive).]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `bool bCopyBasePose [When true, will copy all the source bone transforms with matching names to use as a base pose. This can be useful for partial retargeting.
NOTE: no retargeting is applied to the bone transforms, they are assumed to be fully compatible between source/target skeletons.]`


**方法**:

- `FIKRetargetCopyBasePoseOpSettings& opAssign(FIKRetargetCopyBasePoseOpSettings Other)`

---

