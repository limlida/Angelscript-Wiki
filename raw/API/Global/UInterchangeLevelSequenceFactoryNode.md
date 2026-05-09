### UInterchangeLevelSequenceFactoryNode


**方法**:

- `bool AddCustomAnimationTrackUid(FString AnimationTrackUid)`  
  Add one track dependency to this object.
- `GetCustomAnimationTrackUid(int Index, FString& OutAnimationTrackUid) const`  
  This function allow to retrieve one track dependency for this object.
- `int GetCustomAnimationTrackUidCount() const`  
  This function allow to retrieve the number of track dependencies for this object.
- `GetCustomAnimationTrackUids(TArray<FString>& OutAnimationTrackUids) const`  
  This function allow to retrieve the track dependency for this object.
- `bool GetCustomFrameRate(float32& AttributeValue) const`  
  Get the frame rate for the animations in the level sequence.
- `bool RemoveCustomAnimationTrackUid(FString AnimationTrackUid)`  
  Remove one track dependency from this object.
- `bool SetCustomFrameRate(float32 AttributeValue)`  
  Set the frame rate for the animations in the level sequence.

---

