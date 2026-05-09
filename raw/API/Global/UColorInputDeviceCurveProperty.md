### UColorInputDeviceCurveProperty


A property that can be used to change the color of an input device's light over time with a curve

NOTE: This property has platform specific implementations and may behave differently per platform.
See the docs for more details on each platform.

**属性**:

- `FDeviceColorCurveData ColorData [Default color data that will be used by default. Device Specific overrides will be used when the current input device matches]`
- `TMap<FName,FDeviceColorCurveData> DeviceOverrideData [A map of device specific color data. If no overrides are specified, the Default hardware data will be used]`

---

