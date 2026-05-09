### UNarrativeActivatableWidget


**属性**:

- `FGameplayTagContainer BlockTags [If owner has any of these tags we'll block the widget from being added to the GameplayHUD.]`
- `EMouseCaptureMode GameMouseCaptureMode [The desired mouse behavior when the game gets input.]`
- `ENarrativeWidgetInputMode InputConfig [The desired input mode to use while this UI is activated, for example do you want key presses to still reach the game/player controller?]`
- `FText OptionalDisplayName [Useful if this menu is being used in a tab switcher and you need a display name]`
- `FName OptionalNameID [Useful if this menu is being used in a tab switcher and you need a name ID to pass the switcher.]`
- `bool bDeactivateOnBack [Should we deactivate when back key is pressed.]`
- `bool bFocusDesiredTargetOnActivate [If true we'll automatically focus GetDesiredFocusTarget() when widget activates]`


**方法**:

- `RegisterActions()`
- `RegisterBinding(FDataTableRowHandle InputAction, FInputActionExecutedDelegate Callback, FInputActionBindingHandle& BindingHandle, FText OverrideDisplayName, bool bShouldDisplayInActionBar = true)`
- `SetBindingDisplayName(FInputActionBindingHandle BindingHandle, FText NewDisplayName)`
- `UnregisterAllBindings()`
- `UnregisterBinding(FInputActionBindingHandle BindingHandle)`

---

