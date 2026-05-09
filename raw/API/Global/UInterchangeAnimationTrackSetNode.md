### UInterchangeAnimationTrackSetNode


Class to represent a set of animation track nodes that share the same frame rate.

**方法**:

- `bool AddCustomAnimationTrackUid(FString AnimationTrackUid)`  
  Add one track dependency to this object.
- `GetCustomAnimationTrackUid(int Index, FString& OutAnimationTrackUid) const`  
  Retrieve one track dependency for this object.
- `int GetCustomAnimationTrackUidCount() const`  
  Retrieve the number of track dependencies for this object.
- `GetCustomAnimationTrackUids(TArray<FString>& OutAnimationTrackUids) const`  
  Retrieve the track dependency for this object.
- `bool GetCustomFrameRate(float32& AttributeValue) const`  
  Get the frame rate for the animations in the level sequence.
- `bool RemoveCustomAnimationTrackUid(FString AnimationTrackUid)`  
  Remove one track dependency from this object.
- `bool SetCustomFrameRate(float32 AttributeValue)`  
  Set the frame rate for the animations in the level sequence.

---

