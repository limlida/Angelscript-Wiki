### FMovieSceneMarkedFrame


**属性**:

- `FString Comment []`
- `FLinearColor CustomColor []`
- `FFrameNumber FrameNumber`
- `FString Label`
- `bool bIsDeterminismFence [When checked, treat this mark as a fence for evaluation purposes. Fences cannot be crossed in a single evaluation, and force the evaluation to be split into 2 separate parts.]`
- `bool bIsInclusiveTime [Defines how this determinism fence determines the previous and next range: when true, the range will be dissected as (X, Y] -> (Y, Z], when false it will be (X, Y) -> [Y, Z].]`
- `bool bUseCustomColor []`


**方法**:

- `FMovieSceneMarkedFrame& opAssign(FMovieSceneMarkedFrame Other)`

---

