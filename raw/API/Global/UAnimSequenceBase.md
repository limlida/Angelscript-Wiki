### UAnimSequenceBase


**属性**:

- `UAnimDataModel DataModel []`
- `float32 RateScale [Number for tweaking playback rate of this animation globally.]`
- `float32 SequenceLength []`
- `bool bLoop [The default looping behavior of this animation.
Asset players can override this]`


**方法**:

- `GetAnimPoseAtFrame(int FrameIndex, FAnimPoseEvaluationOptions EvaluationOptions, FAnimPose& Pose) const`  
  Evaluates an Animation Sequence Base to generate a valid Anim Pose instance

@param        AnimationSequenceBase   Animation sequence base to evaluate the pose from
@param        FrameIndex                              Exact frame at which the pose should be evaluated
@param        EvaluationOptions               Options determining the way the pose should be evaluated
@param        Pose                                    Anim Pose to hold the evaluated data
- `GetAnimPoseAtTime(float Time, FAnimPoseEvaluationOptions EvaluationOptions, FAnimPose& Pose) const`  
  Evaluates an Animation Sequence Base to generate a valid Anim Pose instance

@param        AnimationSequenceBase   Animation sequence base to evaluate the pose from
@param        Time                                    Time at which the pose should be evaluated
@param        EvaluationOptions               Options determining the way the pose should be evaluated
@param        Pose                                    Anim Pose to hold the evaluated data
- `bool AddTransformAttribute(FName AttributeName, FName BoneName, TArray<float32> Keys, TArray<FTransform> Values)`
- `bool AddAnimationModifierOfClass(TSubclassOf<UAnimationModifier> InModifierClass)`

---

