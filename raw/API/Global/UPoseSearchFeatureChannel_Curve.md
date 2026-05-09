### UPoseSearchFeatureChannel_Curve


**属性**:

- `FName CurveName`
- `FLinearColor DebugColor []`
- `EInputQueryPose InputQueryPose []`
- `FName NormalizationGroup [if set, all the channels of the same class with the same cardinality, and the same NormalizationGroup, will be normalized together.
for example in a locomotion database of a character holding a weapon, containing non mirrorable animations, you'd still want to normalize together
left foot and right foot position and Curve]`
- `FName SampleRole []`
- `float32 SampleTimeOffset [the data relative to the sampling time associated to this channel will be offset by SampleTimeOffset seconds.
For example, if Curve is DistanceToWall, and SampleTimeOffset is 0.5, this channel will try to match the future DistanceToWall curve of the character 0.5 seconds ahead]`
- `float32 Weight []`


**方法**:

- `float32 GetCurveValue(const UAnimInstance AnimInstance) const`

---

