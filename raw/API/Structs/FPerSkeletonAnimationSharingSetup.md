### FPerSkeletonAnimationSharingSetup


**属性**:

- `TSubclassOf<UAnimSharingAdditiveInstance> AdditiveAnimBlueprint [Animation blueprint used to apply additive animation on top of other states]`
- `TArray<FAnimationStateEntry> AnimationStates [Definition of different animation states]`
- `TSubclassOf<UAnimSharingTransitionInstance> BlendAnimBlueprint [Animation blueprint used to perform the blending between states]`
- `USkeletalMesh SkeletalMesh [Skeletal mesh used to setup skeletal mesh components]`
- `USkeleton Skeleton [Skeleton compatible with the animation sharing setup]`
- `TSubclassOf<UAnimationSharingStateProcessor> StateProcessorClass [Interface class used when determining which state an actor is in]`
- `bool bEnableMaterialParameterCaching [Whether or not to enable material parameter caching on the skeletal mesh components created for each state]`


**方法**:

- `FPerSkeletonAnimationSharingSetup& opAssign(FPerSkeletonAnimationSharingSetup Other)`

---

