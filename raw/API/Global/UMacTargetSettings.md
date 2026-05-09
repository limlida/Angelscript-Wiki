### UMacTargetSettings


Implements the settings for the Mac target platform.

**属性**:

- `int AudioCallbackBufferFrameSize [The amount of audio to compute each callback block. Lower values decrease latency but may increase CPU cost.]`
- `int AudioMaxChannels [The max number of channels (voices) to limit for this platform. The max channels used will be the minimum of this value and the global audio quality settings. A value of 0 will not apply a platform channel count max.]`
- `int AudioNumBuffersToEnqueue [The number of buffers to keep enqueued. More buffers increases latency, but can compensate for variable compute availability in audio callbacks on some platforms.]`
- `int AudioNumSourceWorkers [The number of workers to use to compute source audio. Will only use up to the max number of sources. Will evenly divide sources to each source worker.]`
- `int AudioSampleRate [Sample rate to run the audio mixer with.]`
- `EMacTargetArchitecture DefaultArchitecture [The architectures to compile non-Editor (games, programs, etc) targets for builds outside of Xcode
This defines which CPU architectures to target: x86_64 (Intel), arm64 (Apple Silicon) or Universal (Intel & Apple Silicon), or Host to match the machine doing the building
Can override with -Architecture= on the UBT commandline, or -GameArchitecture= or -ProgramArchitecture= on the BuildCookRun commandline]`
- `EMacTargetArchitecture EditorDefaultArchitecture [The architecture to compile the Editor target
This defines which CPU architectures to target: x86_64 (Intel), arm64 (Apple Silicon) or Universal (Intel & Apple Silicon), or Host to match the machine doing the building
Can override with -Architecture= on the UBT commandline, or -EditorArchitecture=  on the BuildCookRun commandline]`
- `EMacTargetArchitecture EditorTargetArchitecture [The set of architecture(s) this project supports for Editor builds
This defines which CPU architectures to target: x86_64 (Intel), arm64 (Apple Silicon) or Universal (Intel & Apple Silicon).
It is recommended to use Universal unless you have editor plugins or other libraries that do not support Apple Silicon]`
- `bool EnableMathOptimisations [Whether to use of Metal shader-compiler's -ffast-math optimisations.
Fast-Math performs algebraic-equivalent & reassociative optimisations not permitted by the floating point arithmetic standard (IEEE-754).
These can improve shader performance at some cost to precision and can lead to NaN/INF propagation as they rely on
shader inputs or variables not containing NaN/INF values. By default fast-math is enabled for performance.]`
- `int MetalLanguageVersion [The Metal shader language version which will be used when compiling the shaders.]`
- `FString OcclusionPlugin [Which of the currently enabled occlusion plugins to use.]`
- `FString ReverbPlugin [Which of the currently enabled reverb plugins to use.]`
- `int SoundCueCookQualityIndex [Quality Level to COOK SoundCues at (if set, all other levels will be stripped by the cooker).]`
- `FString SourceDataOverridePlugin [Which of the currently enabled source data override plugins to use.]`
- `FString SpatializationPlugin [Which of the currently enabled spatialization plugins to use.]`
- `EMacTargetArchitecture TargetArchitecture [The target Mac platform CPU architecture.
This defines which CPU architectures to target: x86_64 (Intel), arm64 (Apple Silicon) or Universal (Intel & Apple Silicon).
It is recommended to use Universal unless you have runtime plugins or other libraries that do not support Apple Silicon]`
- `TArray<FString> TargetedRHIs [The collection of RHI's we want to support on this platform.
This is not always the full list of RHI we can support.]`
- `bool UseFastIntrinsics [Whether to use the Metal shading language's "fast" intrinsics.
Fast intrinsics assume that no NaN or INF value will be provided as input,
so are more efficient. However, they will produce undefined results if NaN/INF
is present in the argument/s. By default fast-instrinics are disabled so Metal correctly handles NaN/INF arguments.]`
- `bool bBuildAllSupportedOnBuildMachine [If true, builds running on BuildMachines (when the 'IsBuildMachine' environment variable is set to 1) will compile all Supported architectures]`

---

