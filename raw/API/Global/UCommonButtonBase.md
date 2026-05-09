### UCommonButtonBase


Button that disables itself when not active. Also updates actions for CommonActionWidget if bound to display platform-specific icons.

**属性**:

- `FWidgetEventField ClickEvent []`
- `EButtonClickMethod ClickMethod [The type of mouse action required by the user to trigger the button's 'Click']`
- `FSlateSound ClickedSlateSoundOverride [Optional override for the sound to play when this button is clicked (based on Click/Touch/Press methods).]`
- `TSubclassOf<UCommonUIHoldData> HoldData [Press and Hold values used for Keyboard and Mouse, Gamepad and Touch, depending on the current input type]`
- `FSlateSound HoveredSlateSoundOverride [Optional override for the sound to play when this button is hovered.
Also used for the Selected and Locked Hovered state if their respective overrides are empty.]`
- `UCommonActionWidget InputActionWidget [Optionally bound widget for visualization behavior of an input action;
NOTE: If specified, will visualize according to the following algorithm:
If TriggeringEnhancedInputAction is specified, visualize it else:
If TriggeringInputAction is specified, visualize it else:
If TriggeredInputAction is specified, visualize it else:
Visualize the default click action while hovered]`
- `ECommonInputMode InputModeOverride [Set this to Game for special cases where an input action needs to be set for an in-game button.]`
- `int InputPriority [This is the priority for the TriggeringInputAction.  The first, HIGHEST PRIORITY widget will handle the input action, and no other widgets will be considered.
Additionally, no inputs with a priority below the current ActivatablePanel's Input Priority value will even be considered!

@TODO: This is part of legacy CommonUI and should be removed]`
- `FSlateSound LockedClickedSlateSoundOverride [Optional override for the sound to play when this button is clicked while Locked]`
- `FSlateSound LockedHoveredSlateSoundOverride [Optional override for the sound to play when this button is hovered while Locked]`
- `FSlateSound LockedPressedSlateSoundOverride [Optional override for the sound to play when this button is pressed while Locked]`
- `int MaxHeight [The maximum height of the button (only used if greater than the style's maximum)]`
- `int MaxWidth [The maximum width of the button (only used if greater than the style's maximum)]`
- `int MinHeight [The minimum height of the button (only used if greater than the style's minimum)]`
- `int MinWidth [The minimum width of the button (only used if greater than the style's minimum)]`
- `FCommonButtonBaseClicked OnButtonBaseClicked`
- `FCommonButtonBaseClicked OnButtonBaseDoubleClicked`
- `FOnButtonBaseGeoOperationDynamic OnButtonBaseDragDetected`
- `FOnButtonBaseGeoOperationDynamic OnButtonBaseDragEnter`
- `FOnButtonBaseOperationDynamic OnButtonBaseDragLeave`
- `FOnButtonBaseGeoOperationDynamic OnButtonBaseDragOver`
- `FOnButtonBaseGeoOperationDynamic OnButtonBaseDrop`
- `FCommonButtonBaseClicked OnButtonBaseFocused`
- `FCommonButtonBaseClicked OnButtonBaseHovered`
- `FCommonButtonBaseClicked OnButtonBaseLockClicked`
- `FCommonButtonBaseClicked OnButtonBaseLockDoubleClicked`
- `FCommonButtonBaseClicked OnButtonBaseSelected`
- `FCommonButtonBaseClicked OnButtonBaseUnfocused`
- `FCommonButtonBaseClicked OnButtonBaseUnhovered`
- `FCommonButtonBaseClicked OnButtonBaseUnselected`
- `FCommonSelectedStateChangedBase OnSelectedChangedBase`
- `EButtonPressMethod PressMethod`
- `FSlateSound PressedSlateSoundOverride [Optional override for the sound to play when this button is pressed.
Also used for the Selected and Locked Pressed state if their respective overrides are empty.]`
- `FSlateSound SelectedClickedSlateSoundOverride [Optional override for the sound to play when this button is clicked while Selected]`
- `FSlateSound SelectedHoveredSlateSoundOverride [Optional override for the sound to play when this button is hovered while Selected]`
- `FSlateSound SelectedPressedSlateSoundOverride [Optional override for the sound to play when this button is pressed while Selected]`
- `TSubclassOf<UCommonButtonStyle> Style [References the button style asset that defines a style in multiple sizes]`
- `EButtonTouchMethod TouchMethod`
- `UInputAction TriggeringEnhancedInputAction [The enhanced input action that is bound to this button. The common input manager will trigger this button to
click if the action was pressed]`
- `FDataTableRowHandle TriggeringInputAction [The input action that is bound to this button. The common input manager will trigger this button to
click if the action was pressed]`
- `bool bApplyAlphaOnDisable [The type of mouse action required by the user to trigger the button's 'Click']`
- `bool bDisplayInputActionWhenNotInteractable [True if the input action should be displayed when the button is not interactable]`
- `bool bHideInputAction [Whether to hide the input action widget at all times (useful for textless small buttons)]`
- `bool bHideInputActionWithKeyboard [True if the input action should be hidden while the user is using a keyboard]`
- `bool bInteractableWhenSelected [If true, the button may be clicked while selected. Otherwise, interaction is disabled in the selected state.]`
- `bool bIsPersistentBinding [DANGER! Be very, very careful with this. Unless you absolutely know what you're doing, this is not the property you're looking for.

True to register the action bound to this button as a "persistent" binding. False (default) will register a standard activation-based binding.
A persistent binding ignores the standard ruleset for UI input routing - the binding will be live immediately upon construction of the button.]`
- `bool bLocked [True if this button is currently locked.
Locked button can be hovered, focused, and pressed, but the Click event will not go through.
Business logic behind it will not be executed. Designed for progressive disclosure]`
- `bool bNavigateToNextWidgetOnDisable [If this button is currently in focus, and is disabled, hidden, or collapsed then focus will be routed to the next available widget]`
- `bool bRequiresHold [True if this button should have a press and hold behavior, triggering the click when the specified hold time is met]`
- `bool bSelectable [True if the button supports being in a "selected" state, which will update the style accordingly]`
- `bool bShouldSelectUponReceivingFocus [If true, the button will be selected when it receives focus.]`
- `bool bShouldUseFallbackDefaultInputAction [True if this button should use the default fallback input action (bool is useful for buttons that shouldn't because they are never directly hit via controller)]`
- `bool bSimulateHoverOnTouchInput [True if this button should play the hover effect when pressed by a touch input]`
- `bool bToggleable [True if the button can be deselected by clicking it when selected]`
- `bool bTriggerClickedAfterSelection`


**方法**:

- `OnClicked()`
- `OnDeselected()`
- `OnDisabled()`
- `OnDoubleClicked()`
- `OnEnabled()`
- `BP_OnFocusLost()`
- `BP_OnFocusReceived()`
- `OnHovered()`
- `OnInputActionTriggered()`
- `OnInputMethodChanged(ECommonInputType CurrentInputType)`
- `OnLockClicked()`
- `OnLockDoubleClicked()`
- `OnLockedChanged(bool bIsLocked)`
- `OnPressed()`
- `OnReleased()`
- `OnRequiresHoldChanged()`
- `OnSelected()`
- `OnUnhovered()`
- `ClearSelection()`
- `DisableButtonWithReason(FText DisabledReason)`  
  Disables this button with a reason (use instead of SetIsEnabled)
- `GetCurrentButtonPadding(FMargin& OutButtonPadding) const`  
  @return The current button padding that corresponds to the current size and selection state
- `GetCurrentCustomPadding(FMargin& OutCustomPadding) const`  
  @return The custom padding that corresponds to the current size and selection state
- `UCommonTextStyle GetCurrentTextStyle() const`  
  @return The text style that corresponds to the current size and selection state
- `TSubclassOf<UCommonTextStyle> GetCurrentTextStyleClass() const`  
  @return The class of the text style that corresponds to the current size and selection state
- `UInputAction GetEnhancedInputAction() const`  
  Gets the appropriate enhanced input action that is set
- `bool GetInputAction(FDataTableRowHandle& InputActionRow) const`  
  Gets the appropriate input action that is set
- `bool GetIsFocusable() const`  
  Gets the bIsFocusable flag
- `bool GetLocked() const`  
  @returns True if the button is currently locked, False otherwise
- `float32 GetRequiredHoldTime() const`  
  Returns required hold time for performing a triggering action.
- `bool GetRequiresHold() const`  
  Returns true if this button has a hold behavior, even if the triggering action is not holdable.
- `bool GetSelected() const`  
  @returns True if the button is currently in a selected state, False otherwise
- `bool GetShouldSelectUponReceivingFocus() const`  
  Get whether the button should become selected upon receiving focus or not
- `UMaterialInstanceDynamic GetSingleMaterialStyleMID() const`  
  Returns the dynamic instance of the material being used for this button, if it is using a single material style.
- `UCommonButtonStyle GetStyle() const`  
  @Returns Current button style
- `bool IsInteractionEnabled() const`  
  Is this button currently interactable? (use instead of GetIsEnabled)
- `bool IsPressed() const`  
  Is this button currently pressed?
- `OnActionComplete()`  
  Callback fired when hold events complete
- `OnActionProgress(float HeldPercent)`  
  Callback fired continously during hold interactions
- `OnCurrentTextStyleChanged()`  
  Allows derived classes to take action when the current text style has changed
- `OnTriggeredInputActionChanged(FDataTableRowHandle NewTriggeredAction)`  
  Callback fired when input action datatable row changes
- `OnTriggeringEnhancedInputActionChanged(const UInputAction InInputAction)`  
  Callback fired when enhanced input action changes
- `OnTriggeringInputActionChanged(FDataTableRowHandle NewTriggeredAction)`  
  Callback fired when triggered input action datatable row changes
- `SetAllowDragDrop(bool bInAllowDragDrop)`  
  Updates the bAllowDragDrop flag  on the RootButton
- `SetClickedSoundOverride(USoundBase Sound)`
- `SetClickMethod(EButtonClickMethod InClickMethod)`  
  Set the click method for mouse interaction
- `SetHideInputAction(bool bInHideInputAction)`
- `SetHoveredSoundOverride(USoundBase Sound)`
- `SetInputActionProgressMaterial(FSlateBrush InProgressMaterialBrush, FName InProgressMaterialParam)`
- `SetIsFocusable(bool bInIsFocusable)`  
  Updates the bIsFocusable flag
- `SetIsInteractableWhenSelected(bool bInInteractableWhenSelected)`  
  Change whether this widget is selectable at all. If false and currently selected, will deselect.
- `SetIsInteractionEnabled(bool bInIsInteractionEnabled)`  
  Change whether this widget is selectable at all. If false and currently selected, will deselect.
- `SetIsLocked(bool bInIsLocked)`  
  Change whether this widget is locked. If locked, the button can be focusable and responsive to mouse input but will not broadcast OnClicked events.
- `SetIsSelectable(bool bInIsSelectable)`  
  Change whether this widget is selectable at all. If false and currently selected, will deselect.
- `SetIsSelected(bool InSelected, bool bGiveClickFeedback = true)`  
  Change the selected state manually.
@param bGiveClickFeedback    If true, the button may give user feedback as if it were clicked. IE: Play a click sound, trigger animations as if it were clicked.
- `SetIsToggleable(bool bInIsToggleable)`  
  Change whether this widget is toggleable. If toggleable, clicking when selected will deselect.
- `SetLockedClickedSoundOverride(USoundBase Sound)`
- `SetLockedHoveredSoundOverride(USoundBase Sound)`
- `SetLockedPressedSoundOverride(USoundBase Sound)`
- `SetMaxDimensions(int InMaxWidth, int InMaxHeight)`  
  Sets the maximum dimensions of this button
- `SetMinDimensions(int InMinWidth, int InMinHeight)`  
  Sets the minimum dimensions of this button
- `SetPressedSoundOverride(USoundBase Sound)`
- `SetPressMethod(EButtonPressMethod InPressMethod)`  
  Set the click method for keyboard/gamepad button press interaction
- `SetRequiresHold(bool bInRequiresHold)`  
  Change whether this button should have a hold behavior even if the triggering action is not holdable.
- `SetSelectedClickedSoundOverride(USoundBase Sound)`
- `SetSelectedHoveredSoundOverride(USoundBase Sound)`
- `SetSelectedInternal(bool bInSelected, bool bAllowSound = true, bool bBroadcast = true)`  
  Internal method to allow the selected state to be set regardless of selectability or toggleability
- `SetSelectedPressedSoundOverride(USoundBase Sound)`
- `SetShouldSelectUponReceivingFocus(bool bInShouldSelectUponReceivingFocus)`  
  Set whether the button should become selected upon receiving focus or not; Only settable for buttons that are selectable
- `SetShouldUseFallbackDefaultInputAction(bool bInShouldUseFallbackDefaultInputAction)`  
  Change whether this widget should use the fallback default input action.
- `SetStyle(TSubclassOf<UCommonButtonStyle> InStyle = nullptr)`  
  Sets the style of this button, rebuilds the internal styling
- `SetTouchMethod(EButtonTouchMethod InTouchMethod)`  
  Set the click method for touch interaction
- `SetTriggeredInputAction(FDataTableRowHandle InputActionRow)`  
  Updates the current triggered action
- `SetTriggeringEnhancedInputAction(UInputAction InInputAction)`  
  Updates the current triggering enhanced input action, requires enhanced input enabled in CommonUI settings
- `SetTriggeringInputAction(FDataTableRowHandle InputActionRow)`  
  Updates the current triggering action
- `StopDoubleClickPropagation()`  
  Unless this is called, we will assume the double click should be converted into a normal click.

---

