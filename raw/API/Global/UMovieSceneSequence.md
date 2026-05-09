### UMovieSceneSequence


Abstract base class for movie scene animations (C++ version).

**方法**:

- `FMovieSceneObjectBindingID FindBindingByTag(FName InBindingName) const`  
  Find the first object binding ID associated with the specified tag name (set up through RMB->Expose on Object bindings from within sequencer)
- `TArray<FMovieSceneObjectBindingID> FindBindingsByTag(FName InBindingName) const`  
  Find all object binding IDs associated with the specified tag name (set up through RMB->Expose on Object bindings from within sequencer)
- `FMovieSceneTimecodeSource GetEarliestTimecodeSource() const`  
  Get the earliest timecode source out of all of the movie scene sections contained within this sequence's movie scene.
- `int AddMarkedFrameToSequence(FMovieSceneMarkedFrame InMarkedFrame, EMovieSceneTimeUnit TimeUnit = EMovieSceneTimeUnit :: DisplayRate)`  
  * Add a given user marked frame.
* A unique label will be generated if the marked frame label is empty
*
* @InMarkedFrame The given user marked frame to add
* @return The index to the newly added marked frame
- `FMovieSceneBindingProxy AddPossessable(UObject ObjectToPossess)`  
  Add a new binding to this sequence that will possess the specified object

@param Sequence        The sequence to add a possessable to
@param ObjectToPossess The object that this sequence should possess when evaluating
@return A unique identifier for the new binding
- `UMovieSceneFolder AddRootFolderToSequence(FString NewFolderName)`  
  Add a root folder to the given sequence

@param Sequence                      The sequence to add a folder to
@param NewFolderName         The name to give the added folder
@return The newly created folder
- `UMovieSceneTrack AddTrack(TSubclassOf<UMovieSceneTrack> TrackType)`  
  Add a new track of the specified type

@param Sequence        The sequence to use
@param TrackType     A UMovieSceneTrack class type to create
@return The newly created track, if successful
- `bool AreMarkedFramesLocked()`  
  * Are marked frames locked
*
* @return Whether the movie scene marked frames are locked
- `DeleteMarkedFrame(int DeleteIndex)`  
  * Delete the user marked frame by index.
*
* @DeleteIndex The index to the user marked frame to delete
- `DeleteMarkedFrames()`  
  * Delete all user marked frames
- `FMovieSceneBindingProxy FindBindingById(FGuid BindingId)`  
  Attempt to locate a binding in this sequence by its Id

@param Sequence        The sequence within which to find the binding
@param BindingId       The binding Id to look up
@return A unique identifier for the binding, or invalid
- `FMovieSceneBindingProxy FindBindingByName(FString Name)`  
  Attempt to locate a binding in this sequence by its name

@param Sequence        The sequence within which to find the binding
@param Name            The display name of the binding to look up
@return A unique identifier for the binding, or invalid
- `int FindMarkedFrameByFrameNumberInSequence(FFrameNumber InFrameNumber, EMovieSceneTimeUnit TimeUnit = EMovieSceneTimeUnit :: DisplayRate)`  
  * Find the user marked frame by frame number
*
* @InFrameNumber The frame number of the user marked frame to find
- `int FindMarkedFrameByLabel(FString InLabel)`  
  * Find the user marked frame by label
*
* @InLabel The label to the user marked frame to find
- `int FindNextMarkedFrameInSequence(FFrameNumber InFrameNumber, bool bForward, EMovieSceneTimeUnit TimeUnit = EMovieSceneTimeUnit :: DisplayRate)`  
  * Find the next/previous user marked frame from the given frame number
*
* @InFrameNumber The frame number to find the next/previous user marked frame from
* @bForward Find forward from the given frame number.
- `TArray<UMovieSceneTrack> FindTracksByExactType(TSubclassOf<UMovieSceneTrack> TrackType)`  
  Find all tracks of the specified type, not allowing sub-classed types

@param Sequence        The sequence to use
@param TrackType     A UMovieSceneTrack class type specifying the exact types of track to return
@return An array containing any tracks that are exactly the same as the type specified
- `TArray<UMovieSceneTrack> FindTracksByType(TSubclassOf<UMovieSceneTrack> TrackType)`  
  Find all tracks of the specified type

@param Sequence        The sequence to use
@param TrackType     A UMovieSceneTrack class type specifying which types of track to return
@return An array containing any tracks that match the type specified
- `FMovieSceneObjectBindingID GetBindingID(FMovieSceneBindingProxy InBinding)`  
  Get the binding ID for a binding within a sequence.
@note: The resulting binding is only valid when applied to properties within the same sequence as this binding. Use GetPortableBindingID for bindings which live in different sub-sequences.

@param Binding The binding proxy to generate the binding id from
@return The binding's id
- `TArray<FMovieSceneBindingProxy> GetBindings()`  
  Get all the bindings in this sequence

@param Sequence        The sequence to get bindings for
@return An array of unique identifiers for all the bindings in this sequence
- `EUpdateClockSource GetClockSource()`  
  Get the clock source for this sequence

@param Sequence The sequence within which to get the clock source
@return The clock source for this sequence
- `UMovieSceneClock GetCustomClock()`  
  Get the custom clock for this sequence

@param Sequence The Sequence within which to get the custom clock
@return The MovieSceneClock for this sequence
- `FFrameRate GetDisplayRate()`  
  Gets this sequence's display rate

@param Sequence        The sequence to use
@return The display rate that this sequence is displayed as
- `EMovieSceneEvaluationType GetEvaluationType()`  
  Get the evaluation type for this sequence

@param Sequence The sequence within which to get the evaluation type
@return The evaluation type for this sequence
- `TArray<FMovieSceneMarkedFrame> GetMarkedFramesFromSequence(EMovieSceneTimeUnit TimeUnit = EMovieSceneTimeUnit :: DisplayRate)`  
  * Get the marked frames for this sequence
*
* @return Return the user marked frames
- `UMovieScene GetMovieScene()`  
  Get this sequence's movie scene data

@param Sequence        The sequence to use
@return This sequence's movie scene data object
- `int GetPlaybackEnd()`  
  Get playback end of this sequence in display rate resolution

@param Sequence        The sequence within which to get the playback end
@return Playback end of this sequence
- `float32 GetPlaybackEndSeconds()`  
  Get playback end of this sequence in seconds

@param Sequence        The sequence within which to get the playback end
@return Playback end of this sequence
- `FSequencerScriptingRange GetPlaybackRange()`  
  Get playback range of this sequence in display rate resolution

@param Sequence        The sequence within which to get the playback range
@return Playback range of this sequence
- `int GetPlaybackStart()`  
  Get playback start of this sequence in display rate resolution

@param Sequence        The sequence within which to get the playback start
@return Playback start of this sequence
- `float32 GetPlaybackStartSeconds()`  
  Get playback start of this sequence in seconds

@param Sequence        The sequence within which to get the playback start
@return Playback start of this sequence
- `FMovieSceneObjectBindingID GetPortableBindingID(UMovieSceneSequence DestinationSequence, FMovieSceneBindingProxy InBinding)`  
  Get a portable binding ID for a binding that resides in a different sequence to the one where this binding will be resolved.
@note: This function must be used over GetBindingID when the target binding resides in different shots or sub-sequences.
@note: Only unique instances of sequences within a root sequences are supported

@param RootSequence The root sequence that contains both the destination sequence (that will resolve the binding ID) and the target sequence that contains the actual binding
@param DestinationSequence The sequence that will own or resolve the resulting binding ID. For example, if the binding ID will be applied to a camera cut section pass the sequence that contains the camera cut track to this parameter.
@param Binding The target binding to create the ID from
@return The binding's id
- `TArray<FMovieSceneBindingProxy> GetPossessables()`  
  Get all the possessables in this sequence. It is understood for the purpose of this function that this means the bindings are not custom.

@param Sequence        The sequence to get possessables for
@return Possessables in this sequence
- `TArray<UMovieSceneFolder> GetRootFoldersInSequence()`  
  Get the root folders in the provided sequence

@param Sequence      The sequence to retrieve folders from
@return The folders contained within the given sequence
- `TArray<FMovieSceneBindingProxy> GetSpawnables()`  
  Get all the spawnables in this sequence. For Level Sequences, this includes bindings with binding type UMovieSceneSpawnableActorBinding.

@param Sequence        The sequence to get spawnables for
@return Spawnables in this sequence
- `FFrameRate GetTickResolution()`  
  Gets this sequence's tick resolution

@param Sequence        The sequence to use
@return The tick resolution of the sequence, defining the smallest unit of time representable on this sequence
- `TArray<UMovieSceneTrack> GetTracks()`  
  Get all tracks

@param Sequence        The sequence to use
@return An array containing all tracks in this sequence
- `float GetViewRangeEnd()`  
  Get the sequence view range end in seconds

@param Sequence The sequence within which to get the view range end
@return The view range end time in seconds for this sequence
- `float GetViewRangeStart()`  
  Get the sequence view range start in seconds

@param Sequence The sequence within which to get the view range start
@return The view range start time in seconds for this sequence
- `float GetWorkRangeEnd()`  
  Get the sequence work range end in seconds

@param Sequence The sequence within which to get the work range end
@return The work range end time in seconds for this sequence
- `float GetWorkRangeStart()`  
  Get the sequence work range start in seconds

@param Sequence The sequence within which to get the work range start
@return The work range start time in seconds for this sequence
- `bool IsPlaybackRangeLocked()`  
  * Is playback ranged locked
*
* @return Whether the movie scene playback range is locked
- `bool IsReadOnly()`  
  * Is read only
*
* @return Whether the movie scene is read only or not
- `TArray<UObject> LocateBoundObjects(FMovieSceneBindingProxy InBinding, UObject Context)`  
  Locate all the objects that correspond to the specified object ID, using the specified context

@param Sequence   The sequence to locate bound objects for
@param InBinding  The object binding
@param Context    Optional context to use to find the required object
@return An array of all bound objects
- `FSequencerScriptingRange MakeRange(int StartFrame, int Duration)`  
  Make a new range for this sequence in its display rate

@param Sequence        The sequence within which to find the binding
@param StartFrame      The frame at which to start the range
@param Duration        The length of the range
@return Specified sequencer range
- `FSequencerScriptingRange MakeRangeSeconds(float32 StartTime, float32 Duration)`  
  Make a new range for this sequence in seconds

@param Sequence        The sequence within which to find the binding
@param StartTime       The time in seconds at which to start the range
@param Duration        The length of the range in seconds
@return Specified sequencer range
- `RemoveRootFolderFromSequence(UMovieSceneFolder Folder)`  
  Remove a root folder from the given sequence. Will throw an exception if the specified folder is not valid or not a root folder.

@param Sequence                      The sequence That the folder belongs to
@param Folder                        The folder to remove
- `bool RemoveTrack(UMovieSceneTrack Track)`  
  Removes a track

@param Sequence        The sequence to use
@param Track           The track to remove
@return Whether the track was successfully removed
- `FMovieSceneBindingProxy ResolveBindingID(FMovieSceneObjectBindingID InObjectBindingID)`  
  Make a binding for the given binding ID

@param RootSequence  The root sequence that contains the sequence
@param ObjectBindingID The object binding id that has the guid and the sequence id
@return The new binding proxy
- `SetClockSource(EUpdateClockSource InClockSource)`  
  Set the clock source for this sequence

@param Sequence The sequence within which to set the clock source
@param InClockSource The clock source to set for this sequence
- `SetDisplayRate(FFrameRate DisplayRate)`  
  Sets this sequence's display rate

@param Sequence        The sequence to use
@param DisplayRate The display rate that this sequence is displayed as
- `SetEvaluationType(EMovieSceneEvaluationType InEvaluationType)`  
  Set the evaluation type for this sequence

@param Sequence The sequence within which to set the evaluation type
@param InEvaluationType The evaluation type to set for this sequence
- `SetMarkedFrameInSequence(int InMarkIndex, FFrameNumber InFrameNumber, EMovieSceneTimeUnit TimeUnit = EMovieSceneTimeUnit :: DisplayRate)`  
  * Sets the frame number for the given marked frame index. Does not maintain sort. Call SortMarkedFrames
*
* @InMarkIndex The given user marked frame index to edit
* @InFrameNumber The frame number to set
- `SetMarkedFramesLocked(bool bInLocked)`  
  * Set marked frames locked
*
* @bInLocked Whether the movie scene marked frames should be locked
- `SetPlaybackEnd(int EndFrame)`  
  Set playback end of this sequence

@param Sequence        The sequence within which to set the playback end
@param EndFrame        The desired end frame for this sequence
- `SetPlaybackEndSeconds(float32 EndTime)`  
  Set playback end of this sequence in seconds

@param Sequence        The sequence within which to set the playback end
@param EndTime         The desired end time in seconds for this sequence
- `SetPlaybackRangeLocked(bool bInLocked)`  
  * Set playback range locked
*
* @bInLocked Whether the movie scene playback range should be locked
- `SetPlaybackStart(int StartFrame)`  
  Set playback start of this sequence

@param Sequence        The sequence within which to set the playback start
@param StartFrame      The desired start frame for this sequence
- `SetPlaybackStartSeconds(float32 StartTime)`  
  Set playback start of this sequence in seconds

@param Sequence        The sequence within which to set the playback start
@param StartTime       The desired start time in seconds for this sequence
- `SetReadOnly(bool bInReadOnly)`  
  * Set read only
*
* @bInReadOnly Whether the movie scene should be read only or not
- `SetTickResolution(FFrameRate TickResolution)`  
  Sets this sequence's tick resolution and migrates frame times

@param Sequence        The sequence to use
@param TickResolution The tick resolution of the sequence, defining the smallest unit of time representable on this sequence
- `SetTickResolutionDirectly(FFrameRate TickResolution)`  
  Sets this sequence's tick resolution directly without migrating frame times

@param Sequence        The sequence to use
@param TickResolution The tick resolution of the sequence, defining the smallest unit of time representable on this sequence
- `SetViewRangeEnd(float EndTimeInSeconds)`  
  Set the sequence view range end in seconds

@param Sequence The sequence within which to set the view range end
@param StartTimeInSeconds The desired view range end time in seconds for this sequence
- `SetViewRangeStart(float StartTimeInSeconds)`  
  Set the sequence view range start in seconds

@param Sequence The sequence within which to set the view range start
@param StartTimeInSeconds The desired view range start time in seconds for this sequence
- `SetWorkRangeEnd(float EndTimeInSeconds)`  
  Set the sequence work range end in seconds

@param Sequence The sequence within which to set the work range end
@param StartTimeInSeconds The desired work range end time in seconds for this sequence
- `SetWorkRangeStart(float StartTimeInSeconds)`  
  Set the sequence work range start in seconds

@param Sequence The sequence within which to set the work range start
@param StartTimeInSeconds The desired work range start time in seconds for this sequence
- `SortMarkedFrames()`  
  * Sort the marked frames in chronological order

---

