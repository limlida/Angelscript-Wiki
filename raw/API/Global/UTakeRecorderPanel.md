### UTakeRecorderPanel


Take recorder UI panel interop object

**方法**:

- `bool CanStartRecording(FText& OutErrorText) const`  
  Whether the panel is ready to start recording
- `ClearPendingTake()`  
  * Clear the pending take level sequence
- `FFrameRate GetFrameRate() const`  
  Access the frame rate for this take
- `ULevelSequence GetLastRecordedLevelSequence() const`  
  Access the last level sequence that was recorded
- `ULevelSequence GetLevelSequence() const`  
  Access the level sequence for this take
- `ETakeRecorderPanelMode GetMode() const`  
  Get the mode that the panel is currently in
- `UTakeRecorderSources GetSources() const`  
  Access the sources that are to be (or were) used for recording this take
- `UTakeMetaData GetTakeMetaData() const`  
  Access take meta data for this take
- `SetFrameRate(FFrameRate InFrameRate)`  
  Set the frame rate for this take
- `SetFrameRateFromTimecode(bool bInFromTimecode)`  
  Set if the frame rate is set from the Timecode frame rate
- `SetupForEditing(UTakePreset TakePreset)`  
  Setup this panel as an editor for the specified take preset asset.
- `SetupForRecording_LevelSequence(ULevelSequence LevelSequenceAsset)`  
  Setup this panel such that it is ready to start recording using the specified
level sequence asset as a template for the recording.
- `SetupForRecording_TakePreset(UTakePreset TakePresetAsset)`  
  Setup this panel such that it is ready to start recording using the specified
take preset as a template for the recording.
- `SetupForRecordingInto_LevelSequence(ULevelSequence LevelSequenceAsset)`  
  Setup this panel such that it is ready to start recording using the specified
level sequence asset to record into.
- `SetupForViewing(ULevelSequence LevelSequenceAsset)`  
  Setup this panel as a viewer for a previously recorded take.
- `StartRecording() const`  
  Start recording with the current take
- `StopRecording() const`  
  Stop recording with the current take

---

