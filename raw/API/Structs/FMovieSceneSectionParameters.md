### FMovieSceneSectionParameters


namespace UE::MovieScene

**属性**:

- `FFrameNumber EndFrameOffset [Number of frames (in display rate) to skip at the beginning of the sub-sequence.]`
- `FFrameNumber FirstLoopStartFrameOffset [Number of frames (in display rate) to offset the first loop of the sub-sequence.]`
- `EMovieSceneSubSectionFlags Flags [Sub-section flags defining how to deal with this sub-sequence]`
- `int HierarchicalBias [Hierachical bias. Higher bias will take precedence.]`
- `FFrameNumber StartFrameOffset [Number of frames (in display rate) to skip at the beginning of the sub-sequence.]`
- `FMovieSceneTimeWarpVariant TimeScale [Playback time scaling factor.]`
- `bool bCanLoop [Whether this section supports looping the sub-sequence.]`


**方法**:

- `FMovieSceneSectionParameters& opAssign(FMovieSceneSectionParameters Other)`

---

