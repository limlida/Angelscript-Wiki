### FSoundConcurrencySettings


**属性**:

- `int MaxCount [The max number of allowable concurrent active voices for voices playing in this concurrency group.
Can be mutated at runtime via Blueprint or code (see "Enable MaxCount Platform Scaling" for disablement
of runtime manipulation, which in turn allows for platform scaling of the given value).]`
- `FPerPlatformInt PlatformMaxCount [The max number of allowable concurrent active voices for voices playing in this concurrency group.
Scalable per platform or platform group. Cannot be mutated at runtime (Disable "Enable MaxCount Platform
Scaling" for enablement of MaxCount runtime manipulation).]`
- `EMaxConcurrentResolutionRule ResolutionRule [Which concurrency resolution policy to use if max voice count is reached.]`
- `float32 RetriggerTime [Amount of time to wait (in seconds) between different sounds which play with this concurrency. Sounds rejected from this will ignore virtualization settings.]`
- `float32 VoiceStealReleaseTime [Time taken to fade out if voice is evicted or culled due to another voice in the group starting.]`
- `float32 VolumeScale [Ducking factor to apply per older voice instance (generation), which compounds based on scaling mode
and (optionally) revives them as they stop according to the provided attack/release times.

Note: This is not applied until after StopQuietest rules are evaluated, in order to avoid thrashing sounds.

AppliedVolumeScale = Math.Pow(DuckingScale, VoiceGeneration)]`
- `float32 VolumeScaleAttackTime [Time taken to apply duck using volume scalar.]`
- `EConcurrencyVolumeScaleMode VolumeScaleMode [Volume Scale mode designating how to scale voice volume based on number of member sounds active in group.]`
- `float32 VolumeScaleReleaseTime [Time taken to recover volume scalar duck (default scale mode only).]`
- `bool bEnableMaxCountPlatformScaling [If true, MaxCount supports platform scaling, but cannot be dynamically changed at runtime (ex. from Blueprint or Gameplay Code).  If false, MaxCount is dynamically assignable at runtime, but is not platform scalable.]`
- `bool bLimitToOwner [Whether or not to limit the concurrency to per sound owner (i.e. the actor that plays the sound). If the sound doesn't have an owner, it falls back to global concurrency.]`
- `bool bVolumeScaleCanRelease [Whether or not volume scaling can recover volume ducking behavior when concurrency group sounds stop (default scale mode only).]`


**方法**:

- `FSoundConcurrencySettings& opAssign(FSoundConcurrencySettings Other)`

---

