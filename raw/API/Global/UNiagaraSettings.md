### UNiagaraSettings


**属性**:

- `TArray<FSoftObjectPath> AdditionalParameterEnums []`
- `TArray<FSoftObjectPath> AdditionalParameterTypes []`
- `TArray<FSoftObjectPath> AdditionalPayloadTypes []`
- `ENiagaraStripScriptByteCodeOption ByteCodeStripOption [Controls how byte code will be stripped when loading assets that have multiple sets of bytecode (i.e. optimized).]`
- `ENiagaraCompilationMode CompilationMode []`
- `TMap<FString,FText> ComponentRendererWarningsPerClass [Info texts that the component renderer shows the user depending on the selected component class.]`
- `FSoftObjectPath DefaultEffectType [Default effect type to use for effects that don't define their own. Can be null.]`
- `ENiagaraDefaultGpuTranslucentLatency DefaultGpuTranslucentLatency [The default setting for Gpu simulation translucent draw latency.]`
- `ENiagaraGpuBufferFormat DefaultGridFormat [The default buffer format used by all Niagara Grid Data Interfaces unless overridden.]`
- `float32 DefaultLightInverseExposureBlend [The default InverseExposureBlend used for the light renderer.]`
- `ENiagaraDefaultRendererPixelCoverageMode DefaultPixelCoverageMode [The default setting for pixel coverage mode when automatic is set on the Niagara Renderer.]`
- `ETextureRenderTargetFormat DefaultRenderTargetFormat [The default render target format used by all Niagara Render Target Data Interfaces unless overridden.]`
- `ENiagaraDefaultRendererMotionVectorSetting DefaultRendererMotionVectorSetting [The default setting for motion vectors in Niagara renderers]`
- `ENiagaraDefaultSortPrecision DefaultSortPrecision [The default setting for sorting precision when automatic is set on the Niagara Renderer.]`
- `ENiagaraCompileErrorSeverity InvalidNamespaceWriteSeverity [If the Niagara compiler sees that a script writes to a namespace that is read only (e.g. a particle script writing to a system attribute), what should it do.]`
- `uint LargeWorldCoordinateMaxTilesBeforeReset [The maximum tiles we can cross before forcing a simulation to reset, if the tile update mode is set to RebaseOrResetSimulation.]`
- `ENiagaraLwcTileUpdateMode LargeWorldCoordinateTileUpdateMode [Controls how we respond to a system instance crossing large world coordinate tiles. Can be overriden on individual assets.]`
- `float32 MaxDeltaTimePerTick [Limits the delta time per tick for emitters to prevent simulation spikes due to frame lags.]`
- `TArray<ENDICollisionQuery_AsyncGpuTraceProvider> NDICollisionQuery_AsyncGpuTraceProviderOrder [Defines how traces tagged as 'Project Default' will be interpreted when using the AsyncGpuTrace data interface.
The system will go through (starting at element 0) to find the first provider that is available.]`
- `ENDISkelMesh_AdjacencyTriangleIndexFormat NDISkelMesh_AdjacencyTriangleIndexFormat [Controls the format used for specifying triangle indexes in adjacency buffers.  Changing this setting requires restarting the editor.]`
- `ENDISkelMesh_GpuMaxInfluences NDISkelMesh_GpuMaxInfluences [Controls the maximum number of influences we allow the Skeletal Mesh Data Interface to use on the GPU.  Changing this setting requires restarting the editor.]`
- `ENDISkelMesh_GpuUniformSamplingFormat NDISkelMesh_GpuUniformSamplingFormat [Controls the format used for uniform sampling on the GPU.  Changing this setting requires restarting the editor.]`
- `bool NDISkelMesh_Support16BitIndexWeight [Enabled support for 16 bit bone index & bone weight, optional to reduce shader complexity.  Changing this setting requires restarting the editor.]`
- `bool NDISkelMesh_SupportReadingDeformedGeometry [When enabled we will read deformed geometry if available, i.e. data from the deformed graph / skin cache
When disable we will only read from the default vertex data which does not include morph targets, skin, etc.
Changing this setting requires restarting the editor.
Note: Enabling this does add additional branches to the skel mesh data reading.]`
- `bool NDIStaticMesh_AllowDistanceFields [When enabled the static mesh data interface is allowed to sample from the distance field data (if present) on the GPU.
Enabling this feature will move all systems that contain static mesh samples into PostRenderOpaque tick group regardless of the features used.
Changing this setting requires restarting the editor.]`
- `TArray<FNiagaraPlatformSetRedirect> PlatformSetRedirects []`
- `FLinearColor PositionPinTypeColor [Position pin type color. The other pin colors are defined in the general editor settings.]`
- `TArray<FText> QualityLevels [The quality levels Niagara uses.]`
- `int QuickSimCacheCaptureFrameCount [The number of frames to capture when capturing a Sim Cache from the Niagara Component Details Panel. *]`
- `FString SimCacheAuxiliaryFileBasePath [Base path for auxiliary files written out during the generation of a Niagara Sim Cache (ie: volume files).]`
- `int64 SimCacheMaxCPUMemoryVolumetrics [Max memory in megabytes for total CPU memory for cached volumetric data]`
- `bool bAccurateQuatInterpolation [If set to true, quaternion attributes will be interpolated via slerp instead of lerp in interpolated spawn scripts.]`
- `bool bAllowCreateActorFromSystemWithNoEffectType [Should we allow placing a Niagara System in the editor into a level which has no effect type assigned?]`
- `bool bEnableHLSL2021 [Enable HLSL 2021 compilation flag.
Note: Only GPU simulations on some platforms will work with HLSL 2021.]`
- `bool bEnforceStrictStackTypes [If set to true, types like positions and vectors cannot be assigned to each other without an explicit conversion step.
If false, type checks are loosened and some types can be implicitly converted into each other.
It is recommended to not disable this when working with large world coordinates.]`
- `bool bGenerateMetaDataOnCompile []`
- `bool bLimitDeltaTime [Whether to limit the max tick delta time or not.]`
- `bool bShowConvertibleInputsInStack [If true then the "link input" menu will also show variables of different types, as long as there is a conversion script for them.]`
- `bool bSystemViewportInOrbitMode [Sets the default navigation behavior for the system preview viewport.]`
- `bool bSystemsSupportLargeWorldCoordinates [If true then active effects rebase the simulation positions to not lose precision. Can be turned off if not needed to skip unnecessary rebasing calculations.]`

---

