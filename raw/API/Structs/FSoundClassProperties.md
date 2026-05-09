### FSoundClassProperties


**属性**:

- `float32 AttenuationDistanceScale [Scales the distance measurement used by the audio engine when determining distance-based attenuation.
E.g., a sound 1000 units away with an AttenuationDistanceScale of .5 will be attenuated
as if it is 500 units away from the listener.
Allows adjusting attenuation settings dynamically.]`
- `float32 Default2DReverbSendAmount [Send amount to master reverb effect for referencing unattenuated (2D) sounds.]`
- `USoundSubmix DefaultSubmix [Default output submix of referencing sounds. If unset, falls back to the 'Master Submix' as set in the 'Audio' category of Project Settings.
(Unavailable if legacy 'Output to Master EQ Submix' is set)]`
- `float32 LFEBleed [The amount of a sound to bleed to the LFE channel]`
- `ESoundWaveLoadingBehavior LoadingBehavior [Specifies how and when compressed audio data is loaded for asset if stream caching is enabled.]`
- `float32 LowPassFilterFrequency [Lowpass filter cutoff frequency]`
- `FSoundModulationDefaultSettings ModulationSettings [Default modulation settings for sounds directly referencing this class]`
- `EAudioOutputTarget OutputTarget [Which output target the sound should be played through]`
- `float32 Pitch [Pitch multiplier.]`
- `float32 RadioFilterVolume [Volume of the radio filter effect.]`
- `float32 RadioFilterVolumeThreshold [Volume at which the radio filter kicks in]`
- `FPerPlatformFloat SizeOfFirstAudioChunkInSeconds [How much audio to add to First Audio Chunk (in seconds)]`
- `float32 VoiceCenterChannelVolume [The amount to send to center channel (does not propagate to child classes)]`
- `float32 Volume [Volume multiplier.]`
- `bool bAlwaysPlay [Whether to inflate referencing sound's priority to always play.]`
- `bool bApplyAmbientVolumes [Whether the Interior/Exterior volume and LPF modifiers should be applied]`
- `bool bApplyEffects [Whether to use 'Master EQ Submix' as set in the 'Audio' category of Project Settings as the default submix for referencing sounds.]`
- `bool bCenterChannelOnly [Whether or not this sound class forces sounds to the center channel]`
- `bool bIsMusic [Whether or not this is music (propagates to child classes only if parent is true)]`
- `bool bIsUISound [Whether or not this sound plays when the game is paused in the UI]`
- `bool bReverb [Whether or not sounds referencing this class send to the reverb submix]`


**方法**:

- `FSoundClassProperties& opAssign(FSoundClassProperties Other)`

---

