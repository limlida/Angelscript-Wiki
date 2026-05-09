### UMovieSceneTrack


Base class for a track in a Movie Scene

**属性**:

- `FMovieSceneConditionContainer ConditionContainer [Optional dynamic condition for whether this track/any of the sections on this track evaluates at runtime.]`
- `FMovieSceneTrackDisplayOptions DisplayOptions [General display options for a given track]`
- `FMovieSceneTrackEvalOptions EvalOptions [General evaluation options for a given track]`
- `FColor TrackTint [This track's tint color]`


**方法**:

- `UMovieSceneSection AddSection()`  
  Add a new section to this track

@param Track        The track to use
@return The newly create section if successful
- `FColor GetColorTint()`  
  Get the color tint for this track

@param Track        The track to get the color tint from
@return The color tint of the requested track
- `FText GetDisplayName()`  
  Get this track's display name

@param Track        The track to use
@return This track's display name
- `TArray<UMovieSceneSection> GetSections()`  
  Access all this track's sections

@param Track        The track to use
@return An array of this track's sections
- `UMovieSceneSection GetSectionToKey()`  
  Get the section to key for this track

@param Track        The track to get the section to key for
@return The section to key for the requested track
- `int GetSortingOrder()`  
  Get the sorting order for this track

@param Track        The track to get the sorting order from
@return The sorting order of the requested track
- `FText GetTrackRowDisplayName(int RowIndex)`  
  Get this track row's display name

@param Track        The track to use
@param RowIndex The row index for the track
@return This track's display name
- `RemoveSection(UMovieSceneSection Section)`  
  Remove the specified section

@param Track        The track to remove the section from, if present
@param Section      The section to remove
- `SetColorTint(FColor ColorTint)`  
  Set the color tint for this track

@param Track        The track to set the color tint for
@param ColorTint The color tint to set
- `SetDisplayName(FText InName)`  
  Set this track's display name

@param Track        The track to use
@param InName The name for this track
- `SetSectionToKey(UMovieSceneSection Section)`  
  Set the section to key for this track. When properties for this section are modified externally,
this section will receive those modifications and act accordingly (add/update keys). This is
especially useful when there are multiple overlapping sections.

@param Track        The track to set the section to key for
@param Section      The section to key for this track
- `SetSortingOrder(int SortingOrder)`  
  Set the sorting order for this track

@param Track        The track to get the sorting order from
@param SortingOrder The sorting order to set
- `SetTrackRowDisplayName(FText InName, int RowIndex)`  
  Set this track row's display name

@param Track        The track to use
@param InName The name for this track
@param RowIndex The row index for the track

---

