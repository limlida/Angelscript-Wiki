### FKeyEvent


FKeyEvent describes a key action (keyboard/controller key/button pressed or released.)
It is passed to event handlers dealing with key input.

**方法**:

- `bool IsRepeat() const`
- `bool IsShiftDown() const`
- `bool IsLeftShiftDown() const`
- `bool IsRightShiftDown() const`
- `bool IsControlDown() const`
- `bool IsLeftControlDown() const`
- `bool IsRightControlDown() const`
- `bool IsAltDown() const`
- `bool IsLeftAltDown() const`
- `bool IsRightAltDown() const`
- `bool IsCommandDown() const`
- `bool IsLeftCommandDown() const`
- `bool IsRightCommandDown() const`
- `bool AreCapsLocked() const`
- `uint GetUserIndex() const`
- `FPlatformUserId GetPlatformUserid() const`
- `FInputDeviceId GetInputDeviceId() const`
- `FKey GetKey() const`
- `uint GetCharacter() const`
- `uint GetKeyCode() const`
- `FKeyEvent& opAssign(FKeyEvent Other)`

---

