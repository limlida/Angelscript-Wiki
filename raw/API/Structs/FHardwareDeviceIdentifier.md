### FHardwareDeviceIdentifier


An identifier that can be used to determine what input devices are available based on the FInputDeviceScope.
These mappings should match a FInputDeviceScope that is used by an IInputDevice

**属性**:

- `FName HardwareDeviceIdentifier [The name of this hardware device.
This should correspond with a FInputDeviceScope that is used by an IInputDevice]`
- `FName InputClassName [The name of the Input Class that uses this hardware device.
This should correspond with a FInputDeviceScope that is used by an IInputDevice]`
- `EHardwareDevicePrimaryType PrimaryDeviceType [The generic type that this hardware identifies as. This can be used to easily determine behaviors]`
- `int SupportedFeaturesMask [Flags that represent this hardware device's traits]`


**方法**:

- `FHardwareDeviceIdentifier& opAssign(FHardwareDeviceIdentifier Other)`

---

