### FAnimNode_RetargetPoseFromMesh


**属性**:

- `FRetargetProfile CustomRetargetProfile [Connect a custom retarget profile to modify the retargeter's settings at runtime.]`
- `UIKRetargeter IKRetargeterAsset [Retarget asset to use. Must define a Source and Target IK Rig compatible with the SourceMeshComponent and current anim instance.]`
- `int LODThreshold [Max LOD that this node is allowed to run.
For example if you have LODThreshold at 2, it will run until LOD 2 (based on 0 index) when the component LOD becomes 3, it will stop update/evaluate
A value of -1 forces the node to execute at all LOD levels.]`
- `int LODThresholdForIK [Max LOD that IK is allowed to run.
For example if you have LODThresholdForIK at 2, it will skip the IK pass on LODs 3 and greater.
This only disables IK and does not affect the Root or FK passes.
A value of -1 forces the node to execute at all LOD levels.]`
- `ERetargetSourceMode RetargetFrom [Specify where to get the source pose to retarget from. Can be from the anim graph, or a different skeletal mesh component.]`
- `FPoseLink Source [Input pose to be modified by the retargeter when using "Source Pose Pin" mode as the Input Pose Mode.]`
- `TWeakObjectPtr<USkeletalMeshComponent> SourceMeshComponent [The Skeletal Mesh Component to retarget animation from. Assumed to be animated and tick BEFORE this anim instance.]`
- `bool bSuppressWarnings [Toggle whether to print warnings about missing or incorrectly configured retarget configurations.]`


**方法**:

- `FAnimNode_RetargetPoseFromMesh& opAssign(FAnimNode_RetargetPoseFromMesh Other)`

---

