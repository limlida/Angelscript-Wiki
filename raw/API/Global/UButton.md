### UButton


The button is a click-able primitive widget to enable basic interaction, you
can place any other widget inside a button to make a more complex and
interesting click-able element in your UI.

* Single Child
* Clickable

**属性**:

- `FLinearColor BackgroundColor [The color multiplier for the button background]`
- `EButtonClickMethod ClickMethod [The type of mouse action required by the user to trigger the buttons 'Click']`
- `FLinearColor ColorAndOpacity [The color multiplier for the button content]`
- `bool IsFocusable [Sometimes a button should only be mouse-clickable and never keyboard focusable.]`
- `FOnButtonClickedEvent OnClicked [Called when the button is clicked]`
- `FOnButtonHoverEvent OnHovered`
- `FOnButtonPressedEvent OnPressed [Called when the button is pressed]`
- `FOnButtonReleasedEvent OnReleased [Called when the button is released]`
- `FOnButtonHoverEvent OnUnhovered`
- `EButtonPressMethod PressMethod [The type of keyboard/gamepad button press action required by the user to trigger the buttons 'Click']`
- `EButtonTouchMethod TouchMethod [The type of touch action required by the user to trigger the buttons 'Click']`
- `FButtonStyle WidgetStyle [The button style used at runtime]`
- `bool bAllowDragDrop [True if this button can be dragged]`


**方法**:

- `bool IsPressed() const`  
  Returns true if the user is actively pressing the button.  Do not use this for detecting 'Clicks', use the OnClicked event instead.

@return true if the user is actively pressing the button otherwise false.
- `SetAllowDragDrop(bool bInAllowDragDrop)`
- `SetBackgroundColor(FLinearColor InBackgroundColor)`  
  Sets the color multiplier for the button background
- `SetClickMethod(EButtonClickMethod InClickMethod)`
- `SetColorAndOpacity(FLinearColor InColorAndOpacity)`  
  Sets the color multiplier for the button content
- `SetPressMethod(EButtonPressMethod InPressMethod)`
- `SetStyle(FButtonStyle InStyle)`  
  Sets the color multiplier for the button background
- `SetTouchMethod(EButtonTouchMethod InTouchMethod)`

---

