### UPaperFlipbookComponent


**属性**:

- `FFlipbookFinishedPlaySignature OnFinishedPlaying [Event called whenever a non-looping flipbook finishes playing (either reaching the beginning or the end, depending on the play direction)]`
- `float32 PlayRate [Current play rate of the flipbook]`
- `UPaperFlipbook SourceFlipbook [Flipbook currently being played]`
- `FLinearColor SpriteColor [Vertex color to apply to the frames]`


**方法**:

- `UPaperFlipbook GetFlipbook()`  
  Gets the flipbook used by this instance.
- `float32 GetFlipbookFramerate() const`  
  Get the nominal framerate that the flipbook will be played back at (ignoring PlayRate), in frames per second
- `float32 GetFlipbookLength() const`  
  Get length of the flipbook (in seconds)
- `int GetFlipbookLengthInFrames() const`  
  Get length of the flipbook (in frames)
- `float32 GetPlaybackPosition() const`  
  Get the current playback position (in seconds) of the flipbook
- `int GetPlaybackPositionInFrames() const`  
  Get the current playback position (in frames) of the flipbook
- `float32 GetPlayRate() const`  
  Get the current play rate for this flipbook
- `FLinearColor GetSpriteColor() const`  
  Returns the current color of the sprite
- `bool IsLooping() const`  
  Get whether we are looping or not
- `bool IsPlaying() const`  
  Get whether this flipbook is playing or not.
- `bool IsReversing() const`  
  Get whether we are reversing or not
- `Play()`  
  Start playback of flipbook
- `PlayFromStart()`  
  Start playback of flipbook from the start
- `Reverse()`  
  Start playback of flipbook in reverse
- `ReverseFromEnd()`  
  Start playback of flipbook in reverse from the end
- `bool SetFlipbook(UPaperFlipbook NewFlipbook)`  
  Change the flipbook used by this instance (will reset the play time to 0 if it is a new flipbook).
- `SetLooping(bool bNewLooping)`  
  true means we should loop, false means we should not.
- `SetNewTime(float32 NewTime)`  
  Set the new playback position time to use
- `SetPlaybackPosition(float32 NewPosition, bool bFireEvents)`  
  Jump to a position in the flipbook (expressed in seconds). If bFireEvents is true, event functions will fire, otherwise they will not.
- `SetPlaybackPositionInFrames(int NewFramePosition, bool bFireEvents)`  
  Jump to a position in the flipbook (expressed in frames). If bFireEvents is true, event functions will fire, otherwise they will not.
- `SetPlayRate(float32 NewRate)`  
  Sets the new play rate for this flipbook
- `SetSpriteColor(FLinearColor NewColor)`  
  Set color of the sprite
- `Stop()`  
  Stop playback of flipbook

---

