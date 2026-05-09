### UMovieSceneScriptingObjectPathChannel


**方法**:

- `UMovieSceneScriptingObjectPathKey AddKey(FFrameNumber InTime, UObject NewValue, float32 SubFrame = 0.000000, EMovieSceneTimeUnit TimeUnit = EMovieSceneTimeUnit :: DisplayRate)`  
  Add a key to this channel. This initializes a new key and returns a reference to it.
@param       InTime                  The frame this key should go on. Respects TimeUnit to determine if it is a display rate frame or a tick resolution frame.
@param       NewValue                The value that this key should be created with.
@param       SubFrame                Optional [0-1) clamped sub-frame to put this key on. Ignored if TimeUnit is set to Tick Resolution.
@param       TimeUnit                Is the specified InTime in Display Rate frames or Tick Resolution.
@return      The key that was created with the specified values at the specified time.
- `UObject GetDefault() const`  
  Get this channel's default value that will be used when no keys are present. Only a valid
value when HasDefault() returns true.
- `TArray<UMovieSceneScriptingKey> GetKeys() const`  
  Gets all of the keys in this channel.
@return      An array of UMovieSceneScriptingObjectPathKey contained by this channel.
                     Returns all keys even if clipped by the owning section's boundaries or outside of the current sequence play range.
- `TArray<UMovieSceneScriptingKey> GetKeysByIndex(TArray<int> Indices) const`  
  Gets the keys in this channel specified by the specific index
@Indices  The indices from which to get the keys from
@return       An array of UMovieSceneScriptingKey's contained by this channel.
                      Returns all keys specified by the indices, even if out of range.
- `bool HasDefault() const`  
  @return Does this channel have a default value set?
- `RemoveDefault()`  
  Remove this channel's default value causing the channel to have no effect where no keys are present
- `RemoveKey(UMovieSceneScriptingKey Key)`  
  Removes the specified key. Does nothing if the key is not specified or the key belongs to another channel.
- `SetDefault(UObject InDefaultValue)`  
  Set this channel's default value that should be used when no keys are present.
Sets bHasDefaultValue to true automatically.
- `Transform(FFrameNumber OffsetFrame, float Scale, FFrameNumber PivotFrame, FSequencerScriptingRange ScriptingRange, EMovieSceneTimeUnit TimeUnit = EMovieSceneTimeUnit :: DisplayRate)`  
  Transform the keys in time in the channel by an offset, scale and pivot
@param       OffsetFrame         The amount to offset the keys by
@param       Scale           The amount to scale the keys by
@param       PivotFrame          The frame to pivot around when scaling the keys
@param   ScriptingRange  The time range of the keys to transform
@param       TimeUnit                Is the specified OffsetFrame, PivotFrame, and ScriptingRange in Display Rate frames or Tick Resolution.

---

