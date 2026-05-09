### FAnimNode_Inertialization


**属性**:

- `UBlendProfile DefaultBlendProfile [Optional default blend profile to use when no blend profile is supplied with the inertialization request]`
- `TArray<FBoneReference> FilteredBones [List of bones that should not use inertial blending. These bones will change instantly when the animation switches.]`
- `TArray<FName> FilteredCurves [List of curves that should not use inertial blending. These curves will instantly change when inertialization begins.]`
- `FPoseLink Source []`
- `bool bForwardRequestsThroughSkippedCachedPoseNodes [When enabled this option will forward inertialization requests through any downstream UseCachedPose nodes which
have had their update skipped (e.g. because they have already been updated in another location). This can be
useful in the case where the same cached pose is used in multiple places, and having an inertialization request
that goes with it caught in only one of those places would create popping.]`
- `bool bResetOnBecomingRelevant [Clear any active blends if we just became relevant, to avoid carrying over undesired blends.]`


**方法**:

- `FAnimNode_Inertialization& opAssign(FAnimNode_Inertialization Other)`

---

