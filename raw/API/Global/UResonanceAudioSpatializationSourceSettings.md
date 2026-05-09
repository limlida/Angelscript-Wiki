### UResonanceAudioSpatializationSourceSettings


**属性**:

- `float32 MaxDistance [Maximum distance to apply the chosen attenuation method ((default = 50000.0 cm)]`
- `float32 MinDistance [Minimum distance to apply the chosen attenuation method (default = 100.0 cm)]`
- `float32 Pattern [Directivity pattern: 0.0 (omnidirectional), 0.5 (cardioid), 1.0 (figure-of-8)]`
- `ERaDistanceRolloffModel Rolloff [Roll-off model to use for sound source distance attenuation. Select 'None' (default) to use Unreal attenuation settings]`
- `float32 Scale [Scale (for directivity pattern visualization only).]`
- `float32 Sharpness [Sharpness of the directivity pattern. Higher values result in a narrower sound emission beam]`
- `ERaSpatializationMethod SpatializationMethod [Spatialization method to use for sound object(s). NOTE: Has no effect if 'Stereo Panning' global quality mode is selected for the project]`
- `float32 Spread [Spread (width) of the sound source (in degrees). Note: spread control is not available if 'Stereo Panning' global quality mode is enabled for the project and / or 'Stereo Panning' spatialization mode is enabled for the sound source]`
- `bool bToggleVisualization [Whether to visualize directivity pattern in the viewport.]`


**方法**:

- `SetSoundSourceDirectivity(float32 InPattern, float32 InSharpness)`  
  Sets the sound source directivity, applies, and updates
- `SetSoundSourceSpread(float32 InSpread)`  
  Sets the sound source spread (width), applies, and updates

---

