### AEmitterCameraLensEffectBase


**属性**:

- `float32 BaseFOV [This is the assumed FOV for which the effect was authored. The code will make automatic adjustments to make it look the same at different FOVs]`
- `TArray<TSubclassOf<AActor>> EmittersToTreatAsSame [If an emitter class in this array is currently playing, do not play this effect.
Useful for preventing multiple similar or expensive camera effects from playing simultaneously.]`
- `UParticleSystem PS_CameraEffect [Particle System to use]`
- `FTransform RelativeTransform [Effect-to-camera transform to allow arbitrary placement of the particle system .
Note the X component of the location will be scaled with camera fov to keep the lens effect the same apparent size.]`
- `bool bAllowMultipleInstances [true if multiple instances of this emitter can exist simultaneously, false otherwise.]`
- `bool bResetWhenRetriggered [If bAllowMultipleInstances is true and this effect is retriggered, the particle system will be reset if this is true]`

---

