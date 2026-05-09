### FGameplayCueNotify_SoundInfo


FGameplayCueNotify_SoundInfo

    Properties that specify how to play a sound effect.

**属性**:

- `float32 LoopingFadeOutDuration [How long it should take to fade out.  Only used on looping gameplay cues.]`
- `float32 LoopingFadeVolumeLevel [The volume level you want the sound to fade out to over the 'Looping Fade Out Duration' before stopping.
This value is irrelevant if the 'Looping Fade Out Duration' is zero.
NOTE: If the fade out duration is positive and this value is not lower than the volume the sound is playing at, the sound will never stop!]`
- `FGameplayCueNotify_PlacementInfo PlacementInfoOverride [Defines how the sound will be placed.]`
- `USoundBase Sound [Sound to play.]`
- `FGameplayCueNotify_SoundParameterInterfaceInfo SoundParameterInterfaceInfo [Defines how to interface with the sound.]`
- `FGameplayCueNotify_SpawnCondition SpawnConditionOverride [Condition to check before playing the sound.]`
- `bool bOverridePlacementInfo [If enabled, use the placement info override and not the default one.]`
- `bool bOverrideSpawnCondition [If enabled, use the spawn condition override and not the default one.]`
- `bool bUseSoundParameterInterface [If enabled, use the placement info override and not the default one.]`


**方法**:

- `FGameplayCueNotify_SoundInfo& opAssign(FGameplayCueNotify_SoundInfo Other)`

---

