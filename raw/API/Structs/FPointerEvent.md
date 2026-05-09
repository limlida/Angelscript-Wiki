### FPointerEvent


FPointerEvent describes a mouse or touch action (e.g. Press, Release, Move, etc).
It is passed to event handlers dealing with pointer-based input.

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
- `FVector2D GetScreenSpacePosition() const`
- `FVector2D GetLastScreenSpacePosition() const`
- `FVector2D GetCursorDelta() const`
- `FVector2D GetGestureDelta() const`
- `bool IsMouseButtonDown(FKey MouseButton) const`
- `FKey GetEffectingButton() const`
- `float32 GetWheelDelta() const`
- `uint GetPointerIndex() const`
- `uint GetTouchpadIndex() const`
- `float32 GetTouchForce() const`
- `bool IsTouchEvent() const`
- `bool IsTouchForceChangedEvent() const`
- `bool IsTouchFirstMoveEvent() const`
- `bool IsDirectionInvertedFromDevice() const`
- `FPointerEvent& opAssign(FPointerEvent Other)`

---

