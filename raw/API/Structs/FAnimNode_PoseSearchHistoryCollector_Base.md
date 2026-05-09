### FAnimNode_PoseSearchHistoryCollector_Base


**属性**:

- `TArray<FBoneReference> CollectedBones []`
- `TArray<FName> CollectedCurves []`
- `FLinearColor DebugColor []`
- `int PoseCount [The maximum amount of poses that can be stored]`
- `float32 PredictionSamplingInterval [if bGenerateTrajectory is true, this is the sampling interval between trajectory future (prediction) samples]`
- `float32 RootBoneRecoveryTime [time in seconds to recover to the reference skeleton root bone transform by RootBoneTranslationRecoveryRatio and RootBoneRotationRecoveryRatio
from any eventual root bone modification. if zero the behaviour will be disabled
Experimental, this feature might be removed without warning, not for production use]`
- `float32 RootBoneRotationRecoveryRatio [ratio to recover to the reference skeleton root bone rotation from any eventual root bone modification. zero for no recovery, 1 for full recovery]`
- `float32 RootBoneTranslationRecoveryRatio [ratio to recover to the reference skeleton root bone translation from any eventual root bone modification. zero for no recovery, 1 for full recovery]`
- `float32 SamplingInterval [how often in seconds poses are collected (if 0, it will collect every update)]`
- `FPoseSearchTrajectoryData TrajectoryData [if bGenerateTrajectory is true, TrajectoryData contains the tuning parameters to generate the trajectory]`
- `int TrajectoryHistoryCount [if bGenerateTrajectory is true, this is the number of trajectory past (collected) samples]`
- `int TrajectoryPredictionCount [if bGenerateTrajectory is true, this is the number of trajectory future (prediction) samples]`
- `float32 TrajectorySpeedMultiplier [Input Trajectory velocity will be multiplied by TrajectorySpeedMultiplier: values below 1 will result in selecting animation slower than requested from the original Trajectory]`
- `FTransformTrajectory TransformTrajectory [Input Trajectory samples for pose search queries in Motion Matching. These are expected to be in the world space of the SkeletalMeshComponent.
the trajectory sample with AccumulatedSeconds equals to zero (Trajectory.Samples[i].AccumulatedSeconds) is the sample of the previous frame of simulation (since MM works by matching the previous character pose)]`
- `bool bGenerateTrajectory [if true Trajectory the pose history node will generate the trajectory using the TrajectoryData parameters instead of relying on the input Trajectory
Experimental, this feature might be removed without warning, not for production use]`
- `bool bResetOnBecomingRelevant [Reset the pose history if it has become relevant to the graph after not being updated on previous frames.]`
- `bool bStoreScales [if true pose scales will be cached, otherwise implied to be unitary scales]`


**方法**:

- `FAnimNode_PoseSearchHistoryCollector_Base& opAssign(FAnimNode_PoseSearchHistoryCollector_Base Other)`

---

