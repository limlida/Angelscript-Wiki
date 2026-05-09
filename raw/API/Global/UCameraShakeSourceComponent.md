### UCameraShakeSourceComponent


**属性**:

- `ECameraShakeAttenuation Attenuation [The attenuation profile for how camera shakes' intensity falls off with distance]`
- `TSubclassOf<UCameraShakeBase> CameraShake [The camera shake class to use for this camera shake source actor]`
- `float32 InnerAttenuationRadius [Under this distance from the source, the camera shakes are at full intensity]`
- `float32 OuterAttenuationRadius [Outside of this distance from the source, the camera shakes don't apply at all]`
- `bool bAutoStart [Whether to auto start when created]`


**方法**:

- `float32 GetAttenuationFactor(FVector Location) const`  
  Computes an attenuation factor from this source
- `Start()`
- `StartCameraShake(TSubclassOf<UCameraShakeBase> InCameraShake, float32 Scale = 1.000000, ECameraShakePlaySpace PlaySpace = ECameraShakePlaySpace :: CameraLocal, FRotator UserPlaySpaceRot = FRotator ( ))`  
  Starts a new camera shake originating from this source, and apply it on all player controllers
- `StopAllCameraShakes(bool bImmediately = true)`  
  Stops all currently active camera shakes that are originating from this source from all player controllers
- `StopAllCameraShakesOfType(TSubclassOf<UCameraShakeBase> InCameraShake, bool bImmediately = true)`  
  Stops a camera shake originating from this source

---

