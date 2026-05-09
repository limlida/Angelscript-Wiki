### UAudioMaterialButton


A simple widget that shows a button
Button is rendered by using material instead of texture.

* No Children

**属性**:

- `FOnButtonPressedChangedEvent OnButtonPressedChangedEvent [Called when the value is changed by button.]`
- `FAudioMaterialButtonStyle WidgetStyle [The button's style]`
- `bool bIsPressed [Default Value of the button]`


**方法**:

- `bool GetIsPressed() const`  
  Gets the current value of the slider.
- `SetIsPressed(bool InPressed)`  
  Sets the current value of the slider. InValue is Clamped between 0.f - 1.f

---

