### FPoseSearchContinuingProperties


**属性**:

- `EPoseSearchInterruptMode InterruptMode`
- `const UObject PlayingAsset [Currently playing animation]`
- `float32 PlayingAssetAccumulatedTime [Currently playing animation accumulated time]`
- `FVector PlayingAssetBlendParameters [PlayingAsset associated BlendParameters (if PlayingAsset is a UBlendSpace)]`
- `const UPoseSearchDatabase PlayingAssetDatabase [database where the PlayingAsset was originally from
(optional property, used to provide an additional database to search for the continuing pose associated to PlayingAsset)]`
- `bool bIsContinuingInteraction`
- `bool bIsPlayingAssetMirrored`


**方法**:

- `FPoseSearchContinuingProperties& opAssign(FPoseSearchContinuingProperties Other)`

---

