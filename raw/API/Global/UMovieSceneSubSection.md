### UMovieSceneSubSection


Implements a section in sub-sequence tracks.

**属性**:

- `uint8 NetworkMask []`
- `FMovieSceneSectionParameters Parameters`
- `UMovieSceneSequence SubSequence [Movie scene being played by this section]`


**方法**:

- `UMovieSceneSequence GetSequence() const`  
  Get the sequence that is assigned to this section.

@return The sequence.
@see SetSequence
- `SetSequence(UMovieSceneSequence Sequence)`  
  Sets the sequence played by this section.

@param Sequence The sequence to play.
@see GetSequence
- `int GetParentSequenceFrame(int InFrame, UMovieSceneSequence ParentSequence)`  
  Get the frame in the space of its parent sequence

@param Section        The section that the InFrame is local to
@param InFrame The desired local frame
@param ParentSequence The parent sequence to traverse from
@return The frame at the parent sequence

---

