### UParticleSystem


A ParticleSystem is a complete particle effect that contains any number of ParticleEmitters. By allowing multiple emitters
in a system, the designer can create elaborate particle effects that are held in a single system. Once created using
Cascade, a ParticleSystem can then be inserted into a level or created in script.

**属性**:

- `FBox CustomOcclusionBounds [The occlusion bounds to use if OcclusionBoundsMethod is set to EPSOBM_CustomBounds]`
- `float32 Delay [How long this Particle system should delay when ActivateSystem is called on it.]`
- `float32 DelayLow [The low end of the emitter delay if using a range.]`
- `FBox FixedRelativeBoundingBox [Fixed relative bounding box for particle system.]`
- `float32 InsignificanceDelay [Time delay between all emitters becoming insignificant and the systems insignificant reaction.]`
- `EParticleSystemInsignificanceReaction InsignificantReaction [The reaction this system takes when all emitters are insignificant.]`
- `float32 LODDistanceCheckTime [How often (in seconds) the system should perform the LOD distance check.]`
- `TArray<float32> LODDistances [The array of distances for each LOD level in the system.
Used when LODMethod is set to PARTICLESYSTEMLODMETHOD_Automatic.

Example: System with 3 LOD levels
        LODDistances(0) = 0.0
        LODDistances(1) = 2500.0
        LODDistances(2) = 5000.0

        In this case, when the system is [   0.0 ..   2499.9] from the camera, LOD level 0 will be used.
                                                                         [2500.0 ..   4999.9] from the camera, LOD level 1 will be used.
                                                                         [5000.0 .. INFINITY] from the camera, LOD level 2 will be used.]`
- `ParticleSystemLODMethod LODMethod [The method of LOD level determination to utilize for this particle system
  PARTICLESYSTEMLODMETHOD_Automatic - Automatically set the LOD level, checking every LODDistanceCheckTime seconds.
PARTICLESYSTEMLODMETHOD_DirectSet - LOD level is directly set by the game code.
PARTICLESYSTEMLODMETHOD_ActivateAutomatic - LOD level is determined at Activation time, then left alone unless directly set by game code.]`
- `FVector MacroUVPosition [Local space position that UVs generated with the ParticleMacroUV material node will be centered on.]`
- `float32 MacroUVRadius [World space radius that UVs generated with the ParticleMacroUV material node will tile based on.]`
- `EParticleSignificanceLevel MaxSignificanceLevel [The maximum level of significance for emitters in this system. Any emitters with a higher significance will be capped at this significance level.]`
- `uint MinTimeBetweenTicks [Minimum duration between ticks; 33=tick at max. 30FPS, 16=60FPS, 8=120FPS]`
- `TArray<FNamedEmitterMaterial> NamedMaterialSlots [Array of named material slots for use by emitters of this system.
Emitters can use these instead of their own materials by providing the name to the NamedMaterialOverrides property of their required module.
These materials can be overridden using CreateNamedDynamicMaterialInstance() on a ParticleSystemComponent.]`
- `EParticleSystemOcclusionBoundsMethod OcclusionBoundsMethod [Which occlusion bounds method to use for this particle system.
EPSOBM_None - Don't determine occlusion for this system.
EPSOBM_ParticleBounds - Use the bounds of the component when determining occlusion.]`
- `float32 SecondsBeforeInactive [Number of seconds of emitter not being rendered that need to pass before it
no longer gets ticked/ becomes inactive.]`
- `EParticleSystemUpdateMode SystemUpdateMode []`
- `float32 ThumbnailWarmup [The time to warm-up the system for the thumbnail image]`
- `float32 UpdateTime_FPS [UpdateTime_FPS - the frame per second to update at in FixedTime mode]`
- `float32 WarmupTickRate [WarmupTickRate - the time step for each tick during warm up.
       Increasing this improves performance. Decreasing, improves accuracy.
       Set to 0 to use the default tick time.]`
- `float32 WarmupTime [WarmupTime - the time to warm-up the particle system when first rendered
Warning: WarmupTime is implemented by simulating the particle system for the time requested upon activation.
This is extremely prone to cause hitches, especially with large particle counts - use with caution.]`
- `bool bAllowManagedTicking [Whether or not to allow instances of this system to have their ticks managed.]`
- `bool bAutoDeactivate [Auto-deactivate system if all emitters are determined to not spawn particles again, regardless of lifetime.]`
- `bool bOrientZAxisTowardCamera [If true, the system's Z axis will be oriented toward the camera]`
- `bool bUseDelayRange [If true, select the emitter delay from the range
        [DelayLow..Delay]]`
- `bool bUseFixedRelativeBoundingBox [Whether to use the fixed relative bounding box or calculate it every frame.]`
- `bool bUseRealtimeThumbnail [Inidicates the old 'real-time' thumbnail rendering should be used]`


**方法**:

- `bool ContainsEmitterType(UClass TypeData)`  
  Returns true if this system contains an emitter of the pasesd type.
@ param TypeData - The emitter type to check for. Must be a child class of UParticleModuleTypeDataBase

---

