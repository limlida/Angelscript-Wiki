### UInterchangeAnimationTrackNode


Class to represent an animation on the property of a camera, light, or scene node
The list of supported properties is enumerated in EInterchangeAnimatedProperty.

**方法**:

- `bool GetCustomActorDependencyUid(FString& DependencyUid) const`  
  Get the actor dependency to this object.
- `bool GetCustomAnimationPayloadKey(FInterchangeAnimationPayLoadKey& AnimationPayLoadKey) const`  
  Get the payload key needed to retrieve the animation for this track.
- `bool GetCustomFrameCount(int& AttributeValue) const`  
  Get the number of frames for the animation of this track.
- `bool GetCustomPropertyTrack(EInterchangePropertyTracks& PropertyTrack) const`  
  Get the property animated by this track.
- `bool SetCustomActorDependencyUid(FString DependencyUid)`  
  Set the actor dependency to this object.
- `bool SetCustomAnimationPayloadKey(FString InUniqueId, EInterchangeAnimationPayLoadType InType)`  
  Set the payload key needed to retrieve the animation for this track.
- `bool SetCustomFrameCount(int AttributeValue)`  
  Set the number of frames for the animation of this track.
- `bool SetCustomPropertyTrack(EInterchangePropertyTracks PropertyTrack)`  
  Set the property animated by this track.

---

