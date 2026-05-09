### ULevelSequenceDirector


**属性**:

- `ULevelSequencePlayer Player [Pointer to the player that's playing back this director's sequence. Only valid in game or in PIE/Simulate.]`


**方法**:

- `AActor GetBoundActor(FMovieSceneObjectBindingID ObjectBinding)`  
  Resolve the first valid Actor binding inside this sub-sequence that relates to the specified ID
@note: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

@param ObjectBinding The ID for the object binding inside this sub-sequence or one of its children to resolve
- `TArray<AActor> GetBoundActors(FMovieSceneObjectBindingID ObjectBinding)`  
  Resolve the actor bindings inside this sub-sequence that relate to the specified ID
@note: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

@param ObjectBinding The ID for the object binding inside this sub-sequence or one of its children to resolve
- `UObject GetBoundObject(FMovieSceneObjectBindingID ObjectBinding)`  
  Resolve the first valid binding inside this sub-sequence that relates to the specified ID
@note: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

@param ObjectBinding The ID for the object binding inside this sub-sequence or one of its children to resolve
- `TArray<UObject> GetBoundObjects(FMovieSceneObjectBindingID ObjectBinding)`  
  Resolve the bindings inside this sub-sequence that relate to the specified ID
@note: ObjectBinding should be constructed from the same sequence as this Sequence Director's owning Sequence (see the GetSequenceBinding node)

@param ObjectBinding The ID for the object binding inside this sub-sequence or one of its children to resolve
- `FQualifiedFrameTime GetCurrentTime() const`  
  Get the current time for this director's sub-sequence (or the root sequence, if this is a root sequence director)
@return The current playback position of this director's sequence
- `UMovieSceneClock GetRootSequenceCustomClock() const`  
  @return The custom clock of the outermost (root) sequence
- `FQualifiedFrameTime GetRootSequenceTime() const`  
  Get the current time for the outermost (root) sequence
@return The current playback position of the outermost (root) sequence
- `UMovieSceneSequence GetSequence()`  
  * Get the current sequence that this director is playing back within
- `UMovieSceneClock GetSequenceCustomClock() const`  
  @return The custom clock of this director's sequence
- `OnCreated()`  
  Called when this director is created

---

