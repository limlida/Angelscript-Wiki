### UInputKeySelector


A widget for selecting a single key or a single key with a modifier.

**属性**:

- `TArray<FKey> EscapeKeys [When true gamepad keys are allowed in the input chord representing the selected key, otherwise they are ignored.]`
- `FText KeySelectionText [Sets the text which is displayed while selecting keys.]`
- `FMargin Margin [The amount of blank space around the text used to display the currently selected key.]`
- `FText NoKeySpecifiedText [Sets the text to display when no key text is available or not selecting a key.]`
- `FOnIsSelectingKeyChanged__InputKeySelector OnIsSelectingKeyChanged [Called whenever the key selection mode starts or stops.]`
- `FOnKeySelected__InputKeySelector OnKeySelected [Called whenever a new key is selected by the user.]`
- `FInputChord SelectedKey [The currently selected key chord.]`
- `FTextBlockStyle TextStyle [The button style used at runtime]`
- `FButtonStyle WidgetStyle [The button style used at runtime]`
- `bool bAllowGamepadKeys [When true gamepad keys are allowed in the input chord representing the selected key, otherwise they are ignored.]`
- `bool bAllowModifierKeys [When true modifier keys such as control and alt are allowed in the
input chord representing the selected key, if false modifier keys are ignored.]`


**方法**:

- `bool GetIsSelectingKey() const`  
  Returns true if the widget is currently selecting a key, otherwise returns false.
- `SetAllowGamepadKeys(bool bInAllowGamepadKeys)`  
  Sets whether or not gamepad keys are allowed in the selected key.
- `SetAllowModifierKeys(bool bInAllowModifierKeys)`  
  Sets whether or not modifier keys are allowed in the selected key.
- `SetEscapeKeys(TArray<FKey> InKeys)`  
  Sets escape keys.
- `SetKeySelectionText(FText InKeySelectionText)`  
  Sets the text which is displayed while selecting keys.
- `SetNoKeySpecifiedText(FText InNoKeySpecifiedText)`  
  Sets the text to display when no key text is available or not selecting a key.
- `SetSelectedKey(FInputChord InSelectedKey)`  
  Sets the currently selected key.
- `SetTextBlockVisibility(ESlateVisibility InVisibility)`  
  Sets the visibility of the text block.

---

