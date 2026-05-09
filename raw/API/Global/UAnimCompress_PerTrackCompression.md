### UAnimCompress_PerTrackCompression


**属性**:

- `TArray<AnimationCompressionFormat> AllowedRotationFormats [Which encoding formats is the per-track compressor allowed to try on rotation keys]`
- `TArray<AnimationCompressionFormat> AllowedScaleFormats [Which encoding formats is the per-track compressor allowed to try on scale keys]`
- `TArray<AnimationCompressionFormat> AllowedTranslationFormats [Which encoding formats is the per-track compressor allowed to try on translation keys]`
- `float32 MaxAngleDiffBitwise [Maximum angle difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.]`
- `float32 MaxErrorPerTrackRatio [A fraction that determines how much of the total error budget can be introduced by any particular track]`
- `float32 MaxPosDiffBitwise [Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.]`
- `float32 MaxScaleDiffBitwise [Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression.]`
- `float32 MaxZeroingThreshold [Maximum threshold to use when replacing a component with zero. Lower values retain more keys, but yield less compression.]`
- `int MinKeysForResampling [Animations with fewer keys than MinKeysForResampling will not be resampled.]`
- `float32 ParentingDivisor [Reduces the error tolerance the further up the tree that a key occurs
EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) * ParentingDivisorExponent), ZeroingThreshold)
Only has an effect bUseAdaptiveError is true]`
- `float32 ParentingDivisorExponent [Reduces the error tolerance the further up the tree that a key occurs
EffectiveErrorTolerance = Max(BaseErrorTolerance / Power(ParentingDivisor, Max(Height+Bias,0) * ParentingDivisorExponent), ZeroingThreshold)
Only has an effect bUseAdaptiveError is true]`
- `float32 ResampledFramerate [When bResampleAnimation is true, this defines the desired framerate]`
- `float32 RotationErrorSourceRatio [This ratio determines how much error in end effector rotation can come from a given track's rotation error or translation error.
If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.]`
- `float32 ScaleErrorSourceRatio [This ratio determines how much error in end effector scale can come from a given track's rotation error or scale error.
If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from scale error.]`
- `int TrackHeightBias [A bias added to the track height before using it to calculate the adaptive error]`
- `float32 TranslationErrorSourceRatio [This ratio determines how much error in end effector translation can come from a given track's rotation error or translation error.
If 1, all of it must come from rotation error, if 0.5, half can come from each, and if 0.0, all must come from translation error.]`
- `bool bResampleAnimation [If true, resample the animation to ResampleFramerate frames per second]`
- `bool bUseAdaptiveError [If true, adjust the error thresholds based on the 'height' within the skeleton]`
- `bool bUseAdaptiveError2 [If true, the adaptive error system will determine how much error to allow for each track, based on the
error introduced in end effectors due to errors in the track.]`
- `bool bUseOverrideForEndEffectors [If true, uses MinEffectorDiff as the threshold for end effectors]`

---

