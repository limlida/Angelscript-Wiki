### UColorInputDeviceProperty


Set the color of an Input Device to a static color. This will NOT reset the device color when the property
is done evaluating. You can think of this as a "One Shot" effect, where you set the device property color.

NOTE: This property has platform specific implementations and may behave differently per platform.
See the docs for more details on each platform.

**属性**:

- `FDeviceColorData ColorData [Default color data that will be used by default. Device Specific overrides will be used when the current input device matches]`
- `TMap<FName,FDeviceColorData> DeviceOverrideData [A map of device specific color data. If no overrides are specified, the Default hardware data will be used]`

---

