### UPaperFlipbook


Contains an animation sequence of sprite frames

**属性**:

- `EFlipbookCollisionMode CollisionSource [Collision source]`
- `UMaterialInterface DefaultMaterial [The material to use on a flipbook player instance if not overridden]`
- `float32 FramesPerSecond [The nominal frame rate to play this flipbook animation back at]`
- `TArray<FPaperFlipbookKeyFrame> KeyFrames [The set of key frames for this flipbook animation (each one has a duration and a sprite to display)]`


**方法**:

- `int GetKeyFrameIndexAtTime(float32 Time, bool bClampToEnds = false) const`  
  Returns the keyframe index that covers the specified time (in seconds), or INDEX_NONE if none exists.
When bClampToEnds is true, it will choose the first or last keyframe if the time is out of range.
- `int GetNumFrames() const`  
  Returns the total number of frames
- `int GetNumKeyFrames() const`  
  Returns the number of key frames
- `UPaperSprite GetSpriteAtFrame(int FrameIndex) const`  
  Returns the sprite at the specified keyframe index, or nullptr if none exists
- `UPaperSprite GetSpriteAtTime(float32 Time, bool bClampToEnds = false) const`  
  Returns the sprite at the specified time (in seconds), or nullptr if none exists.
When bClampToEnds is true, it will choose the first or last sprite if the time is out of range.
- `float32 GetTotalDuration() const`  
  Returns the total duration in seconds
- `bool IsValidKeyFrameIndex(int Index) const`  
  Is the specified Index within the valid range of key frames?

---

