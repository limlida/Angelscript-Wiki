### ULocalFogVolumeComponent


**属性**:

- `FLinearColor FogAlbedo [Controls the albedo of this fog volume.]`
- `FLinearColor FogEmissive [Controls the emissive color of this fog volume.]`
- `float32 FogPhaseG [Controls the phase `G` parameter, describing the directionality of the scattering within this fog volume.]`
- `int FogSortPriority [The priority can be used as a way to override the sorting by distance. A lower value means the volume will be considered further away, i.e. it will draw behind the one with a higher priority value.]`
- `float32 HeightFogExtinction [The density of the radial fog representing its extinction coefficient at height 0 in the unit sphere. The final look of the volume is determined by combining the "Coverage=1-Transmittance" of both radial and height fog in order to achieve both soft edges and height fog.]`
- `float32 HeightFogFalloff [Controls how the density decreases as height increases. Smaller values make the visible transition larger. 1.0 is the lowest value before visual artifact are visible at the horizon.]`
- `float32 HeightFogOffset [Height offset, relative to the actor Z position.]`
- `float32 RadialFogExtinction [The density of the radial fog representing its extinction coefficient at the center of the sphere. The final look of the volume is determined by combining the "Coverage=1-Transmittance" of both radial and height fog in order to achieve both soft edges and height fog.]`


**方法**:

- `SetFogAlbedo(FLinearColor NewValue)`
- `SetFogEmissive(FLinearColor NewValue)`
- `SetFogPhaseG(float32 NewValue)`
- `SetHeightFogExtinction(float32 NewValue)`
- `SetHeightFogFalloff(float32 NewValue)`
- `SetHeightFogOffset(float32 NewValue)`
- `SetRadialFogExtinction(float32 NewValue)`

---

