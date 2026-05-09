### UCheckBox


The checkbox widget allows you to display a toggled state of 'unchecked', 'checked' and
'indeterminable.  You can use the checkbox for a classic checkbox, or as a toggle button,
or as radio buttons.

* Single Child
* Toggle

**属性**:

- `EButtonClickMethod ClickMethod [The type of mouse action required by the user to trigger the buttons 'Click']`
- `EHorizontalAlignment HorizontalAlignment [How the content of the toggle button should align within the given space]`
- `bool IsFocusable [Sometimes a button should only be mouse-clickable and never keyboard focusable.]`
- `FOnCheckBoxComponentStateChanged OnCheckStateChanged [Called when the checked state has changed]`
- `EButtonPressMethod PressMethod [The type of keyboard/gamepad button press action required by the user to trigger the buttons 'Click']`
- `EButtonTouchMethod TouchMethod [The type of touch action required by the user to trigger the buttons 'Click']`
- `FCheckBoxStyle WidgetStyle [The checkbox bar style]`


**方法**:

- `ECheckBoxState GetCheckedState() const`  
  Returns the full current checked state.
- `bool IsChecked() const`  
  Returns true if the checkbox is currently checked
- `bool IsPressed() const`  
  Returns true if this button is currently pressed
- `SetCheckedState(ECheckBoxState InCheckedState)`  
  Sets the checked state.
- `SetClickMethod(EButtonClickMethod InClickMethod)`  
  Sets the click method.
- `SetIsChecked(bool InIsChecked)`  
  Sets the checked state.
- `SetPressMethod(EButtonPressMethod InPressMethod)`  
  Sets the press method.
- `SetTouchMethod(EButtonTouchMethod InTouchMethod)`  
  Sets the touch method.

---

