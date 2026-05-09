### FMovieSceneSectionTimingParametersSeconds


Parameter utility that converts section timing parameters to a transform using Seconds values.

Transformation happens in the following order:

InputTime (relative to section start)
    >> Play Rate / Time Warp
    >> FrameRate conversion
    >> +StartTimeOffset
    >> Loop (% duration)
    >> Reverse

**属性**:

- `float32 FirstLoopStartOffset [Start offset to apply only to the first loop]`
- `float32 InnerEndOffset [End offset (in seconds) to apply to all loops ie, loop_range=[0 + InnerStartOffset, End- InnerEndOffset)]`
- `float32 InnerStartOffset [Start offset (in seconds) to apply to all loops]`
- `FMovieSceneTimeWarpVariant PlayRate [Playrate optionally implemented as time-warp]`
- `bool bClampToInnerRange [When true, apply clamping to the inner range. Mutually exclusive with bLoop.]`
- `bool bClampToOuterRange [When true, apply clamping to the outer range before anything else.]`
- `bool bLoop [When true, apply looping to the inner range. Mutually exclusive with bClampToInnerRange.]`
- `bool bReverse [When true, reverses the play direction. Applied after all other transformations]`


**方法**:

- `FMovieSceneSectionTimingParametersSeconds& opAssign(FMovieSceneSectionTimingParametersSeconds Other)`

---

