### FLevelSequenceAnimSequenceLinkItem


Link To Anim Sequence that we are linked too.

**属性**:

- `ERichCurveInterpMode CurveInterpolation []`
- `FFrameRate CustomDisplayRate [Custom display rate, should be set from the movie scene/sequencer display rate]`
- `FFrameNumber CustomEndFrame [Custom end frame in display rate]`
- `FFrameRate CustomFrameRate [Custom frame rate that the anim sequence may have been recorded at]`
- `FFrameNumber CustomStartFrame [Custom start frame in display rate]`
- `FFrameNumber DelayBeforeStart [Number of Display Rate frames to delay at the same frame before doing the export. It will evalaute first, then any warm up, then the export. Use it if there is some post anim BP effects you want to ran repeatedly at the start.]`
- `TArray<FString> ExcludeAnimationNames [Exclude all animation bones/curves that match this list]`
- `TArray<FString> IncludeAnimationNames [Include only the animation bones/curves that match this list]`
- `EAnimInterpolationType Interpolation []`
- `FSoftObjectPath PathToAnimSequence []`
- `FGuid SkelTrackGuid []`
- `FFrameNumber WarmUpFrames [Number of Display Rate frames to evaluate before doing the export. It will evaluate after any Delay. This will use frames before the start frame. Use it if there is some post anim BP effects you want to run before export start time.]`
- `bool bEvaluateAllSkeletalMeshComponents []`
- `bool bExportAttributeCurves []`
- `bool bExportMaterialCurves []`
- `bool bExportMorphTargets []`
- `bool bExportTransforms [From Editor Only UAnimSeqExportOption we cache this since we can re-import dynamically]`
- `bool bRecordInWorldSpace []`
- `bool bUseCustomFrameRate [Whether or not to use custom frame rate or Sequencer display rate]`
- `bool bUseCustomTimeRange [Whether or not to use custom time range]`


**方法**:

- `FLevelSequenceAnimSequenceLinkItem& opAssign(FLevelSequenceAnimSequenceLinkItem Other)`

---

