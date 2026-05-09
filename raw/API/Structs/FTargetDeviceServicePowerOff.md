### FTargetDeviceServicePowerOff


Implements a message for powering on a target device.

**属性**:

- `bool Force [Holds a flag indicating whether the power-off should be enforced.

If powering off is not enforced, if may fail if some running application prevents it.]`
- `FString Operator [Holds the name of the user that wishes to power off the device.]`


**方法**:

- `FTargetDeviceServicePowerOff& opAssign(FTargetDeviceServicePowerOff Other)`

---

