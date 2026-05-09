### USubmixEffectDelayPreset


USubmixEffectDelayPreset
Class which processes audio streams and uses parameters defined in the preset class.

**属性**:

- `FSubmixEffectDelaySettings Settings`


**方法**:

- `float32 GetMaxDelayInMilliseconds() const`  
  Get the maximum delay possible.
- `SetDefaultSettings(FSubmixEffectDelaySettings InSettings)`  
  Sets object's default settings. This will update both the default UObject settings (and mark it as dirty),
as well as any dynamically set settings.
- `SetDelay(float32 Length)`  
  Set how long the delay actually is, in milliseconds.
- `SetInterpolationTime(float32 Time)`  
  Set the time it takes to interpolate between parameters, in milliseconds.
- `SetSettings(FSubmixEffectDelaySettings InSettings)`  
  Sets runtime delay settings. This will replace any dynamically added or modified settings without modifying
the original UObject.

---

