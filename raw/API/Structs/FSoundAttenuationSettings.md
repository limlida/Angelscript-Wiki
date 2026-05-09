### FSoundAttenuationSettings


The settings for attenuating.

**属性**:

- `EAirAbsorptionMethod AbsorptionMethod [What method to use to map distance values to frequency absorption values.]`
- `EAttenuationShape AttenuationShape [The shape of the non-custom attenuation method.]`
- `FVector AttenuationShapeExtents [The dimensions to use for the attenuation shape. Interpretation of the values differ per shape.
         Sphere  - X is Sphere Radius. Y and Z are unused
         Capsule - X is Capsule Half Height, Y is Capsule Radius, Z is unused
         Box     - X, Y, and Z are the Box's dimensions
         Cone    - X is Cone Radius, Y is Cone Angle, Z is Cone Falloff Angle]`
- `UAudioLinkSettingsAbstract AudioLinkSettingsOverride [AudioLink Setting Overrides]`
- `float32 BinauralRadius [What min radius to use to swap to non-binaural audio when a sound starts playing.]`
- `float32 ConeOffset [The distance back from the sound's origin to begin the cone when using the cone attenuation shape.]`
- `float32 ConeSphereFalloffDistance [The distance over which volume attenuation occurs for the optional sphere shape.]`
- `float32 ConeSphereRadius [An optional attenuation radius (sphere) that extends from the cone origin.]`
- `FRuntimeFloatCurve CustomAttenuationCurve [The custom volume attenuation curve to use. Value clamped at 1.0.]`
- `FRuntimeFloatCurve CustomHighpassAirAbsorptionCurve [The normalized custom curve to use for the air absorption highpass frequency values. Does a mapping from defined distance values (x-axis) and defined frequency values (y-axis)]`
- `FRuntimeFloatCurve CustomLowpassAirAbsorptionCurve [The normalized custom curve to use for the air absorption lowpass frequency values. Does a mapping from defined distance values (x-axis) and defined frequency values (y-axis)]`
- `FRuntimeFloatCurve CustomPriorityAttenuationCurve [The custom curve to use for distance-based priority attenuation.]`
- `FRuntimeFloatCurve CustomReverbSendCurve [The custom reverb send curve to use for distance-based send level. Values clamped between 0.0 and 1.0.]`
- `EAttenuationDistanceModel DistanceAlgorithm [The type of attenuation as a function of distance to use.]`
- `float32 FalloffDistance [The distance over which volume attenuation occurs.]`
- `ENaturalSoundFalloffMode FalloffMode [Whether to continue attenuating, go silent, or hold last volume value when beyond falloff bounds and
'Attenuation At Max (dB)' is set to a value greater than -60dB.
(Only for 'Natural Sound' Distance Algorithm). */]`
- `float32 FocusAttackInterpSpeed [Scalar used to increase interpolation speed upwards to the target Focus value]`
- `float32 FocusAzimuth [Azimuth angle (in degrees) relative to the listener forward vector which defines the focus region of sounds. Sounds playing at an angle less than this will be in focus.]`
- `float32 FocusDistanceScale [Amount to scale the distance calculation of sounds that are in-focus. Can be used to make in-focus sounds appear to be closer or further away than they actually are.]`
- `float32 FocusPriorityScale [Amount to scale the priority of sounds that are in focus. Can be used to boost the priority of sounds that are in focus.]`
- `float32 FocusReleaseInterpSpeed [Scalar used to increase interpolation speed downwards to the target Focus value]`
- `float32 FocusVolumeAttenuation [Amount to attenuate sounds that are in focus. Can be overridden at the sound-level.]`
- `float32 HPFFrequencyAtMax [The range of the cutoff frequency (in Hz) of the highpass absorption filter.]`
- `float32 HPFFrequencyAtMin [The range of the cutoff frequency (in Hz) of the highpass absorption filter.]`
- `float32 LPFFrequencyAtMax [The range of the cutoff frequency (in Hz) of the lowpass absorption filter.]`
- `float32 LPFFrequencyAtMin [The range of the cutoff frequency (in Hz) of the lowpass absorption filter.]`
- `float32 LPFRadiusMax [The max distance range at which to apply an absorption LPF filter. Absorption freq cutoff interpolates between filter frequency ranges between these distance values.]`
- `float32 LPFRadiusMin [The distance min range at which to apply an absorption LPF filter.]`
- `float32 ManualPriorityAttenuation [Static priority scalar to use (doesn't change as a function of distance).]`
- `float32 ManualReverbSendLevel [The manual master reverb send level to use. Doesn't change as a function of distance.]`
- `float32 NonFocusAzimuth [Azimuth angle (in degrees) relative to the listener forward vector which defines the non-focus region of sounds. Sounds playing at an angle greater than this will be out of focus.]`
- `float32 NonFocusDistanceScale [Amount to scale the distance calculation of sounds that are not in-focus. Can be used to make in-focus sounds appear to be closer or further away than they actually are.]`
- `float32 NonFocusPriorityScale [Amount to scale the priority of sounds that are not in-focus. Can be used to reduce the priority of sounds that are not in focus.]`
- `float32 NonFocusVolumeAttenuation [Amount to attenuate sounds that are not in focus. Can be overridden at the sound-level.]`
- `float32 NonSpatializedRadiusEnd [The distance below which a sound is fully non-spatialized (2D). See "Non Spatialized Radius Start" to define the start of the interpolation and the "Non Spatialized Radius Mode" for the mode of the interpolation.]`
- `ENonSpatializedRadiusSpeakerMapMode NonSpatializedRadiusMode [Defines how to interpolate a 3D sound towards a 2D sound when using the non-spatialized radius start and end properties.]`
- `float32 NonSpatializedRadiusStart [The distance below which a sound begins to linearly interpolate towards being non-spatialized (2D). See "Non Spatialized Radius End" to define the end of the interpolation and the "Non Spatialized Radius Mode" for the mode of the interpolation. Note: this does not apply when using a 3rd party binaural plugin (audio will remain spatialized).]`
- `float32 OcclusionInterpolationTime [The amount of time in seconds to interpolate to the target OcclusionLowPassFilterFrequency when a sound is occluded.]`
- `float32 OcclusionLowPassFilterFrequency [The low pass filter frequency (in Hz) to apply if the sound playing in this audio component is occluded. This will override the frequency set in LowPassFilterFrequency. A frequency of 0.0 is the device sample rate and will bypass the filter.]`
- `ECollisionChannel OcclusionTraceChannel [Which trace channel to use for audio occlusion checks.]`
- `float32 OcclusionVolumeAttenuation [The amount of volume attenuation to apply to sounds which are occluded.]`
- `FSoundAttenuationPluginSettings PluginSettings [Sound attenuation plugin settings to use with sounds that play with this attenuation setting.]`
- `float32 PriorityAttenuationDistanceMax [The max distance to attenuate priority.]`
- `float32 PriorityAttenuationDistanceMin [The min distance to attenuate priority.]`
- `float32 PriorityAttenuationMax [Interpolated value to scale priority against when the sound is at the maximum priority attenuation distance from the closest listener.]`
- `EPriorityAttenuationMethod PriorityAttenuationMethod [What method to use to control priority attenuation]`
- `float32 PriorityAttenuationMin [Interpolated value to scale priority against when the sound is at the minimum priority attenuation distance from the closest listener.]`
- `float32 ReverbDistanceMax [The max distance to send to the master reverb.]`
- `float32 ReverbDistanceMin [The min distance to send to the master reverb.]`
- `EReverbSendMethod ReverbSendMethod [What method to use to control master reverb sends]`
- `float32 ReverbWetLevelMax [The amount to send to master reverb when sound is located at a distance equal to value specified in the reverb max send distance.]`
- `float32 ReverbWetLevelMin [The amount to send to master reverb when sound is located at a distance equal to value specified in the reverb min send distance.]`
- `ESoundSpatializationAlgorithm SpatializationAlgorithm [What method we use to spatialize the sound.]`
- `float32 StereoSpread [The world-space distance between left and right stereo channels when stereo assets are 3D spatialized.]`
- `TArray<FAttenuationSubmixSendSettings> SubmixSendSettings [Set of submix send settings to use to send audio to submixes as a function of distance.]`
- `bool bApplyNormalizationToStereoSounds [Enables applying a -6 dB attenuation to stereo assets which are 3d spatialized. Avoids clipping when assets have spread of 0.0 due to channel summing.]`
- `bool bAttenuate [Allows distance-based volume attenuation.]`
- `bool bAttenuateWithLPF [Allows simulation of air absorption by applying a filter with a cutoff frequency as a function of distance.]`
- `bool bEnableFocusInterpolation [Enables focus interpolation to smooth transition in and and of focus.]`
- `bool bEnableListenerFocus [Enable listener focus-based adjustments.]`
- `bool bEnableLogFrequencyScaling [Enables applying a log scale to frequency values (so frequency sweeping is perceptually linear).]`
- `bool bEnableOcclusion [Enables realtime occlusion tracing.]`
- `bool bEnablePriorityAttenuation [Enables attenuation of sound priority based off distance.]`
- `bool bEnableReverbSend [Enables adjusting reverb sends based on distance.]`
- `bool bEnableSendToAudioLink [Enables/Disables AudioLink on all sources using this attenuation]`
- `bool bEnableSourceDataOverride [Enables overriding WaveInstance data using source data override plugin]`
- `bool bEnableSubmixSends [Enables submix sends based on distance.]`
- `bool bSpatialize [Allows the source to be 3D spatialized.]`
- `bool bUseComplexCollisionForOcclusion [Enables tracing against complex collision when doing occlusion traces.]`
- `float32 dBAttenuationAtMax [The attenuation volume at the falloff distance in decibels (Only for 'Natural Sound' Distance Algorithm).]`


**方法**:

- `FSoundAttenuationSettings& opAssign(FSoundAttenuationSettings Other)`

---

