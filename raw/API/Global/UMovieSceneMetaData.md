### UMovieSceneMetaData


Movie scene meta-data that is stored on UMovieScene assets
Meta-data is retrieved through ULevelSequence::FindMetaData<ULevelSequenceMetaData>()

**属性**:

- `FString Author [The author that created this metadata]`
- `FDateTime Created [The created date at which the metadata was initiated]`
- `FString Notes [Notes for the metadata]`


**方法**:

- `FString GetAuthor() const`  
  @return The author for this metadata
- `FDateTime GetCreated() const`  
  @return The created date for this metadata
- `FString GetNotes() const`  
  @return The notes for this metadata
- `SetAuthor(FString InAuthor)`  
  Set this metadata's author
- `SetCreated(FDateTime InCreated)`  
  Set this metadata's created date
- `SetNotes(FString InNotes)`  
  Set this metadata's notes

---

