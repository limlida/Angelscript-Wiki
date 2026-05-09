### UInterchangeAnimationTrackSetInstanceNode


Class to represent an animation that instances another animation track set node.

**方法**:

- `bool GetCustomDuration(int& AttributeValue) const`  
  Get the level sequence instance duration in number of frames.
- `bool GetCustomStartFrame(int& AttributeValue) const`  
  Get the frame where the level sequence instance starts.
- `bool GetCustomTimeScale(float32& AttributeValue) const`  
  Get the time scale used for the level sequence instance.
- `bool GetCustomTrackSetDependencyUid(FString& AttributeValue) const`  
  Get the unique id of the level sequence this instance references.
- `bool SetCustomDuration(int AttributeValue)`  
  Set the level sequence instance duration in number of frames.
- `bool SetCustomStartFrame(int AttributeValue)`  
  Set the frame where the level sequence instance starts.
- `bool SetCustomTimeScale(float32 AttributeValue)`  
  Set the time scale used for the level sequence instance.
- `bool SetCustomTrackSetDependencyUid(FString AttributeValue)`  
  Set the unique id of the level sequence this instance references.

---

