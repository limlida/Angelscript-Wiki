### USoundCue


The behavior of audio playback is defined within Sound Cues.

**属性**:

- `FSoundAttenuationSettings AttenuationOverrides [Attenuation settings to use if Override Attenuation is set to true]`
- `USoundNode FirstNode []`
- `float32 PitchMultiplier [Base pitch multiplier]`
- `float32 SubtitlePriority [The priority of the subtitle.  Defaults to 10000.  Higher values will play instead of lower values.]`
- `float32 VolumeMultiplier [Base volume multiplier]`
- `bool bExcludeFromRandomNodeBranchCulling [Ignore per-platform random node culling for memory purposes]`
- `bool bOverrideAttenuation [Indicates whether attenuation should use the Attenuation Overrides or the Attenuation Settings asset]`
- `bool bPrimeOnLoad [Makes this sound cue automatically load any sound waves it can play into the cache when it is loaded.]`

---

