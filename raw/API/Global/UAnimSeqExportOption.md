### UAnimSeqExportOption


**属性**:

- `ERichCurveInterpMode CurveInterpolation [This defines how values between keys are calculated for curves]`
- `FFrameRate CustomDisplayRate [Custom display rate for use when specifying custom start and end frame, should be set from the movie scene/sequencer display rate]`
- `FFrameNumber CustomEndFrame [Custom end frame in custom display rate]`
- `FFrameRate CustomFrameRate [Custom frame rate that the anim sequence will be recorded at]`
- `FFrameNumber CustomStartFrame [Custom start frame in custom display rate]`
- `FFrameNumber DelayBeforeStart [Number of Display Rate frames to delay at the same frame before doing the export. It will evalaute first, then any warm up, then the export. Use it if there is some post anim BP effects you want to ran repeatedly at the start.]`
- `TArray<FString> ExcludeAnimationNames [Exclude all animation bones/curves that match this list]`
- `TArray<FString> IncludeAnimationNames [Include only the animation bones/curves that match this list]`
- `EAnimInterpolationType Interpolation [This defines how values between keys are calculated for transforms]`
- `FFrameRate OverrideTimecodeRate [Overriding timecode rate to be used when baking.]`
- `FFrameNumber WarmUpFrames [Number of Display Rate frames to evaluate before doing the export. It will evaluate after any Delay. This will use frames before the start frame. Use it if there is some post anim BP effects you want to run before export start time.]`
- `bool bBakeTimecode [Set to true if sequence timecode should be baked into the sequence. Timecode rate will default to the project setting "Generate Default Timecode Frame Rate"]`
- `bool bEvaluateAllSkeletalMeshComponents [If true we evaluate all other skeletal mesh components under the same actor, this may be needed for example, to get physics to get baked]`
- `bool bExportAttributeCurves [If enabled, export the attribute curves from the animation]`
- `bool bExportMaterialCurves [If enabled, export the material curves from the animation]`
- `bool bExportMorphTargets [If enabled, export the morph targets from the animation]`
- `bool bExportTransforms [If enabled, export the transforms from the animation]`
- `bool bRecordInWorldSpace [If enabled we record in World Space otherwise we record from 0,0,0]`
- `bool bTimecodeRateOverride [Set to true if the timecode rate should be overridden with the specified value.]`
- `bool bTransactRecording [Whether or not to transact the animation sequence data recording]`
- `bool bUseCustomFrameRate [Whether or not to use custom frame rate when recording the anim sequence, if false will use Sequencers display rate]`
- `bool bUseCustomTimeRange [Whether or not to use custom time range]`

---

