### UResonanceAudioReverbPluginPreset


**属性**:

- `FResonanceAudioReverbPluginSettings Settings []`


**方法**:

- `SetEnableRoomEffects(bool bInEnableRoomEffects)`  
  Enables/disables Resonance Audio room effects
- `SetReflectionScalar(float32 InReflectionScalar)`  
  Sets early reflections gain multiplier
- `SetReverbBrightness(float32 InReverbBrightness)`  
  Increases high frequency reverberation times when positive, decreases when negative.
Has no effect when set to 0.0
- `SetReverbGain(float32 InReverbGain)`  
  Sets reverb gain multiplier
- `SetReverbTimeModifier(float32 InReverbTimeModifier)`  
  Adjusts the reverberation time across all frequency bands by multiplying the computed values by this factor.
Has no effect when set to 1.0
- `SetRoomDimensions(FVector InDimensions)`  
  Sets room dimensions in 3D space
- `SetRoomMaterials(TArray<ERaMaterialName> InMaterials)`  
  Sets Resonance Audio room's acoustic materials
- `SetRoomPosition(FVector InPosition)`  
  Sets room position in 3D space
- `SetRoomRotation(FQuat InRotation)`  
  Sets room rotation in 3D space

---

