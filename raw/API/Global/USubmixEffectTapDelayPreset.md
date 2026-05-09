### USubmixEffectTapDelayPreset


UTapDelaySubmixPreset
Class which processes audio streams and uses parameters defined in the preset class.

**属性**:

- `FSubmixEffectTapDelaySettings Settings`


**方法**:

- `AddTap(int& TapId)`  
  Adds a dynamic tap delay with the given settings. Returns the tap id.
- `float32 GetMaxDelayInMilliseconds()`  
  Get the maximum delay possible.
- `GetTap(int TapId, FTapDelayInfo& TapInfo)`  
  Get the current info about a specific tap.
- `GetTapIds(TArray<int>& TapIds)`  
  Retrieve an array of all tap ids for the submix effect.
- `RemoveTap(int TapId)`  
  Remove the tap from the preset.
- `SetInterpolationTime(float32 Time)`  
  Set the time it takes to interpolate between parameters, in milliseconds.
- `SetSettings(FSubmixEffectTapDelaySettings InSettings)`  
  Set all tap delay setting. This will replace any dynamically added or modified taps.
- `SetTap(int TapId, FTapDelayInfo TapInfo)`  
  Modify a specific tap.

---

