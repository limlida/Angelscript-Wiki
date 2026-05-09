### UPoseSearchFeatureChannel_Position


**属性**:

- `FBoneReference Bone []`
- `EComponentStrippingVector ComponentStripping []`
- `FLinearColor DebugColor []`
- `EInputQueryPose InputQueryPose []`
- `float32 MaxPositionDistanceSquared [Experimental, this feature might be removed without warning, not for production use
During pose selection if the squared distance between query versus candidate poses for this
position channel is greater than MaxPositionDistanceSquared the candidate will be discarded.
the filtering will be enabled only for MaxPositionDistanceSquared > 0]`
- `FName NormalizationGroup [if set, all the channels of the same class with the same cardinality, and the same NormalizationGroup, will be normalized together.
for example in a locomotion database of a character holding a weapon, containing non mirrorable animations, you'd still want to normalize together
left foot and right foot position and velocity]`
- `FBoneReference OriginBone []`
- `FName OriginRole []`
- `float32 OriginTimeOffset [the data relative to the sampling time associated to this channel origin (root / trajectory bone) will be offsetted by OriginTimeOffset seconds.
For example, if Bone is the head bone, SampleTimeOffset is 0.5, and OriginTimeOffset is 0.5, this channel will try to match
the future position of the character head bone 0.5 seconds ahead, relative to the future root bone 0.5 seconds ahead]`
- `EPermutationTimeType PermutationTimeType []`
- `FName SampleRole []`
- `float32 SampleTimeOffset [the data relative to the sampling time associated to this channel will be offsetted by SampleTimeOffset seconds.
For example, if Bone is the head bone, and SampleTimeOffset is 0.5, this channel will try to match the future position of the character head bone 0.5 seconds ahead]`
- `int SamplingAttributeId [if SamplingAttributeId >= 0, ALL the animations contained in the pose search database referencing the schema containing this channel are expected to have
UAnimNotifyState_PoseSearchSamplingAttribute notify state with a matching SamplingAttributeId, and the UAnimNotifyState_PoseSearchSamplingAttribute properties
will be used as source of data instead of this channel "Bone". UAnimNotifyState_PoseSearchSamplingAttribute properties will be then converted into OriginBone space]`
- `float32 Weight []`
- `bool bDefaultWithRootBone [Experimental, this feature might be removed without warning, not for production use
if bDefaultWithRootBone is true Bone.BoneName and OriginBone.BoneName get initialized to the associated
skeleton root bone if equals to NAME_None, otherwise transforms from the trajectory will be used]`
- `bool bNormalizeDisplacement [Experimental, this feature might be removed without warning, not for production use
UPoseSearchFeatureChannel_Position represents / calculates the position (displacement) of Bone relative to OriginBone
if bNormalizeDisplacement is true, the displacement will be normalized. if zero it'll stay zero, so it'll be like matching the
direction towards the position is pointing at. useful to match "trajectory points" when the velocity is not consistent between
query and database poses. Look at the debug lines to have an idea what it'd match]`


**方法**:

- `FVector GetWorldPosition(const UAnimInstance AnimInstance) const`

---

