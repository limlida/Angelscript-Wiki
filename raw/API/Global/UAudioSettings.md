### UAudioSettings


Audio settings.

**属性**:

- `FSoftObjectPath BaseDefaultSubmix [The default submix to use for implicit submix sends (i.e. if the base submix send is null or if a submix parent is null)]`
- `TArray<FSoundDebugEntry> DebugSounds [Sounds only packaged in non-shipped builds for debugging.]`
- `TArray<FDefaultAudioBusSettings> DefaultAudioBuses [Array of AudioBuses that are automatically initialized when the AudioEngine is initialized]`
- `EDefaultAudioCompressionType DefaultAudioCompressionType [Default audio compression type to use for audio assets.]`
- `FSoftObjectPath DefaultBaseSoundMix [The SoundMix to use as base when no other system has specified a Base SoundMix]`
- `FSoftObjectPath DefaultMediaSoundClassName [The SoundClass assigned to media player assets]`
- `FPerPlatformFloat DefaultOcclusionCheckInterval [The default interval at which to re-test occlusion (in seconds).  Values < 0.f will only check occlusion once.
  NOTE! Will be overridden by sounds coming from an audio component!]`
- `FSoftObjectPath DefaultSoundClassName [The SoundClass assigned to newly created sounds]`
- `FSoftObjectPath DefaultSoundConcurrencyName [The SoundConcurrency assigned to newly created sounds]`
- `FString DialogueFilenameFormat [The format string to use when generating the filename for contexts within dialogue waves. This must generate unique names for your project.
Available format markers:
  * {DialogueGuid} - The GUID of the dialogue wave. Guaranteed to be unique and stable against asset renames.
  * {DialogueHash} - The hash of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue name.
  * {DialogueName} - The name of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue hash.
  * {ContextId}    - The ID of the context. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against changes to the context.
  * {ContextIndex} - The index of the context within its parent dialogue wave. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against contexts being removed.]`
- `FSoftObjectPath EQSubmix [The submix through which all sounds set to use legacy EQ system are routed]`
- `float32 GlobalMaxPitchScale [The value to use to clamp the max pitch scale]`
- `float32 GlobalMinPitchScale [The value to use to clamp the min pitch scale]`
- `FSoftObjectPath MasterSubmix [The default submix through which all sounds are routed to. The root submix that outputs to audio hardware.]`
- `int MaximumConcurrentStreams [How many streaming sounds can be played at the same time (if more are played they will be sorted by priority)]`
- `EMonoChannelUpmixMethod MonoChannelUpmixMethod [The upmixing method for mono sound sources. Defines how mono channels are up-mixed to stereo channels.]`
- `uint NumStoppingSources [The max number of sources to reserve for "stopping" sounds. A "stopping" sound applies a fast fade in the DSP
render to prevent discontinuities when stopping sources.]`
- `EPanningMethod PanningMethod [The method to use when doing non-binaural or object-based panning.]`
- `TArray<FAudioQualitySettings> QualityLevels []`
- `FSoftObjectPath ReverbSubmix [The submix through which all sounds set to use reverb are routed]`
- `EVoiceSampleRate VoiPSampleRate [Sample rate used for voice over IP. VOIP audio is resampled to the application's sample rate on the receiver side.]`
- `FSoftObjectPath VoiPSoundClass [Sound class to be used for the VOIP audio component]`
- `bool bAllowCenterChannel3DPanning [Enables the surround sound spatialization calculations to include the center channel.]`
- `bool bAllowPlayWhenSilent [Allows sounds to play at 0 volume.]`
- `bool bDisableMasterEQ [Disables master EQ effect in the audio DSP graph.]`
- `bool bEnableLegacyAssetTypes [Whether or not project supports the creation of legacy audio asset types. Currently includes:
- USoundSimple]`

---

