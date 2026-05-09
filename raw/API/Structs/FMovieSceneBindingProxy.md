### FMovieSceneBindingProxy


Movie Scene Binding Proxy represents the binding ID (an FGuid) and the corresponding sequence that it relates to.
This is primarily used for scripting where there is no support for FMovieSceneSequenceID and use cases where
managing multiple bindings with their corresponding sequences is necessary.

**属性**:

- `FGuid BindingID []`
- `UMovieSceneSequence Sequence []`


**方法**:

- `UMovieSceneTrack AddTrack(TSubclassOf<UMovieSceneTrack> TrackType) const`  
  Add a new track to the specified binding

@param InBinding     The binding to add tracks to
@param TrackType     A UMovieSceneTrack class type specifying the type of track to create
@return The newly created track, if successful
- `TArray<UMovieSceneTrack> FindTracksByExactType(TSubclassOf<UMovieSceneTrack> TrackType) const`  
  Find all tracks within a given binding of the specified type, not allowing sub-classed types

@param InBinding     The binding to find tracks in
@param TrackType     A UMovieSceneTrack class type specifying the exact types of track to return
@return An array containing any tracks that are exactly the same as the type specified
- `TArray<UMovieSceneTrack> FindTracksByType(TSubclassOf<UMovieSceneTrack> TrackType) const`  
  Find all tracks within a given binding of the specified type

@param InBinding     The binding to find tracks in
@param TrackType     A UMovieSceneTrack class type specifying which types of track to return
@return An array containing any tracks that match the type specified
- `TArray<FMovieSceneBindingProxy> GetChildPossessables() const`  
  Get all the children of this binding

@param InBinding     The binding to to get children of
@return An array containing all the binding's children
- `FText GetDisplayName() const`  
  Get this binding's name

@param InBinding     The binding to get the name of
@return The display name of the binding
- `FGuid GetId() const`  
  Get this binding's ID

@param InBinding     The binding to get the ID of
@return The guid that uniquely represents this binding
- `FString GetName() const`  
  Get this binding's object non-display name

@param InBinding     The binding to get the name of
@return The name of the binding
- `UObject GetObjectTemplate() const`  
  Get this binding's object template

@param InBinding     The binding to get the object template of
@return The object template of the binding
- `FMovieSceneBindingProxy GetParent() const`  
  Get the parent of this binding

@param InBinding     The binding to get the parent of
@return The binding's parent
- `UClass GetPossessedObjectClass() const`  
  Get this binding's possessed object class

@param InBinding     The binding to get the possessed object class of
@return The possessed object class of the binding
- `int GetSortingOrder() const`  
  Get the sorting order for this binding

@param InBinding        The binding to get the sorting order from
@return The sorting order of the requested binding
- `TArray<UMovieSceneTrack> GetTracks() const`  
  Get all the tracks stored within this binding

@param InBinding     The binding to find tracks in
@return An array containing all the binding's tracks
- `bool IsValid() const`  
  Check whether the specified binding is valid
- `MoveBindingContents(FMovieSceneBindingProxy DestinationBindingId) const`  
  Move all the contents (tracks, child bindings) of the specified binding ID onto another

@param SourceBindingId The identifier of the binding ID to move all tracks and children from
@param DestinationBindingId The identifier of the binding ID to move the contents to
- `Remove() const`  
  Remove the specified binding

@param InBinding     The binding to remove the track from
- `RemoveTrack(UMovieSceneTrack TrackToRemove) const`  
  Remove the specified track from this binding

@param InBinding     The binding to remove the track from
@param TrackToRemove The track to remove
- `SetDisplayName(FText InDisplayName) const`  
  Set this binding's name

@param InBinding     The binding to get the name of
@param InName The display name of the binding
- `SetName(FString InName) const`  
  Set this binding's object non-display name

@param InBinding     The binding to get the name of
@param InName The name of the binding
- `SetParent(FMovieSceneBindingProxy InParentBinding) const`  
  Set the parent to this binding

@param InBinding     The binding to set
@param InParentBinding     The parent to set the InBinding to
- `SetSortingOrder(int SortingOrder) const`  
  Set the sorting order for this binding

@param InBinding        The binding to get the sorting order from
@param SortingOrder The sorting order to set
- `SetSpawnableBindingID(FMovieSceneObjectBindingID SpawnableBindingID) const`  
  Set the spawnable id that the possessable binding should possess

@param InBinding     The binding to set
@param SpawnableBindingID The spawnable's binding id
- `FMovieSceneBindingProxy& opAssign(FMovieSceneBindingProxy Other)`

---

