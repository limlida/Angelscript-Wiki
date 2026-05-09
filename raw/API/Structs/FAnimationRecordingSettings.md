### FAnimationRecordingSettings


Settings describing how to record an animation

**属性**:

- `TArray<FString> ExcludeAnimationNames [Exclude all animation bones/curves that match this list]`
- `TArray<FString> IncludeAnimationNames [Include only the animation bones/curves that match this list]`
- `ERichCurveInterpMode InterpMode [Interpolation mode for the recorded keys.]`
- `EAnimInterpolationType Interpolation [This defines how values between keys are calculated for transforms.*]`
- `float32 Length [Maximum length of the animation recorded (in seconds). If zero the animation will keep on recording until stopped.]`
- `FFrameRate SampleFrameRate [Sample rate of the recorded animation]`
- `ERichCurveTangentMode TangentMode [Tangent mode for the recorded keys.]`
- `bool bAutoSaveAsset [Whether to auto-save asset when recording is completed. Defaults to false]`
- `bool bRecordAttributeCurves [Whether or not to record parameter curves]`
- `bool bRecordInWorldSpace [Whether to record animation in world space, defaults to true]`
- `bool bRecordMaterialCurves [Whether or not to record material curves]`
- `bool bRecordMorphTargets [Whether or not to record morph targets]`
- `bool bRecordTransforms [Whether or not to record transforms]`
- `bool bRemoveRootAnimation [Whether to remove the root bone transform from the animation]`
- `bool bTransactRecording [Whether or not to transact recording changes]`


**方法**:

- `FAnimationRecordingSettings& opAssign(FAnimationRecordingSettings Other)`

---

