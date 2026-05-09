### UMovieSceneSection


Base class for movie scene sections

**属性**:

- `FColor ColorTint [The color tint for this section]`
- `FMovieSceneConditionContainer ConditionContainer [Optional dynamic condition for whether this section evaluates at runtime.]`
- `FMovieSceneSectionEvalOptions EvalOptions []`
- `FFrameNumber PostRollFrames [The amount of time to continue 'postrolling' this section for after evaluation has ended.]`
- `FFrameNumber PreRollFrames [The amount of time to prepare this section for evaluation before it actually starts.]`
- `FMovieSceneTimecodeSource TimecodeSource [The timecode at which this movie scene section is based (ie. when it was recorded)]`
- `bool bIsActive [Toggle whether this section is active/inactive]`
- `bool bIsLocked [Toggle whether this section is locked/unlocked]`


**方法**:

- `FOptionalMovieSceneBlendType GetBlendType() const`  
  Gets this section's blend type
- `FColor GetColorTint() const`  
  Get this section's color tint.
- `EMovieSceneCompletionMode GetCompletionMode() const`  
  Gets this section's completion mode
- `int GetOverlapPriority() const`  
  Gets this section's priority over overlapping sections (higher wins)
- `int GetPostRollFrames() const`
- `int GetPreRollFrames() const`
- `int GetRowIndex() const`  
  Gets the row index for this section
- `bool IsActive() const`
- `bool IsLocked() const`
- `SetBlendType(EMovieSceneBlendType InBlendType)`  
  Sets this section's blend type
- `SetColorTint(FColor InColorTint)`  
  Set this section's color tint.
- `SetCompletionMode(EMovieSceneCompletionMode InCompletionMode)`  
  * Sets this section's completion mode
- `SetIsActive(bool bInIsActive)`  
  Whether or not this section is active.
- `SetIsLocked(bool bInIsLocked)`  
  Whether or not this section is locked.
- `SetOverlapPriority(int NewPriority)`  
  Sets this section's priority over overlapping sections (higher wins)
- `SetPostRollFrames(int InPostRollFrames)`  
  Gets/sets the number of frames to continue 'postrolling' this section for after evaluation has ended.
- `SetPreRollFrames(int InPreRollFrames)`  
  Gets the number of frames to prepare this section for evaluation before it actually starts.
- `SetRowIndex(int NewRowIndex)`  
  Sets this section's new row index
- `TArray<UMovieSceneScriptingChannel> GetAllChannels()`  
  Find all channels that belong to the specified UMovieSceneSection. Some sections have many channels (such as
Transforms containing 9 double channels to represent Translation/Rotation/Scale), and a section may have mixed
channel types.

@param Section       The section to use.
@return An array containing any key channels that match the type specified
- `int GetAutoSizeEndFrame()`  
  Get end frame of the AutoSize. Will throw an exception if section has no end frame, use GetAutoSizeHasEndFrame to check first.

@param Section        The section being queried
@return The end frame of the AutoSize data.
- `float32 GetAutoSizeEndFrameSeconds()`  
  Get end time of the AutoSize seconds. Will throw an exception if section has no end frame, use GetAutoSizeHasEndFrame to check first.

@param Section        The section being queried
@return The end frame of the AutoSize data in seconds.
- `bool GetAutoSizeHasEndFrame()`  
  Checks to see if this section has an AutoSize implementation, and if so, if that implementation has a end frame.

@param Section        The section being queried
@return Whether this section has a valid autosize range, and a valid end frame
- `bool GetAutoSizeHasStartFrame()`  
  Checks to see if this section has an AutoSize implementation, and if so, if that implementation has a start frame.

@param Section        The section being queried
@return Whether this section has a valid autosize range, and a valid start frame
- `int GetAutoSizeStartFrame()`  
  Get start frame of the AutoSize. Will throw an exception if section has no start frame, use GetAutoSizeHasStartFrame to check first.

@param Section        The section being queried
@return The start frame of the AutoSize data.
- `float32 GetAutoSizeStartFrameSeconds()`  
  Get start time of the AutoSize in seconds. Will throw an exception if section has no start frame, use GetAutoSizeHasStartFrame to check first.

@param Section        The section being queried
@return The start frame of the AutoSize data in seconds.
- `UMovieSceneScriptingChannel GetChannel(FName ChannelName)`  
  Get channel from specified section and channel name

@param Section        The section to use.
@param ChannelName    The name of the channel.
@return The channel if it exists
- `TArray<UMovieSceneScriptingChannel> GetChannelsByType(TSubclassOf<UMovieSceneScriptingChannel> ChannelType)`  
  Find all channels that belong to the specified UMovieSceneSection that match the specific type. This will filter out any children who do not inherit
from the specified type for you.

@param Section        The section to use.
@param ChannelType    The class type to look for.
@return An array containing any key channels that match the type specified
- `int GetEndFrame()`  
  Get end frame. Will throw an exception if section has no end frame, use HasEndFrame to check first.

@param Section        The section within which to get the end frame
@return End frame of this section
- `float32 GetEndFrameSeconds()`  
  Get end time in seconds. Will throw an exception if section has no end frame, use HasEndFrame to check first.

@param Section        The section within which to get the end time
@return End time of this section
- `int GetStartFrame()`  
  Get start frame. Will throw an exception if section has no start frame, use HasStartFrame to check first.

@param Section        The section within which to get the start frame
@return Start frame of this section
- `float32 GetStartFrameSeconds()`  
  Get start time in seconds. Will throw an exception if section has no start frame, use HasStartFrame to check first.

@param Section        The section within which to get the start time
@return Start time of this section
- `bool HasEndFrame()`  
  Has end frame

@param Section        The section being queried
@return Whether this section has a valid end frame (else infinite)
- `bool HasStartFrame()`  
  Has start frame

@param Section        The section being queried
@return Whether this section has a valid start frame (else infinite)
- `SetEndFrame(int EndFrame)`  
  Set end frame

@param Section        The section within which to set the end frame
@param EndFrame The desired start frame for this section
- `SetEndFrameBounded(bool bIsBounded)`  
  Set end frame bounded

@param Section        The section to set whether the end frame is bounded or not
@param IsBounded The desired bounded state of the end frame
- `SetEndFrameSeconds(float32 EndTime)`  
  Set end time in seconds

@param Section        The section within which to set the end time
@param EndTime The desired end time for this section
- `SetRange(int StartFrame, int EndFrame)`  
  Set range

@param Section        The section within which to set the range
@param StartFrame The desired start frame for this section
@param EndFrame The desired end frame for this section
- `SetRangeSeconds(float32 StartTime, float32 EndTime)`  
  Set range in seconds

@param Section        The section within which to set the range
@param StartTime The desired start frame for this section
@param EndTime The desired end frame for this section
- `SetStartFrame(int StartFrame)`  
  Set start frame

@param Section        The section within which to set the start frame
@param StartFrame The desired start frame for this section
- `SetStartFrameBounded(bool bIsBounded)`  
  Set start frame bounded

@param Section        The section to set whether the start frame is bounded or not
@param IsBounded The desired bounded state of the start frame
- `SetStartFrameSeconds(float32 StartTime)`  
  Set start time in seconds

@param Section        The section within which to set the start time
@param StartTime The desired start time for this section

---

