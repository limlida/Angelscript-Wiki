### UWindowsTargetSettings


Implements the settings for the Windows target platform. The first instance of this class is initialized in
WindowsTargetPlatform, really early during the startup sequence before the CDO has been constructed, so its config
settings are read manually from there.

**属性**:

- `int AudioCallbackBufferFrameSize [The amount of audio to compute each callback block. Lower values decrease latency but may increase CPU cost.]`
- `int AudioMaxChannels [The max number of channels (voices) to limit for this platform. The max channels used will be the minimum of this value and the global audio quality settings. A value of 0 will not apply a platform channel count max.]`
- `int AudioNumBuffersToEnqueue [The number of buffers to keep enqueued. More buffers increases latency, but can compensate for variable compute availability in audio callbacks on some platforms.]`
- `int AudioNumSourceWorkers [The number of workers to use to compute source audio. Will only use up to the max number of sources. Will evenly divide sources to each source worker.]`
- `int AudioSampleRate [Sample rate to run the audio mixer with.]`
- `int CacheSizeKB [This determines the max amount of memory that should be used for the cache at any given time. If set low (<= 8 MB), it lowers the size of individual chunks of audio during cook.]`
- `ECompilerVersion Compiler [The compiler version to use for this project. May be different to the chosen IDE.]`
- `FPlatformRuntimeAudioCompressionOverrides CompressionOverrides [Various overrides for how this platform should handle compression and decompression]`
- `float32 CompressionQualityModifier [Scales all compression qualities when cooking to this platform. For example, 0.5 will halve all compression qualities, and 1.0 will leave them unchanged.]`
- `TArray<FString> D3D11TargetedShaderFormats []`
- `TArray<FString> D3D12TargetedShaderFormats []`
- `EDefaultGraphicsRHI DefaultGraphicsRHI [Select which RHI to use. Make sure its also selected as a Targeted RHI. Requires Editor restart.]`
- `float32 HighSampleRate []`
- `float32 LowSampleRate []`
- `int MaxChunkSizeOverrideKB [This overrides the default max chunk size used when chunking audio for stream caching (ignored if < 0)]`
- `float32 MaxSampleRate [Mapping of which sample rates are used for each sample rate quality for a specific platform.]`
- `float32 MedSampleRate []`
- `float32 MinSampleRate []`
- `FString OcclusionPlugin [Which of the currently enabled occlusion plugins to use.]`
- `FString ReverbPlugin [Which of the currently enabled reverb plugins to use.]`
- `int SoundCueCookQualityIndex [Quality Level to COOK SoundCues at (if set, all other levels will be stripped by the cooker).]`
- `FString SourceDataOverridePlugin [Which of the currently enabled source data override plugins to use.]`
- `FString SpatializationPlugin [Which of the currently enabled spatialization plugins to use.]`
- `TArray<FString> VulkanTargetedShaderFormats []`
- `bool bGenerateNaniteFallbackMeshes [Whether to include Nanite Fallback Meshes in cooked builds for Windows. Can be overriden for specific assets in Static Mesh Editor.]`
- `bool bResampleForDevice []`

---

