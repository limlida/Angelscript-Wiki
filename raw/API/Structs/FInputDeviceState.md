### FInputDeviceState


Current state of physical input devices at a point in time.
Assumption is that the state refers to a single physical input device,
ie InputDevice field is a single value of EInputDevices and not a combination.

**属性**:

- `EInputDevices InputDevice [Which InputDevice member is valid in this state]`
- `FKeyboardInputDeviceState Keyboard [Current state of Keyboard device, if InputDevice == EInputDevices::Keyboard]`
- `FMouseInputDeviceState Mouse [Current state of Mouse device, if InputDevice == EInputDevices::Mouse]`
- `bool bAltKeyDown [Is they keyboard ALT modifier key currently pressed down]`
- `bool bCmdKeyDown [Is they keyboard CMD modifier key currently pressed down (only on Apple devices)]`
- `bool bCtrlKeyDown [Is they keyboard CTRL modifier key currently pressed down]`
- `bool bShiftKeyDown [Is they keyboard SHIFT modifier key currently pressed down]`


**方法**:

- `FInputDeviceState& opAssign(FInputDeviceState Other)`

---

