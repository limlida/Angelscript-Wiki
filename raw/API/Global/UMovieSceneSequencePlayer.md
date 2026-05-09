### UMovieSceneSequencePlayer


Abstract class that provides consistent player behaviour for various animation players

**属性**:

- `FOnMovieSceneSequencePlayerEvent OnFinished [Event triggered when the level sequence player finishes naturally (without explicitly calling stop)]`
- `FOnMovieSceneSequencePlayerEvent OnPause [Event triggered when the level sequence player is paused]`
- `FOnMovieSceneSequencePlayerEvent OnPlay [Event triggered when the level sequence player is played]`
- `FOnMovieSceneSequencePlayerEvent OnPlayReverse [Event triggered when the level sequence player is played in reverse]`
- `FOnMovieSceneSequencePlayerEvent OnStop [Event triggered when the level sequence player is stopped]`


**方法**:

- `ChangePlaybackDirection()`  
  Changes the direction of playback (go in reverse if it was going forward, or vice versa)
- `TArray<UObject> GetBoundObjects(FMovieSceneObjectBindingID ObjectBinding)`  
  Retrieve all objects currently bound to the specified binding identifier
- `EMovieSceneCompletionModeOverride GetCompletionModeOverride() const`  
  Get the state of the completion mode override
- `FQualifiedFrameTime GetCurrentTime() const`  
  Get the current playback position
@return The current playback position
- `bool GetDisableCameraCuts()`  
  Set whether to disable camera cuts
- `FQualifiedFrameTime GetDuration() const`  
  Get the total duration of the sequence
- `FQualifiedFrameTime GetEndTime() const`  
  Get the offset within the level sequence to finish playing
- `int GetFrameDuration() const`  
  Get this sequence's duration in frames
- `FFrameRate GetFrameRate() const`  
  Get this sequence's display rate.
- `bool GetHideHud() const`  
  Get if the hud is hidden during play.
- `TArray<FMovieSceneObjectBindingID> GetObjectBindings(UObject InObject)`  
  Get the object bindings for the requested object
- `float32 GetPlayRate() const`  
  Get the playback rate of this player.
- `UMovieSceneSequence GetSequence() const`  
  Access the sequence this player is playing
@return the sequence currently assigned to this player
- `FString GetSequenceName(bool bAddClientInfo = false) const`  
  Get the name of the sequence this player is playing
@param bAddClientInfo  If true, add client index if running as a client
@return the name of the sequence, or None if no sequence is set
- `FQualifiedFrameTime GetStartTime() const`  
  Get the offset within the level sequence to start playing
- `GoToEndAndStop()`  
  Go to end of the sequence and stop. Adheres to 'When Finished' section rules.
- `bool IsPaused() const`  
  Check whether the sequence is paused.
- `bool IsPlaying() const`  
  Check whether the sequence is actively playing.
- `bool IsReversed() const`  
  Check whether playback is reversed.
- `Pause()`  
  Pause playback.
- `Play()`  
  Start playback forwards from the current time cursor position, using the current play rate.
- `PlayLooping(int NumLoops = - 1)`  
  Start playback from the current time cursor position, looping the specified number of times.
@param NumLoops - The number of loops to play. -1 indicates infinite looping.
- `PlayReverse()`  
  Reverse playback.
- `PlayTo(FMovieSceneSequencePlaybackParams PlaybackParams, FMovieSceneSequencePlayToParams PlayToParams)`  
  Play from the current position to the requested position and pause. If requested position is before the current position,
playback will be reversed. Playback to the requested position will be cancelled if Stop() or Pause() is invoked during this
playback.

@param PlaybackParams The position settings (ie. the position to play to)
- `RemoveWeight()`  
  Removes a previously assigned weight
- `RequestInvalidateBinding(FMovieSceneObjectBindingID ObjectBinding)`  
  Invalidates the given binding, forcing it to be refetched. This may be useful for some custom bindings that wish their resolution code to be called again.
- `RestoreState()`  
  Restore any changes made by this player to their original state
- `RPC_ExplicitServerUpdateEvent(EUpdatePositionMethod Method, FFrameTime RelevantTime, int NewSerialNumber)`  
  Called on the server whenever an explicit change in time has occurred through one of the (Play|Jump|Scrub)To methods
- `RPC_OnFinishPlaybackEvent(FFrameTime StoppedTime, int NewSerialNumber)`  
  Called on the server when playback has reached the end. Could lead to stopping or pausing.
- `RPC_OnStopEvent(FFrameTime StoppedTime, int NewSerialNumber)`  
  Called on the server when Stop() is called in order to differentiate Stops from Pauses.
- `Scrub()`  
  Scrub playback.
- `SetCompletionModeOverride(EMovieSceneCompletionModeOverride CompletionModeOverride)`  
  Set the state of the completion mode override. Note, setting the state to force restore state will only take effect if the sequence hasn't started playing
- `SetDisableCameraCuts(bool bInDisableCameraCuts)`  
  Set whether to disable camera cuts
- `SetFrameRange(int StartFrame, int Duration, float32 SubFrames = 0.000000)`  
  Set the valid play range for this sequence, determined by a starting frame number (in this sequence player's plaback frame), and a number of frames duration

@param StartFrame      The frame number to start playing back the sequence
@param Duration        The number of frames to play
- `SetFrameRate(FFrameRate FrameRate)`  
  Set the frame-rate that this player should play with, making all frame numbers in the specified time-space
- `SetHideHud(bool HideHud)`  
  Set if hiding the hud during play.
@param HideHud - The new value of Hide Hud during play.
- `SetPlaybackPosition(FMovieSceneSequencePlaybackParams PlaybackParams)`  
  Set the current time of the player by evaluating from the current time to the specified time, as if the sequence is playing.
Triggers events that lie within the evaluated range. Does not alter the persistent playback status of the player (IsPlaying).

@param PlaybackParams The position settings (ie. the position to set playback to)
- `SetPlayRate(float32 PlayRate)`  
  Set the playback rate of this player. Negative values will play the animation in reverse.
@param PlayRate - The new rate of playback for the animation.
- `SetTimeRange(float32 StartTime, float32 Duration)`  
  Set the valid play range for this sequence, determined by a starting time  and a duration (in seconds)

@param StartTime       The time to start playing back the sequence in seconds
@param Duration        The length to play for
- `SetWeight(float InWeight)`  
  Set a manual weight to be multiplied with all blendable elements within this sequence
@note: It is recommended that a weight between 0 and 1 is supplied, though this is not enforced
@note: It is recommended that either FMovieSceneSequencePlaybackSettings::DynamicWeighting should be true for this player or the asset it's playing back should be set to enable dynamic weight to avoid undesirable behavior

@param InWeight    The weight to suuply to all elements in this sequence
- `Stop()`  
  Stop playback and move the cursor to the end (or start, for reversed playback) of the sequence.
- `StopAtCurrentTime()`  
  Stop playback without moving the cursor.

---

