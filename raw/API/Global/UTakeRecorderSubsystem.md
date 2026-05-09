### UTakeRecorderSubsystem


UTakeRecorderSubsystem Subsystem for Take Recorder.
SetTargetSequence() needs to be called at least once prior to use. This will perform additional initialization
and register the subsystem as tickable currently required to cache level metadata.

**属性**:

- `FTakeRecorderCancelled TakeRecorderCancelled [Called when take recorder is cancelled]`
- `FTakeRecorderFinished TakeRecorderFinished [Called when take recorder has finished]`
- `FTakeRecorderInitialized TakeRecorderInitialized [called when take recorder is initializing.]`
- `FTakeRecorderMarkedFrameAdded TakeRecorderMarkedFrameAdded [Called when a marked frame is added to take recorder]`
- `FTakeRecorderPreInitialize TakeRecorderPreInitialize [Called before initialization occurs (ie. when the recording button is pressed and before the countdown starts)]`
- `FTakeRecorderSlateChanged TakeRecorderSlateChanged [Called when a take recorder slate changes.]`
- `FOnTakeRecorderSourceAddedDynamic TakeRecorderSourceAdded [Multicast delegate when any source has been added.]`
- `FOnTakeRecorderSourceRemovedDynamic TakeRecorderSourceRemoved [Multicast delegate when any source has been removed.]`
- `FTakeRecorderStarted TakeRecorderStarted [Called when take recorder is started]`
- `FTakeRecorderStopped TakeRecorderStopped [Called when take recorder is stopped]`
- `FTakeRecorderTakeNumberChanged TakeRecorderTakeNumberChanged [Called when a take recorder take number changes.]`


**方法**:

- `UTakeRecorderSource AddSource(TSubclassOf<UTakeRecorderSource> InSourceClass)`  
  Add a source by a source class.
- `AddSourceForActor(AActor InActor, bool bReduceKeys = true, bool bShowProgress = true)`  
  * Add an actor as a source.
*
* @param InActor The actor that should be added to Sources. Note that this can include ALevelSequenceActors.
* @param bReduceKeys Enable/disable key reduction on all the sources registered
* @param bShowProgress Enable/disable the dialog box showing progress for the potentially slow parts of finalizing the take
- `CancelRecording(bool bShowConfirmMessage = true)`  
  Cancel an in-progress recording.
- `bool CanReviewLastRecording() const`  
  Can we review the last recording?
- `ClearPendingTake()`  
  Clear the pending take.
- `ClearSources()`  
  Remove all sources from the current sequence.
- `TArray<UTakeRecorderSource> GetAllSourcesCopy() const`  
  Retrieves a copy of the list of sources that are being recorded. This is intended for Blueprint usages which cannot
use TArrayView.
DO NOT MODIFY THIS ARRAY, modifications will be lost.
- `FFrameRate GetFrameRate() const`  
  Access the frame rate for this take
- `FTakeRecorderParameters GetGlobalRecordSettings() const`  
  Retrieve the global take recorder settings.
- `ULevelSequence GetLastRecordedLevelSequence() const`  
  Retrieve the Last Recorded Level Sequence if it exists.
- `ULevelSequence GetLevelSequence() const`  
  Return the level sequence we are using.
- `int GetNextTakeNumber(FString InSlate) const`  
  Compute the next take number given a slate.
- `GetNumberOfTakes(FString InSlate, int& OutMaxTake, int& OutNumTakes) const`  
  Find both the current maximum take value and the total number of takes for a given slate.
- `UTakePreset GetPendingTake() const`  
  Retrieve the pending take. This may be null.
- `TArray<FAssetData> GetSlates(FName InPackagePath = NAME_None) const`  
  Retrieve all slates.
@param InPackagePath [Optional] Scope the search to a specific folder, recursively.
- `AActor GetSourceActor(UTakeRecorderSource InSource) const`  
  Retrieve the actor from a source, if applicable.
- `UTakeRecorderSource GetSourceByClass(TSubclassOf<UTakeRecorderSource> InSourceClass) const`  
  Retrieve the first source of the given class.
- `TArray<UObject> GetSourceRecordSettings(UTakeRecorderSource InSource) const`  
  Retrieve additional settings objects from a source.
- `UTakeRecorderSources GetSources() const`  
  Retrieve the sources.
- `ETakeRecorderState GetState() const`  
  Retrieve the current take recorder state.
- `UTakeMetaData GetTakeMetaData() const`  
  Retrieve the current meta data.
- `ETakeRecorderMode GetTakeRecorderMode() const`  
  The current take recorder mode.
- `bool IsRecording() const`  
  If Take Recorder is currently recording.
- `bool IsReviewing() const`  
  If Take Recorder is currently reviewing.
- `bool MarkFrame()`  
  Mark the current frame.
- `RemoveActorFromSources(AActor InActor)`  
  Remove an actor from available sources.
- `RemoveSource(UTakeRecorderSource InSource)`  
  Remove a given source.
- `ResetToPendingTake()`  
  Reset to the pending take.
- `RevertChanges()`  
  Revert any changes restoring the preset origin.
- `bool ReviewLastRecording()`  
  Supply the last recording if it exists.
@return true if it can be reviewed, false if it there isn't a recording to review.
- `SetFrameRate(FFrameRate InFrameRate)`  
  Set the frame rate for this take
- `SetFrameRateFromTimecode()`  
  Set if the frame rate is set from the Timecode frame rate
- `SetGlobalRecordSettings(FTakeRecorderParameters InParameters)`  
  Set the global take recorder settings.
- `SetSequenceCountdown(float32 InSeconds)`  
  Sets the current sequence's countdown.
@param InSeconds Time in seconds.
- `SetSlateName(FString InSlateName, bool bEmitChanged = true)`  
  Directly set the slate name.
@param InSlateName The new slate name to set.
@param bEmitChanged Whether to broadcast events signaling the slate name has changed.
- `SetTakeNumber(int InNewTakeNumber, bool bEmitChanged = true)`  
  Directly set the take number.
@param InNewTakeNumber The new take number to set.
@param bEmitChanged Whether to broadcast events signaling the take number has changed.
- `SetTargetSequence(FTakeRecorderSequenceParameters InData)`  
  Provide sequence data for this take recorder. This will also perform initialization of the subsystem.
This must be called prior to any usage.

@param InData The sequence parameters, which are mutually exclusive. They can all be null.
- `bool StartRecording(bool bOpenSequencer = true, bool bShowErrorMessage = true)`  
  Begin a new recording.
@param bOpenSequencer If sequencer should open when starting the recording.
@param bShowErrorMessage If an error message should be displayed on failure.
@return true if the recording was started successfully.
- `StopRecording()`  
  Stop an existing recording.
- `bool TryGetSequenceCountdown(float32& OutValue) const`  
  Retrieve the current sequence's countdown.
@param OutValue The current value of the countdown.
@return True if we are in a countdown sequence, false otherwise.

---

