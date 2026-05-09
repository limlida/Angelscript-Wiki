### FGameplayCueNotify_BurstEffects


FGameplayCueNotify_BurstEffects

    Set of effects to spawn for a single event, used by all gameplay cue notify types.

**属性**:

- `FGameplayCueNotify_CameraLensEffectInfo BurstCameraLensEffect [Camera lens effect to be played on gameplay cue execution.  This should never use a looping effect!]`
- `FGameplayCueNotify_CameraShakeInfo BurstCameraShake [Camera shake to be played on gameplay cue execution.  This should never use a looping effect!]`
- `FGameplayCueNotify_DecalInfo BurstDecal [Decal to be spawned on gameplay cue execution.  Actor should have fade out time or override should be set so it will clean up properly.]`
- `FGameplayCueNotify_InputDevicePropertyInfo BurstDevicePropertyEffect [Input device properties to be applied on gameplay cue execution]`
- `FGameplayCueNotify_ForceFeedbackInfo BurstForceFeedback [Force feedback to be played on gameplay cue execution.  This should never use a looping effect!]`
- `TArray<FGameplayCueNotify_ParticleInfo> BurstParticles [Particle systems to be spawned on gameplay cue execution.  These should never use looping effects!]`
- `TArray<FGameplayCueNotify_SoundInfo> BurstSounds [Sound to be played on gameplay cue execution.  These should never use looping effects!]`


**方法**:

- `FGameplayCueNotify_BurstEffects& opAssign(FGameplayCueNotify_BurstEffects Other)`

---

