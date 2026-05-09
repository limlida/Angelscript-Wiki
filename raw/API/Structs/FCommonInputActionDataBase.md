### FCommonInputActionDataBase


**属性**:

- `FCommonInputTypeInfo DefaultGamepadInputTypeInfo [Default input state for gamepads]`
- `FText DisplayName [User facing name (used when NOT a hold action)]`
- `TMap<FName,FCommonInputTypeInfo> GamepadInputOverrides [Override the input state for each input method]`
- `FText HoldDisplayName [User facing name used when it IS a hold action]`
- `FCommonInputTypeInfo KeyboardInputTypeInfo [Key to bind to for each input method]`
- `int NavBarPriority [Priority in nav-bar]`
- `FCommonInputTypeInfo TouchInputTypeInfo [Override the displayed brush for each input method]`


**方法**:

- `FCommonInputActionDataBase& opAssign(FCommonInputActionDataBase Other)`

---

