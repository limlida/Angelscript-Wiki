### UWaterSubsystem


This is the API used to get information about water at runtime

**属性**:

- `FOnCameraUnderwaterStateChanged OnCameraUnderwaterStateChanged`
- `FOnWaterScalabilityChanged OnWaterScalabilityChanged`


**方法**:

- `float32 GetCameraUnderwaterDepth() const`
- `float32 GetOceanBaseHeight() const`  
  Returns the base height of the ocean. This should correspond to its world Z position
- `float32 GetOceanFloodHeight() const`  
  Returns the relative flood height
- `float32 GetOceanTotalHeight() const`  
  Returns the total height of the ocean. This should correspond to the base height plus any additional height, like flood for example
- `float32 GetSmoothedWorldTimeSeconds() const`
- `float32 GetWaterTimeSeconds() const`
- `bool IsShallowWaterSimulationEnabled() const`
- `bool IsUnderwaterPostProcessEnabled() const`
- `bool IsWaterRenderingEnabled() const`
- `PrintToWaterLog(FString Message, bool bWarning)`
- `SetOceanFloodHeight(float32 InFloodHeight)`

---

