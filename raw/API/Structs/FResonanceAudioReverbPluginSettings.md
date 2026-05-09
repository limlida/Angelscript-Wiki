### FResonanceAudioReverbPluginSettings


**属性**:

- `ERaMaterialName BackWallMaterial [Back wall acoustic material]`
- `ERaMaterialName CeilingMaterial [Ceiling acoustic material]`
- `ERaMaterialName FloorMaterial [Floor acoustic material]`
- `ERaMaterialName FrontWallMaterial [Front wall acoustic material]`
- `ERaMaterialName LeftWallMaterial [Left wall acoustic material]`
- `float32 ReflectionScalar [Early reflections gain multiplier. Default: 1.0]`
- `float32 ReverbBrightness [Reverb brightness modifier. Default: 0.0]`
- `float32 ReverbGain [Reverb gain multiplier. Default: 1.0]`
- `float32 ReverbTimeModifier [Reverb time modifier. Default: 1.0]`
- `ERaMaterialName RightWallMaterial [Right wall acoustic material]`
- `FVector RoomDimensions [Room dimensions in 3D space]`
- `FVector RoomPosition [Room position in 3D space]`
- `FQuat RoomRotation [Room rotation in 3D space]`
- `bool bEnableRoomEffects [Whether Resonance Audio room effects are enabled]`
- `bool bGetTransformFromAudioVolume [Whether the room transform should be taken from the Audio Volume this preset is attached to.
If not used with the Audio Volume, last saved values will be used.]`


**方法**:

- `FResonanceAudioReverbPluginSettings& opAssign(FResonanceAudioReverbPluginSettings Other)`

---

