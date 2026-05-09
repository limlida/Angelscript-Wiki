### UTimelineComponent


TimelineComponent holds a series of events, floats, vectors or colors with associated keyframes.
Events can be triggered at keyframes along the timeline.
Floats, vectors, and colors are interpolated between keyframes along the timeline.

**方法**:

- `AddEvent(float32 Time, FOnTimelineEvent EventFunc = FOnTimelineEvent ( ))`  
  Add a callback event to the timeline
- `AddInterpFloat(UCurveFloat FloatCurve, FOnTimelineFloat InterpFunc = FOnTimelineFloat ( ), FName PropertyName = NAME_None, FName TrackName = NAME_None)`  
  Add a float interpolation to the timeline
- `AddInterpLinearColor(UCurveLinearColor LinearColorCurve, FOnTimelineLinearColor InterpFunc = FOnTimelineLinearColor ( ), FName PropertyName = NAME_None, FName TrackName = NAME_None)`  
  Add a linear color interpolation to the timeline
- `AddInterpVector(UCurveVector VectorCurve, FOnTimelineVector InterpFunc = FOnTimelineVector ( ), FName PropertyName = NAME_None, FName TrackName = NAME_None)`  
  Add a vector interpolation to the timeline
- `bool GetIgnoreTimeDilation() const`  
  Get whether to ignore time dilation.
- `float32 GetPlaybackPosition() const`  
  Get the current playback position of the Timeline
- `float32 GetPlayRate() const`  
  Get the current play rate for this timeline
- `float32 GetScaledTimelineLength() const`  
  Get length of the timeline divided by the play rate
- `float32 GetTimelineLength() const`  
  Get length of the timeline
- `bool IsLooping() const`  
  Get whether we are looping or not
- `bool IsPlaying() const`  
  Get whether this timeline is playing or not.
- `bool IsReversing() const`  
  Get whether we are reversing or not
- `Play()`  
  Start playback of timeline
- `PlayFromStart()`  
  Start playback of timeline from the start
- `Reverse()`  
  Start playback of timeline in reverse
- `ReverseFromEnd()`  
  Start playback of timeline in reverse from the end
- `SetFloatCurve(UCurveFloat NewFloatCurve, FName FloatTrackName)`  
  Update a certain float track's curve
- `SetIgnoreTimeDilation(bool bNewIgnoreTimeDilation)`  
  Set whether to ignore time dilation.
- `SetLinearColorCurve(UCurveLinearColor NewLinearColorCurve, FName LinearColorTrackName)`  
  Update a certain linear color track's curve
- `SetLooping(bool bNewLooping)`  
  true means we would loop, false means we should not.
- `SetNewTime(float32 NewTime)`  
  Set the new playback position time to use
- `SetPlaybackPosition(float32 NewPosition, bool bFireEvents, bool bFireUpdate = true)`  
  Jump to a position in the timeline.
@param bFireEvents If true, event functions that are between current position and new playback position will fire.
@param bFireUpdate If true, the update output exec will fire after setting the new playback position.
- `SetPlayRate(float32 NewRate)`  
  Sets the new play rate for this timeline
- `SetTimelineFinishedFunc(FOnTimelineEvent NewTimelineFinishedFunc = FOnTimelineEvent ( ))`  
  Set the delegate to call when timeline is finished
- `SetTimelineLength(float32 NewLength)`  
  Set length of the timeline
- `SetTimelineLengthMode(ETimelineLengthMode NewLengthMode)`  
  Sets the length mode of the timeline
- `SetTimelinePostUpdateFunc(FOnTimelineEvent NewTimelinePostUpdateFunc = FOnTimelineEvent ( ))`  
  Set the delegate to call after each timeline tick
- `SetVectorCurve(UCurveVector NewVectorCurve, FName VectorTrackName)`  
  Update a certain vector track's curve
- `Stop()`  
  Stop playback of timeline

---

