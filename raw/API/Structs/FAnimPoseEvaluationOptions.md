### FAnimPoseEvaluationOptions


**属性**:

- `EAnimDataEvalType EvaluationType [Type of evaluation which should be used]`
- `USkeletalMesh OptionalSkeletalMesh [Optional skeletal mesh with proportions to use when evaluating a pose]`
- `bool bEvaluateCurves [Whether or not to evaluate Animation Curves]`
- `bool bExtractRootMotion [Whether or not to extract root motion values]`
- `bool bIncorporateRootMotionIntoPose [Whether or not to force root motion being incorporated into retrieved pose]`
- `bool bRetrieveAdditiveAsFullPose [Whether or additive animations should be applied to their base-pose]`
- `bool bShouldRetarget [Whether or not to retarget animation during evaluation]`


**方法**:

- `FAnimPoseEvaluationOptions& opAssign(FAnimPoseEvaluationOptions Other)`

---

