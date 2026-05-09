### FNiagaraDebugHUDSettingsData


Settings for Niagara debug HUD. Contained in it's own struct so that we can pass it whole in a message to the debugger client.

**属性**:

- `FString ActorFilter [Wildcard filter which is compared against the Components Actor name to narrow down the detailed information.
For example, "*Water*" would match all actors that contain the string "water".
Requires a valid SystemFilter to be set.]`
- `FString ComponentFilter [Wildcard filter for the components to show more detailed information about.
For example, "*MyComp*" would match all components that contain MyComp.
Requires a valid SystemFilter to be set.]`
- `ENiagaraDebugHudVerbosity DataInterfaceVerbosity [When enabled allows data interfaces to include additional debugging information.]`
- `FLinearColor DefaultBackgroundColor [Default background color used generally for panels]`
- `FString EmitterFilter [Wildcard filter used to match emitters when generating particle attribute view.
For example,. "Fluid*" would match all emitters starting with Fluid and only particle attributes for those would be visible.
Requires a valid SystemFilter to be set.]`
- `FLinearColor InWorldErrorTextColor [In world text if an error is detected]`
- `FLinearColor InWorldTextColor [In world text color]`
- `int MaxParticlesToDisplay [When enabled, the maximum number of particles to show information about.
When disabled all particles will show attributes, this can result in poor performance & potential OOM on some platforms.]`
- `FLinearColor MessageErrorTextColor [Message display error text color]`
- `FLinearColor MessageInfoTextColor [Message display text color]`
- `FLinearColor MessageWarningTextColor [Message display warning text color]`
- `FLinearColor OverviewDetailColor [Overview detail text color]`
- `FLinearColor OverviewDetailHighlightColor [Overview detail highlight text color]`
- `ENiagaraDebugHudFont OverviewFont [Overview display font to use.]`
- `FLinearColor OverviewHeadingColor [Overview heading text color]`
- `FVector2D OverviewLocation [Overview display location.]`
- `ENiagaraDebugHUDOverviewMode OverviewMode []`
- `ENiagaraDebugHUDDOverviewSort OverviewSortMode [How to sort the displayed list of systems]`
- `float32 ParticleDisplayCenterRadius [Radius from screen center where 0 is center to 1.0 is edge to avoid display too many particle attributes.]`
- `FVector2D ParticleDisplayClip [Clipping planes used to display particle attributes.]`
- `FNiagaraDebugHudTextOptions ParticleTextOptions [Sets display text options for particle information.]`
- `TArray<FNiagaraDebugHUDVariable> ParticlesVariables [List of attributes to show per particle, each entry uses wildcard matching.
For example, "*Position" would match all attributes that end in Position.]`
- `FLinearColor PerfGraphAxisColor []`
- `ENiagaraDebugHUDPerfGraphMode PerfGraphMode [Time range of the Y Axis of the perf graph]`
- `FVector2D PerfGraphSize [Pixel size of the perf graph.]`
- `float32 PerfGraphTimeRange [Time range of the Y Axis of the perf graph]`
- `int PerfHistoryFrames [How many frames of history to display in the perf graphs.]`
- `int PerfReportFrames [How many frames to capture in between updates to the max and average perf report values.]`
- `ENiagaraDebugHUDPerfSampleMode PerfSampleMode []`
- `ENiagaraDebugHUDPerfUnits PerfUnits []`
- `int SmoothingWidth [Number of samples to use either size of a value when smoothing perf graphs.]`
- `FVector SystemColorHSVMax [Maximum HSV values for the random colors generated for each System.]`
- `FVector SystemColorHSVMin [Minimum HSV values for the random colors generated for each System.]`
- `uint SystemColorSeed [Additional seed value for random system colors. Useful if current colors of systems are too similar.]`
- `float32 SystemColorTableOpacity [Opacity of the system color background tile in overview table rows.]`
- `ENiagaraDebugHudVerbosity SystemDebugVerbosity [When enabled system debug information will be displayed in world.]`
- `ENiagaraDebugHudVerbosity SystemEmitterVerbosity [When enabled we show information about emitter / particle counts.]`
- `FString SystemFilter [Wildcard filter for the systems to show more detailed information about.
For example,. "NS_*" would match all systems starting with NS_.]`
- `FNiagaraDebugHudTextOptions SystemTextOptions [Sets display text options for system information.]`
- `TArray<FNiagaraDebugHUDVariable> SystemVariables [List of attributes to show about the system, each entry uses wildcard matching.
For example, "System.*" would match all system attributes.]`
- `int ValidationAttributeDisplayTruncate [When > 0 this is the maximum number of attributes we will display that contain a NaN,
there could be more but the display will be truncated to this amount.  This is to reduce generating long strings.]`
- `bool bActorFilterEnabled []`
- `bool bComponentFilterEnabled []`
- `bool bEmitterFilterEnabled []`
- `bool bEnableGpuParticleReadback [When enabled GPU particle data will be copied from the GPU to the CPU.
Warning: This has an impact on performance & memory since we copy the whole buffer.
The displayed data is latent since we are seeing what happened a few frames ago.]`
- `bool bIncludeCascade [When enabled the overview display will include cascade FX.]`
- `bool bShowGlobalBudgetInfo []`
- `bool bShowParticleIndex [When enabled the particle index will be displayed along with any attributes.
Note: This is the index in the particle data buffer and not the persistent ID index.]`
- `bool bShowParticleVariables [When enabled will show particle attributes from the list.]`
- `bool bShowParticleVariablesVertical []`
- `bool bShowParticlesVariablesWithSystem [When enabled particle attributes will display with the system information
rather than in world at the particle location. Only enabled if system is set up to display information as well.]`
- `bool bShowPerfColumGameThreadOnly [Adds a column that displays only the GT cost to the perf overview. Only enabled when performance overview mode is active.]`
- `bool bShowRegisteredComponents []`
- `bool bSystemFilterEnabled [If enabled, then only systems matching the filters will be considered by the debug hud]`
- `bool bSystemShowActiveOnlyInWorld [When disabled in world rendering will show systems deactivated by scalability.]`
- `bool bUseMaxParticlesToDisplay []`
- `bool bUseParticleDisplayCenterRadius [When enabled we use a radius from the display center to avoid showing too many particle attributes.]`
- `bool bUseParticleDisplayClip [When enabled we use the clip planes to narrow down which particles to display]`
- `bool bUsePerfGraphTimeRange [Use the specified user range when enabled, otherwise we will auto detect the range to use.]`
- `bool bValidateParticleDataBuffers [When enabled all Niagara systems that pass the filter will have the particle data buffers validation.
i.e. we will look for NaN or other invalidate data  inside it
Note: This will have an impact on performance.]`
- `bool bValidateSystemSimulationDataBuffers [When enabled all Niagara systems that pass the filter will have the simulation data buffers validation.
i.e. we will look for NaN or other invalidate data  inside it
Note: This will have an impact on performance.]`
- `bool bValidationLogErrors [When enabled all validation errors will be sent to the log as warnings.
This can be useful to try and narrow down the exact source of an invalid value in the data buffers as often
they will cascade from the first frame where one is generated into other attributes in the subsequent frames.]`


**方法**:

- `FNiagaraDebugHUDSettingsData& opAssign(FNiagaraDebugHUDSettingsData Other)`

---

