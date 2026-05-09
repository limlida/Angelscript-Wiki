### ANiagaraLensEffectBase


Niagara equivalent of AEmitterCameraLensEffectBase.
This class is supported by APlayerCameraManager (via ICameraLensEffectInterface) as a camera lens effect.

**属性**:

- `float32 BaseAuthoredFOV [FOVs that differ from this may cause adjustments in positioning.
This is the FOV which the effect was tested with.]`
- `FTransform DesiredRelativeTransform [Relative offset from the camera (where X is out from the camera)
Might be changed slightly when the FOV is different than expected.]`
- `TArray<TSubclassOf<AActor>> EmittersToTreatAsSame [If an effect class in this array is currently playing, do not play this effect.
Useful for preventing multiple similar or expensive camera effects from playing simultaneously.]`
- `bool bAllowMultipleInstances [Are multiple instances of the effect allowed?
When disabled, a single instance of the effect may be retriggered!]`
- `bool bResetWhenRetriggered [When an instance of this effect is retriggered (because more than one instance is not allowed)
should the particle system be explicitly reset? Activate(bReset = true);]`

---

