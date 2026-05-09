### FAnimNode_PoseDriver


RBF based orientation driver

**属性**:

- `float32 BlendWeight [Last encountered blendweight for this node]`
- `EPoseDriverOutput DriveOutput [Whether we should drive poses or curves]`
- `EPoseDriverSource DriveSource [Which part of the transform is read]`
- `FBoneReference EvalSpaceBone [Optional other bone space to use when reading SourceBone transform.
If not specified, the local space of SourceBone will be used. (ie relative to parent bone)]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `TArray<FBoneReference> OnlyDriveBones [List of bones that will modified by this node. If no list is provided, all bones bones with a track in the PoseAsset will be modified]`
- `UPoseAsset PoseAsset [The animation sequence asset to evaluate]`
- `TArray<FPoseDriverTarget> PoseTargets [Targets used to compare with current pose and drive morphs/poses]`
- `FRBFParams RBFParams [Parameters used by RBF solver]`
- `TArray<FBoneReference> SourceBones [Bone to use for driving parameters based on its orientation]`
- `FPoseLink SourcePose [Bones to use for driving parameters based on their transform]`
- `bool bEvalFromRefPose [Evaluate SourceBone transform relative from its Reference Pose.
This is recommended when using Swing and Twist Angle as Distance Method, since the twist will be computed from RefPose.

If not specified, the local space of SourceBone will be used. (ie relative to parent bone)
This mode won't work in conjunction with EvalSpaceBone;]`


**方法**:

- `FAnimNode_PoseDriver& opAssign(FAnimNode_PoseDriver Other)`

---

