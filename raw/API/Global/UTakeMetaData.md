### UTakeMetaData


Take meta-data that is stored on ULevelSequence assets that are recorded through the Take Recorder.
Meta-data is retrieved through ULevelSequence::FindMetaData<UTakeMetaData>()

**方法**:

- `FString GenerateAssetPath(FString PathFormatString, UTakeRecorderNamingTokensContext InContext = nullptr) const`  
  Generate the desired asset path for this take meta-data
- `FString GetDescription() const`  
  @return The user-provided description for this take
- `FFrameTime GetDuration() const`  
  @return The duration for this take
- `FFrameRate GetFrameRate()`  
  @return The frame-rate for this take
- `bool GetFrameRateFromTimecode() const`  
  @return Get if we get frame rate from time code
- `ULevel GetLevelOrigin() const`  
  @return The Map used to create this recording
- `FString GetLevelPath() const`  
  @return The AssetPath of the Level used to create a Recorded Level Sequence
- `UTakePreset GetPresetOrigin() const`  
  @return The preset on which the take was originally based
- `FString GetSlate() const`  
  @return The slate for this take
- `int GetTakeNumber() const`  
  @return The take number for this take
- `FTimecode GetTimecodeIn() const`  
  @return The timecode in for this take
- `FTimecode GetTimecodeOut() const`  
  @return The timecode out for this take
- `FDateTime GetTimestamp() const`  
  @return The timestamp for this take
- `bool IsLocked() const`  
  Check whether this take is locked
- `Lock()`  
  Lock this take, causing it to become read-only
- `bool Recorded() const`  
  Check if this take was recorded (as opposed
to being setup for recording)
- `SetDescription(FString InDescription)`  
  Set this take's user-provided description
@note: Only valid for takes that have not been locked
- `SetDuration(FFrameTime InDuration)`  
  Set this take's duration
@note: Only valid for takes that have not been locked
- `SetFrameRate(FFrameRate InFrameRate)`  
  Set this take's frame-rate
@note: Only valid for takes that have not been locked
- `SetFrameRateFromTimecode(bool InFromTimecode)`  
  Set if we get frame rate from time code
- `SetLevelOrigin(ULevel InLevelOrigin)`  
  Set the map used to create this recording
- `SetPresetOrigin(UTakePreset InPresetOrigin)`  
  Set the preset on which the take is based
@note: Only valid for takes that have not been locked
- `SetSlate(FString InSlate, bool bEmitChanged = true)`  
  Set the slate for this take and reset its take number to 1
@param bEmitChanged Whether or not to send a slate changed event
@note: Only valid for takes that have not been locked
- `SetTakeNumber(int InTakeNumber, bool bEmitChanged = true)`  
  Set this take's take number. Take numbers are always clamped to be >= 1.
@param bEmitChanged Whether or not to send a take number changed event
@note: Only valid for takes that have not been locked
- `SetTimecodeIn(FTimecode InTimecodeIn)`  
  Set this take's timecode in
@note: Only valid for takes that have not been locked
- `SetTimecodeOut(FTimecode InTimecodeOut)`  
  Set this take's timecode out
@note: Only valid for takes that have not been locked
- `SetTimestamp(FDateTime InTimestamp)`  
  Set this take's timestamp
@note: Only valid for takes that have not been locked
- `Unlock()`  
  Unlock this take if it is read-only, allowing it to be modified once again

---

