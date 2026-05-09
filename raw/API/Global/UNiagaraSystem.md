### UNiagaraSystem


A Niagara System contains multiple Niagara Emitters to create various effects.
Niagara Systems can be placed in the world, unlike Emitters, and expose User Parameters to configure an effect at runtime.

**属性**:

- `int CustomDepthStencilValue [When enabled this is the default value set on the component.
Optionally write this 0-255 value to the stencil buffer in CustomDepth pass (Requires project setting or r.CustomDepth == 3)]`
- `ERendererStencilMask CustomDepthStencilWriteMask [When enabled this is the default value set on the component.
Mask used for stencil buffer writes.]`
- `UNiagaraEffectType EffectType [An effect types defines settings shared between systems, for example scalability and validation rules.
Things like environment fx usually have a different effect type than gameplay relevant fx such as weapon impacts.
This way whole classes of effects can be adjusted at once.]`
- `FBox FixedBounds [The fixed bounding box value for the whole system. When placed in the level and the bounding box is not visible to the camera, the effect is culled from rendering.]`
- `float32 FixedTickDeltaTime [If activated, the system ticks with a fixed delta time instead of the varying game thread delta time. This leads to much more stable simulations.
When the fixed tick delta is smaller than the game thread tick time the simulation is substepping by executing multiple ticks per frame.
Note that activating this feature forces the system to tick on the game thread instead of an async task in parallel.

The max number of substeps per frame can be set via fx.Niagara.SystemSimulation.MaxTickSubsteps]`
- `FBox InitialStreamingBounds [Initial streaming bounds are only included when the streaming system asks for the inital bounds,
it is the union of the currently calculated generated bounds and these bounds.
Any future updates to the bounds in the streamer will use the component bounds only and not these bounds.
Setting initial streaming bounds can help in situations where textures do not stream in correctly as the
heuristic to updating the bounds inside the streaming system does not update them at all, or frequently enough.
This is generally an issue with dynamic bounds, if your system has fixed bounds it is unlikely you will need to use this.]`
- `TOptional<ENiagaraLwcTileUpdateMode> LargeWorldCoordinateTileUpdateMode []`
- `TArray<TObjectPtr<UNiagaraParameterCollectionInstance>> ParameterCollectionOverrides []`
- `FNiagaraPlatformSet Platforms []`
- `FSoftObjectPath PreviewMoviePath []`
- `int RandomSeed [Seed used for system script random number generator.]`
- `FNiagaraSystemScalabilityOverrides SystemScalabilityOverrides []`
- `FText TemplateAssetDescription []`
- `float32 TranslucencySortDistanceOffset [When enabled this is the default value set on the component.
Modifies the sort distance for translucent objects, see PrimitiveComponent description for more details.]`
- `int TranslucencySortPriority [When enabled this is the default value set on the component.
Adjusts the translucent object sorting priority, see PrimitiveComponent description for more details.]`
- `int WarmupTickCount [Number of ticks to process for warmup. You can set by this or by time via WarmupTime.]`
- `float32 WarmupTickDelta [Delta time to use for warmup ticks.]`
- `float32 WarmupTime [Warm up time in seconds. Used to calculate WarmupTickCount. Rounds down to the nearest multiple of WarmupTickDelta.]`
- `bool bAllowCullingForLocalPlayersOverride [The override value for bAllowCullingForLocalPlayers from the Effect Type.]`
- `bool bAllowSystemStateFastPath [When enabled if all emitters don't require script execution and the system script is empty / constant we can invoke a faster CPU path.]`
- `bool bBakeOutRapidIteration [When enable constant values are baked into the scripts while editing the system, this will increase iteration times but improve performance.]`
- `bool bBakeOutRapidIterationOnCook [When enabled constant values are baked into scripts to improve performance.]`
- `bool bCastShadow [When enabled this is the default value set on the component.
Controls whether the primitive component should cast a shadow or not.]`
- `bool bCompressAttributes [Toggles whether or not emitters within this system will try and compress their particle attributes.
      In some cases, this precision change can lead to perceivable differences, but memory costs and or performance (especially true for GPU emitters) can improve.]`
- `bool bDeterminism [When disabled we will generate a RandomSeed per instance on reset which is not deterministic.
When enabled we will always use the RandomSeed from the system plus the components RandomSeedOffset, this allows for determinism but variance between components.]`
- `bool bDisableDebugSwitches [When enable debug switches are disabled while editing the system.]`
- `bool bDisableDebugSwitchesOnCook [When enabled debug switches are disabled when compiling the system.]`
- `bool bDumpDebugEmitterInfo`
- `bool bDumpDebugSystemInfo`
- `bool bFixedBounds [Whether or not fixed bounds are enabled.]`
- `bool bFixedTickDelta []`
- `bool bIgnoreParticleReadsForAttributeTrim [If true ParticleReads will not absolutely prevent attribute trimming - User must ensure that the appropriate attributes are preserved on the source emitter!]`
- `bool bInitialOwnerVelocityFromActor [When enabled we use the owner actor's velocity for the first frame.
If we do not have an owner actor, or this is disable then the first frame's velocity will be zero.]`
- `bool bOverrideAllowCullingForLocalPlayers [Controls whether we should override the Effect Type value for bAllowCullingForLocalPlayers.]`
- `bool bOverrideCastShadow [Various optional overrides for component properties when spawning a system]`
- `bool bOverrideCustomDepthStencilValue`
- `bool bOverrideCustomDepthStencilWriteMask`
- `bool bOverrideReceivesDecals`
- `bool bOverrideRenderCustomDepth`
- `bool bOverrideScalabilitySettings`
- `bool bOverrideTranslucencySortDistanceOffset`
- `bool bOverrideTranslucencySortPriority`
- `bool bReceivesDecals [When enabled this is the default value set on the component.
Whether the primitive receives decals.]`
- `bool bRenderCustomDepth [When enabled this is the default value set on the component.
This primitive has bRenderCustomDepth enabled.]`
- `bool bRequireCurrentFrameData [When enabled, we follow the settings on the UNiagaraComponent for tick order. When this option is disabled, we ignore any dependencies from data interfaces or other variables and instead fire off the simulation as early in the frame as possible. This greatly
      reduces overhead and allows the game thread to run faster, but comes at a tradeoff if the dependencies might leave gaps or other visual artifacts.]`
- `bool bSupportLargeWorldCoordinates [If true then position type values will be rebased on system activation to fit into a float precision vector. This needs to be turned off when using a custom data interface or renderer that does not support the rebasing.]`
- `bool bTrimAttributes [When enabled we trim particle attributes while editing the system.]`
- `bool bTrimAttributesOnCook [If true Particle attributes will be removed from the DataSet if they are unnecessary (are never read by ParameterMap)]`
- `bool bUseInitialStreamingBounds []`

---

