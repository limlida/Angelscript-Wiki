### FPoseSnapshot


A pose for a skeletal mesh

**属性**:

- `TArray<FName> BoneNames [Array of bone names (corresponding to LocalTransforms)]`
- `TArray<FTransform> LocalTransforms [Array of transforms per-bone]`
- `FName SkeletalMeshName [The name of the skeletal mesh that was used to take this snapshot]`
- `FName SnapshotName [The name for this snapshot]`
- `bool bIsValid [Whether the pose is valid]`


**方法**:

- `FPoseSnapshot& opAssign(FPoseSnapshot Other)`

---

