### USoundSubmix


Sound Submix class meant for applying an effect to the downmixed sum of multiple audio sources.

**属性**:

- `USoundfieldEncodingSettingsBase AmbisonicsPluginSettings [Optional settings used by plugins which support ambisonics file playback.]`
- `UAudioLinkSettingsAbstract AudioLinkSettings [Optional Audio Link Settings Object]`
- `FSoundModulationDestinationSettings DryLevelModulation [The dry level of the submix in Decibels. Applied before submix effects and analysis are performed.]`
- `int EnvelopeFollowerAttackTime [The attack time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this submix.]`
- `int EnvelopeFollowerReleaseTime [The release time in milliseconds for the envelope follower. Delegate callbacks can be registered to get the envelope value of sounds played with this submix.]`
- `FOnSubmixRecordedFileDone OnSubmixRecordedFileDone [Blueprint delegate for when a recorded file is finished exporting.]`
- `FSoundModulationDestinationSettings OutputVolumeModulation [The output volume of the submix in Decibels. Applied after submix effects and analysis are performed.]`
- `TArray<TObjectPtr<USoundEffectSubmixPreset>> SubmixEffectChain`
- `FSoundModulationDestinationSettings WetLevelModulation [The wet level of the submixin Decibels. Applied after submix effects and analysis are performed.]`
- `bool bMuteWhenBackgrounded [Mute this submix when the application is muted or in the background. Used to prevent submix effect tails from continuing when tabbing out of application or if application is muted.]`
- `bool bSendToAudioLink [Whether to send this Submix to AudioLink (when AudioLink is Enabled)]`


**方法**:

- `AddEnvelopeFollowerDelegate(FOnSubmixEnvelopeBP OnSubmixEnvelopeBP = FOnSubmixEnvelopeBP ( ))`  
  Adds an envelope follower delegate to the submix when envelope following is enabled on this submix.
@param  OnSubmixEnvelopeBP      Event to fire when new envelope data is available.
- `AddSpectralAnalysisDelegate(TArray<FSoundSubmixSpectralAnalysisBandSettings> InBandSettings, FOnSubmixSpectralAnalysisBP OnSubmixSpectralAnalysisBP = FOnSubmixSpectralAnalysisBP ( ), float32 UpdateRate = 10.000000, float32 DecibelNoiseFloor = - 40.000000, bool bDoNormalize = true, bool bDoAutoRange = false, float32 AutoRangeAttackTime = 0.100000, float32 AutoRangeReleaseTime = 60.000000)`  
  Adds a spectral analysis delegate to receive notifications when this submix has spectrum analysis enabled.
@param  InBandsettings                                  The frequency bands to analyze and their envelope-following settings.
@param  OnSubmixSpectralAnalysisBP          Event to fire when new spectral data is available.
@param  UpdateRate                                              How often to retrieve the data from the spectral analyzer and broadcast the event. Max is 30 times per second.
@param  InterpMethod                    Method to used for band peak calculation.
@param  SpectrumType                    Metric to use when returning spectrum values.
@param  DecibelNoiseFloor               Decibel Noise Floor to consider as silence when using a Decibel Spectrum Type.
@param  bDoNormalize                    If true, output band values will be normalized between zero and one.
@param  bDoAutoRange                    If true, output band values will have their ranges automatically adjusted to the minimum and maximum values in the audio. Output band values will be normalized between zero and one.
@param  AutoRangeAttackTime             The time (in seconds) it takes for the range to expand to 90% of a larger range.
@param  AutoRangeReleaseTime            The time (in seconds) it takes for the range to shrink to 90% of a smaller range.
- `RemoveEnvelopeFollowerDelegate(FOnSubmixEnvelopeBP OnSubmixEnvelopeBP = FOnSubmixEnvelopeBP ( ))`  
  Remove an envelope follower delegate.
@param  OnSubmixEnvelopeBP      The event delegate to remove.
- `RemoveSpectralAnalysisDelegate(FOnSubmixSpectralAnalysisBP OnSubmixSpectralAnalysisBP = FOnSubmixSpectralAnalysisBP ( ))`  
  Remove a spectral analysis delegate.
@param  OnSubmixSpectralAnalysisBP          The event delegate to remove.
- `SetSubmixDryLevel(float32 InDryLevel)`  
  Sets the output volume of the submix in linear gain. This dynamic level acts as a multiplier on the DryLevel property of this submix.
- `SetSubmixOutputVolume(float32 InOutputVolume)`  
  Sets the output volume of the submix in linear gain. This dynamic volume acts as a multiplier on the OutputVolume property of this submix.
- `SetSubmixWetLevel(float32 InWetLevel)`  
  Sets the output volume of the submix in linear gain. This dynamic level acts as a multiplier on the WetLevel property of this submix.
- `StartEnvelopeFollowing()`  
  Start envelope following the submix output. Register with OnSubmixEnvelope to receive envelope follower data in BP.
- `StartRecordingOutput(float32 ExpectedDuration)`  
  Start recording the audio from this submix.
- `StartSpectralAnalysis(EFFTSize FFTSize = EFFTSize :: DefaultSize, EFFTPeakInterpolationMethod InterpolationMethod = EFFTPeakInterpolationMethod :: Linear, EFFTWindowType WindowType = EFFTWindowType :: Hann, float32 HopSize = 0.000000, EAudioSpectrumType SpectrumType = EAudioSpectrumType :: MagnitudeSpectrum)`  
  Start spectrum analysis of the audio output.
- `StopEnvelopeFollowing()`  
  Start envelope following the submix output. Register with OnSubmixEnvelope to receive envelope follower data in BP.
- `StopRecordingOutput(EAudioRecordingExportType ExportType, FString Name, FString Path, USoundWave ExistingSoundWaveToOverwrite = nullptr)`  
  Finish recording the audio from this submix and export it as a wav file or a USoundWave.
- `StopSpectralAnalysis()`  
  Stop spectrum analysis of the audio output.

---

