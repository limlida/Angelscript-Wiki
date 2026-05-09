### USoundWave


**属性**:

- `UAssetImportData AssetImportData []`
- `FString Comment [Provides contextual information for the sound to the translator.]`
- `int CompressionQuality [Platform agnostic compression quality. 1..100 with 1 being best compression and 100 being best quality. ADPCM and PCM sound asset compression types ignore this parameter.]`
- `ESoundWaveCuePointOrigin CuePointOrigin [Dictates whether to use the CuePoints and Loop Regions from the .wav file or from the waveform editor
    Marker transformations during playback.]`
- `TArray<FSoundWaveCuePoint> CuePoints [Cue point data parsed from the .wav file. Contains "Loop Regions" as cue points as well!]`
- `UCurveTable Curves [Curves associated with this sound wave]`
- `int EnvelopeFollowerAttackTime [The attack time in milliseconds. Describes how quickly the envelope analyzer responds to increasing amplitudes.]`
- `int EnvelopeFollowerFrameSize [How many audio frames to average a new envelope value. Larger values use less memory for audio envelope data but will result in lower envelope accuracy.]`
- `int EnvelopeFollowerReleaseTime [The release time in milliseconds. Describes how quickly the envelope analyzer responds to decreasing amplitudes.]`
- `int FFTAnalysisAttackTime [Attack time in milliseconds of the spectral envelope follower.]`
- `int FFTAnalysisFrameSize [How many audio frames analyze at a time.]`
- `int FFTAnalysisReleaseTime [Release time in milliseconds of the spectral envelope follower.]`
- `ESoundWaveFFTSize FFTSize [The FFT window size to use for fft analysis.]`
- `TArray<float32> FrequenciesToAnalyze [The frequencies (in hz) to analyze when doing baked FFT analysis.]`
- `ESoundWaveLoadingBehavior LoadingBehavior [Specifies how and when compressed audio data is loaded for asset if stream caching is enabled.]`
- `FSoundModulationDefaultRoutingSettings ModulationSettings [Modulation Settings]`
- `USoundWave OverrideSoundToUseForAnalysis [Specify a sound to use for the baked analysis. Will default to this USoundWave if not set.]`
- `float32 Pitch [Playback rate multiplier for sound, range is 0.125 - 4.0, default is 1.0]`
- `TMap<FGuid,FSoundWaveCloudStreamingPlatformSettings> PlatformSettings [Optionally disables cloud streaming per platform]`
- `ESoundwaveSampleRateSettings SampleRateQuality [Determines the max sample rate to use if the platform enables "Resampling For Device" in project settings.
     For example, if the platform enables Resampling For Device and specifies 32000 for High, then setting High here will
     force the sound wave to be _at most_ 32000. Does nothing if Resampling For Device is disabled.]`
- `FPerPlatformFloat SizeOfFirstAudioChunkInSeconds [How much audio to add to First Audio Chunk (in seconds)]`
- `ESoundAssetCompressionType SoundAssetCompressionType [The compression type to use for the sound wave asset.]`
- `ESoundGroup SoundGroup []`
- `float32 SubtitlePriority [The priority of the subtitle.]`
- `TArray<FSubtitleCue> Subtitles [Subtitle cues.]`
- `TArray<TObjectPtr<UWaveformTransformationBase>> Transformations [Waveform edits to be applied to this SoundWave on cook (editing transformations will trigger a cook)
Transformations is a TArray because changing it to TSet will delete user data]`
- `bool TreatFileAsLoopingForAnalysis [Whether or not we should treat the sound wave used for analysis (this or the override) as looping while performing analysis.
A looping sound may include the end of the file for inclusion in analysis for envelope and FFT analysis.]`
- `float32 Volume [Linear volume multiplier for sound playback, default is 1.0]`
- `bool bEnableAmplitudeEnvelopeAnalysis [Whether or not to enable cook-time amplitude envelope analysis.]`
- `bool bEnableBakedFFTAnalysis [Whether or not to enable cook-time baked FFT analysis.]`
- `bool bEnableCloudStreaming [If enabled, this wave may be streamed from the cloud using the Opus format. Loading behavior must NOT be `Force Inline`. Requires a suitable support plugin to be installed.]`
- `bool bIsAmbisonics [Whether or not this source is ambisonics file format. If set, sound always uses the
'Master Ambisonics Submix' as set in the 'Audio' category of Project Settings'
and ignores submix if provided locally or in the referenced SoundClass.]`
- `bool bLooping [If set, when played directly (not through a sound cue) the wave will be played looping.]`
- `bool bManualWordWrap [If set to true will disable automatic generation of line breaks - use if the subtitles have been split manually.]`
- `bool bMature [If set to true if this sound is considered to contain mature/adult content.]`
- `bool bSingleLine [If set to true the subtitles display as a sequence of single lines as opposed to multiline.]`


**方法**:

- `TArray<FSoundWaveCuePoint> GetCuePoints() const`  
  Filters for the cue points that are _not_ loop regions and returns those as a new array
- `TArray<FSoundWaveCuePoint> GetLoopRegions() const`  
  Filters for the cue points that _are_ loop regions and returns those as a new array
- `ESoundAssetCompressionType GetSoundAssetCompressionType() const`  
  Returns the sound's asset compression type.
- `SetSoundAssetCompressionType(ESoundAssetCompressionType InSoundAssetCompressionType, bool bMarkDirty = true)`  
  Procedurally set the compression type.

---

