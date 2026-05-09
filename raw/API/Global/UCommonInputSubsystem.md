### UCommonInputSubsystem


**属性**:

- `FInputMethodChangedDelegate OnInputMethodChanged`


**方法**:

- `FName GetCurrentGamepadName() const`
- `ECommonInputType GetCurrentInputType() const`  
  The current input type based on the last input received on the device.
- `ECommonInputType GetDefaultInputType() const`  
  The default input type for the current platform.
- `bool IsInputMethodActive(ECommonInputType InputMethod) const`
- `bool IsUsingPointerInput() const`
- `SetCurrentInputType(ECommonInputType NewInputType)`
- `SetGamepadInputType(FName InGamepadInputType)`
- `bool ShouldShowInputKeys() const`  
  Should display indicators for the current input device on screen.  This is needed when capturing videos, but we don't want to reveal the capture source device.

---

