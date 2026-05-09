### FEventReply


Allows users to handle events and return information to the underlying UI layer.

**方法**:

- `FEventReply& PreventThrottling()`
- `FEventReply& SetUserFocus(UWidget Widget, EFocusCause FocusCause = EFocusCause :: SetDirectly, bool bAllUsers = false)`
- `FEventReply& ClearUserFocus(bool bAllUsers = false)`
- `FEventReply& CaptureMouse(UWidget Widget)`
- `FEventReply& UseHighPrecisionMouseMovement(UWidget Widget)`
- `FEventReply& ReleaseMouseCapture()`
- `FEventReply& LockMouseToWidget(UWidget Widget)`
- `FEventReply& ReleaseMouseLock()`
- `FEventReply& SetMousePos(FIntPoint NewMousePos)`
- `FEventReply& SetNavigation(EUINavigation NavigationType, ENavigationGenesis Genesis, ENavigationSource Source = ENavigationSource :: FocusedWidget)`
- `FEventReply& SetNavigation(UWidget NavigationDestination, ENavigationGenesis Genesis, ENavigationSource Source = ENavigationSource :: FocusedWidget)`
- `FEventReply& opAssign(FEventReply Other)`

---

