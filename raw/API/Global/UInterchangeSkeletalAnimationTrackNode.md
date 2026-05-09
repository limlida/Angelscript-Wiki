### UInterchangeSkeletalAnimationTrackNode


* Class to hold onto the relationships between a set of animation tracks and the bones, morph targets of a skeleton.

**方法**:

- `bool GetCustomAnimationSampleRate(float& SampleRate) const`  
  Get the animation sample rate. Return false if the attribute is not set.
- `bool GetCustomAnimationStartTime(float& StartTime) const`  
  Get the animation start time. Return false if the attribute is not set.
- `bool GetCustomAnimationStopTime(float& StopTime) const`  
  Get the animation stop time. Return false if the attribute is not set.
- `bool GetCustomSkeletonNodeUid(FString& AttributeValue) const`  
  Get the unique ID of the skeleton factory node. Return false if the attribute is not set.
- `bool GetCustomSourceTimelineAnimationStartTime(float& StartTime) const`  
  Get the source timeline animation start time. Return false if the attribute is not set.
Note: This represent the DCC setup of the time for the animation.
Optional: if not set CustomAnimationStartTime will be used
- `bool GetCustomSourceTimelineAnimationStopTime(float& StopTime) const`  
  Get the source timeline animation stop time. Return false if the attribute is not set.
Note: This represent the DCC setup of the time for the animation.
Optional: if not set CustomAnimationStopTime will be used
- `GetMorphTargetNodeAnimationPayloadKeys(TMap<FString,FString>& OutMorphTargetNodeAnimationPayloadKeyUids, TMap<FString,uint8>& OutMorphTargetNodeAnimationPayloadKeyTypes) const`
- `GetSceneNodeAnimationPayloadKeys(TMap<FString,FString>& OutSceneNodeAnimationPayloadKeyUids, TMap<FString,uint8>& OutSceneNodeAnimationPayloadKeyTypes) const`
- `bool IsNodeAnimatedWithBakedCurve(FString SceneNodeUid) const`
- `bool SetAnimationPayloadKeyForMorphTargetNodeUid(FString MorphTargetNodeUid, FString InUniqueId, EInterchangeAnimationPayLoadType InType)`
- `bool SetAnimationPayloadKeyForSceneNodeUid(FString SceneNodeUid, FString InUniqueId, EInterchangeAnimationPayLoadType InType)`
- `bool SetCustomAnimationSampleRate(float SampleRate)`  
  Set the animation sample rate. Return false if the attribute could not be set.
- `bool SetCustomAnimationStartTime(float StartTime)`  
  Set the animation start time. Return false if the attribute could not be set.
- `bool SetCustomAnimationStopTime(float StopTime)`  
  Set the animation stop time. Return false if the attribute could not be set.
- `bool SetCustomSkeletonNodeUid(FString AttributeValue)`  
  Set the unique ID of the skeleton factory node. Return false if the attribute could not be set.
- `bool SetCustomSourceTimelineAnimationStartTime(float StartTime)`  
  Set the source timeline animation start time. Return false if the attribute could not be set.
Note: This represent the DCC setup of the time for the animation.
Optional: if not set CustomAnimationStartTime will be used
- `bool SetCustomSourceTimelineAnimationStopTime(float StopTime)`  
  Set the source timeline animation stop time. Return false if the attribute could not be set.
Note: This represent the DCC setup of the time for the animation.
Optional: if not set CustomAnimationStopTime will be used

---

