### FPoseSearchEvent


**属性**:

- `FGameplayTag EventTag [Tag identifying this event]`
- `FFloatInterval PlayRateRangeOverride [@todo: support the concept of time to event channel weight, as wey of scoring better poses that are closer to the TimeToEvent
Effective range of play rate that can be applied to the selected animation to play, to account for better pose and trajectory matches.
that means the event search will evaluate poses in the range [TimeToEvent * PlayRate.Min, TimeToEvent * PlayRate.Max] seconds from any poses tagged with EventTag
PlayRateRangeOverride will be used if bUsePlayRateRangeOverride is true, otherwise FAnimNode_MotionMatching::PlayRate will be used instead]`
- `float32 TimeToEvent [Time in seconds until this event occurs]`
- `bool bEnablePoseFilters [if true pose candidates will be filtered by MotionMatching node 'PoseJumpThresholdTime' (DiscardedBy_PoseJumpThresholdTime) and 'PoseReselectHistory' (DiscardedBy_PoseReselectHistory),
as well as database assets FPoseSearchDatabaseAnimationAssetBase::bDisableReselection (DiscardedBy_AssetReselection)]`
- `bool bUsePlayRateRangeOverride [@todo: add PlayRate / PlayRateRangeOverride concept to UPoseSearchLibrary::MotionMatch
if true PlayRateRangeOverride will be used instead of FAnimNode_MotionMatching::PlayRate]`


**方法**:

- `FPoseSearchEvent& opAssign(FPoseSearchEvent Other)`

---

