### FAnalogInputEvent


FAnalogEvent describes a analog key value.
It is passed to event handlers dealing with analog keys.

**方法**:

- `float32 GetAnalogValue() const`
- `uint GetUserIndex() const`
- `FPlatformUserId GetPlatformUserid() const`
- `FInputDeviceId GetInputDeviceId() const`
- `FKey GetKey() const`
- `uint GetKeyCode() const`
- `FAnalogInputEvent& opAssign(FAnalogInputEvent Other)`

---

