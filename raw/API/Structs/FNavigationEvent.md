### FNavigationEvent


FNavigationEvent describes a navigation action (Left, Right, Up, Down)
It is passed to event handlers dealing with navigation.

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
- `EUINavigation GetNavigationType() const`
- `ENavigationGenesis GetNavigationGenesis() const`
- `FNavigationEvent& opAssign(FNavigationEvent Other)`

---

