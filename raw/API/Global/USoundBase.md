### USoundBase


The base class for a playable sound object

**属性**:

- `TArray<TObjectPtr<UAssetUserData>> AssetUserData [Array of user data stored with the asset]`
- `USoundAttenuation AttenuationSettings [Attenuation settings package for the sound]`
- `UAudioPropertiesSheetAssetBase AudioPropertiesSheet []`
- `TArray<FSoundSourceBusSendInfo> BusSends [This sound will send its audio output to this list of buses if there are bus instances playing after source effects are processed.]`
- `FSoundConcurrencySettings ConcurrencyOverrides [If Override Concurrency is true, concurrency settings to use.]`
- `TSet<TObjectPtr<USoundConcurrency>> ConcurrencySet [Set of concurrency settings to observe (if override is set to false).  Sound must pass all concurrency settings to play.]`
- `float32 Duration [Duration of sound in seconds.]`
- `FSoundBaseEditorData EditorData [Supplement the USoundBase with a list of transient editor-only properties]`
- `float32 MaxDistance [The MaxDistance property is calculated statically on load or at asset edit time, but is not reliable at runtime.
the GetMaxDistance function should be used to determine the applied max distance based on runtime behavior.]`
- `TArray<FSoundSourceBusSendInfo> PreEffectBusSends [This sound will send its audio output to this list of buses if there are bus instances playing before source effects are processed.]`
- `float32 Priority [Used to determine whether sound can play or remain active if channel limit is met, where higher value is higher priority
(see platform's Audio Settings 'Max Channels' property). Unless bypassed, value is weighted with the final volume of the
sound to produce final runtime priority value.]`
- `USoundClass SoundClassObject [Sound class this sound belongs to]`
- `USoundSubmixBase SoundSubmixObject [Submix to route sound output to. If unset, falls back to referenced SoundClass submix.
If SoundClass submix is unset, sends to the 'Master Submix' as set in the 'Audio' category of Project Settings'.]`
- `TArray<FSoundSubmixSendInfo> SoundSubmixSends [Array of submix sends to which a prescribed amount (see 'Send Level') of this sound is sent.]`
- `USoundEffectSourcePresetChain SourceEffectChain [The source effect chain to use for this sound.]`
- `float32 TotalSamples [Total number of samples (in the thousands). Useful as a metric to analyze the relative size of a given sound asset in content browser.]`
- `EVirtualizationMode VirtualizationMode [Virtualization behavior, determining if a sound may revive and how it continues playing when culled or evicted (limited to looping sounds).]`
- `bool bBypassVolumeScaleForPriority [Bypass volume weighting priority upon evaluating whether sound should remain active when max channel count is met (See platform Audio Settings).]`
- `bool bDebug [When "au.3dVisualize.Attenuation" has been specified, draw this sound's attenuation shape when the sound is audible. For debugging purposes only.]`
- `bool bEnableBaseSubmix [If enabled, sound will route to the Master Submix by default or to the Base Submix if defined. If disabled, sound will route ONLY to the Submix Sends and/or Bus Sends]`
- `bool bEnableBusSends [Whether or not to enable sending this audio's output to buses.]`
- `bool bEnableSubmixSends [Whether or not to enable Submix Sends other than the Base Submix.]`
- `bool bOverrideConcurrency [Whether or not to override the sound concurrency object with local concurrency settings.]`

---

