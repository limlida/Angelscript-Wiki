### FCharacterEvent


FCharacterEvent describes a keyboard action where the utf-16 code is given.  Used for OnKeyChar messages

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
- `uint16 GetCharacter() const`
- `FString GetString() const`
- `FCharacterEvent& opAssign(FCharacterEvent Other)`

---

