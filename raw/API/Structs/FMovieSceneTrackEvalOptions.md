### FMovieSceneTrackEvalOptions


Generic evaluation options for any track

**属性**:

- `bool bEvalNearestSection [When evaluating empty space on a track, will evaluate the last position of the previous section (if possible), or the first position of the next section, in that order of preference.]`
- `bool bEvaluateInPostroll [Evaluate this track as part of its parent sub-section's post-roll, if applicable]`
- `bool bEvaluateInPreroll [Evaluate this track as part of its parent sub-section's pre-roll, if applicable]`


**方法**:

- `FMovieSceneTrackEvalOptions& opAssign(FMovieSceneTrackEvalOptions Other)`

---

