### UMediaSoundComponent


Implements a sound component for playing a media player's audio output.

**属性**:

- `EMediaSoundChannels Channels [Media sound channel type.]`
- `bool DynamicRateAdjustment [Dynamically adjust the sample rate if audio and media clock desynchronize.]`
- `UMediaPlayer MediaPlayer [The media player asset associated with this component.

This property is meant for design-time convenience. To change the
associated media player at run-time, use the SetMediaPlayer method.

@see SetMediaPlayer]`
- `float32 RateAdjustmentFactor [Factor for calculating the sample rate adjustment.

If dynamic rate adjustment is enabled, this number is multiplied with the drift
between the audio and media clock (in 100ns ticks) to determine the adjustment.
that is to be multiplied into the current playrate.]`
- `FFloatRange RateAdjustmentRange [The allowed range of dynamic rate adjustment.

If dynamic rate adjustment is enabled, and the necessary adjustment
falls outside of this range, audio samples will be dropped.]`


**方法**:

- `bool GetAttenuationSettingsToApply(FSoundAttenuationSettings& OutAttenuationSettings)`  
  Get the attenuation settings based on the current component settings.

@param OutAttenuationSettings Will contain the attenuation settings, if available.
@return true if attenuation settings were returned, false if attenuation is disabled.
- `float32 GetEnvelopeValue() const`  
  Retrieves the current amplitude envelope.
- `UMediaPlayer GetMediaPlayer() const`  
  Get the media player that provides the audio samples.

@return The component's media player, or nullptr if not set.
@see SetMediaPlayer
- `TArray<FMediaSoundComponentSpectralData> GetNormalizedSpectralData()`  
  Retrieves and normalizes the spectral data if spectral analysis is enabled.
- `TArray<FMediaSoundComponentSpectralData> GetSpectralData()`  
  Retrieves the spectral data if spectral analysis is enabled.
- `SetEnableEnvelopeFollowing(bool bInEnvelopeFollowing)`  
  Turns on amplitude envelope following the audio in the media sound component.
- `SetEnableSpectralAnalysis(bool bInSpectralAnalysisEnabled)`  
  Turns on spectral analysis of the audio generated in the media sound component.
- `SetEnvelopeFollowingsettings(int AttackTimeMsec, int ReleaseTimeMsec)`  
  Sets the envelope attack and release times (in ms).
- `SetMediaPlayer(UMediaPlayer NewMediaPlayer)`  
  Set the media player that provides the audio samples.

@param NewMediaPlayer The player to set.
@see GetMediaPlayer
- `SetSpectralAnalysisSettings(TArray<float32> InFrequenciesToAnalyze, EMediaSoundComponentFFTSize InFFTSize = EMediaSoundComponentFFTSize :: Medium_512)`  
  Sets the settings to use for spectral analysis.

---

