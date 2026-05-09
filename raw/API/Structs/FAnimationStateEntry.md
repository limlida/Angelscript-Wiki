### FAnimationStateEntry


**属性**:

- `TArray<FAnimationSetup> AnimationSetups [Per state animation setup]`
- `float32 BlendTime [Duration of blending when blending to this state]`
- `FPerPlatformInt MaximumNumberOfConcurrentInstances [Number of instances that will be created for this state (platform-specific)]`
- `uint8 NextState [State value to which the actors part of an on demand state should be set to when its animation has finished]`
- `uint8 State [Enum value linked to this state]`
- `float32 WiggleTimePercentage [Percentage of 'wiggle' frames, this is used when we run out of available entries in Components, if one of the on-demand animations has started SequenceLength * WiggleFramePercentage ago or earlier,
      it is used instead of a brand new one]`
- `bool bAdditive [Whether or not this state is an additive state]`
- `bool bOnDemand [Flag whether or not this state is an on-demand state, this means that we kick off a unique animation when needed]`
- `bool bRequiresCurves [Whether or not this animation requires curves or morphtargets to function correctly for follower components]`
- `bool bReturnToPreviousState [Flag whether or not we should return to the previous state, only used when this state is an on-demand one]`
- `bool bSetNextState []`


**方法**:

- `FAnimationStateEntry& opAssign(FAnimationStateEntry Other)`

---

