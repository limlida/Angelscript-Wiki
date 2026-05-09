### FAnimNode_PoseSnapshot


Provide a snapshot pose, either from the internal named pose cache or via a supplied snapshot

**属性**:

- `ESnapshotSourceMode Mode [How to access the snapshot]`
- `FPoseSnapshot Snapshot [Snapshot to use. This should be populated at first by calling SnapshotPose]`
- `FName SnapshotName [The name of the snapshot previously stored with SavePoseSnapshot]`


**方法**:

- `FAnimNode_PoseSnapshot& opAssign(FAnimNode_PoseSnapshot Other)`

---

