### USpinBox


A numerical entry box that allows for direct entry of the number or allows the user to click and slide the number.

**属性**:

- `bool ClearKeyboardFocusOnCommit [Whether to remove the keyboard focus from the spin box when the value is committed]`
- `FSlateFontInfo Font [Font color and opacity (overrides style)]`
- `FSlateColor ForegroundColor`
- `ETextJustify Justification [The justification the value text should appear as.]`
- `EVirtualKeyboardType KeyboardType [If we're on a platform that requires a virtual keyboard, what kind of keyboard should this widget use?]`
- `float32 MinDesiredWidth [The minimum width of the spin box]`
- `FOnSpinBoxBeginSliderMovement__SpinBox OnBeginSliderMovement [Called right before the slider begins to move]`
- `FOnSpinBoxValueChangedEvent__SpinBox OnEndSliderMovement [Called right after the slider handle is released by the user]`
- `FOnSpinBoxValueChangedEvent__SpinBox OnValueChanged [Called when the value is changed interactively by the user]`
- `FOnSpinBoxValueCommittedEvent__SpinBox OnValueCommitted [Called when the value is committed. Occurs when the user presses Enter or the text box loses focus.]`
- `bool SelectAllTextOnCommit [Whether to select the text in the spin box when the value is committed]`
- `float32 SliderExponent [The exponent by which to increase the delta as the mouse moves. 1 is constant (never increases the delta).]`
- `FSpinBoxStyle WidgetStyle [The Style]`
- `bool bAlwaysUsesDeltaSnap [Whether this spin box should use the delta snapping logic for typed values - default false]`
- `bool bEnableSlider [Whether this spin box should have slider feature enabled]`
- `bool bOverride_MaxSliderValue [Whether the optional MaxSliderValue attribute of the widget is set]`
- `bool bOverride_MaxValue [Whether the optional MaxValue attribute of the widget is set]`
- `bool bOverride_MinSliderValue [Whether the optional MinSliderValue attribute of the widget is set]`
- `bool bOverride_MinValue [Whether the optional MinValue attribute of the widget is set]`


**方法**:

- `ClearMaxSliderValue()`  
  Clear the maximum value that can be specified using the slider.
- `ClearMaxValue()`  
  Clear the maximum value that can be manually set in the spin box.
- `ClearMinSliderValue()`  
  Clear the minimum value that can be specified using the slider.
- `ClearMinValue()`  
  Clear the minimum value that can be manually set in the spin box.
- `bool GetAlwaysUsesDeltaSnap() const`  
  Get whether the spin box uses delta snap on type.
- `float32 GetDelta() const`  
  Get the current delta for the spin box.
- `int GetMaxFractionalDigits() const`  
  Get the current Max Fractional Digits for the spin box.
- `float32 GetMaxSliderValue() const`  
  Get the current maximum value that can be specified using the slider.
- `float32 GetMaxValue() const`  
  Get the current maximum value that can be manually set in the spin box.
- `int GetMinFractionalDigits() const`  
  Get the current Min Fractional Digits for the spin box.
- `float32 GetMinSliderValue() const`  
  Get the current minimum value that can be specified using the slider.
- `float32 GetMinValue() const`  
  Get the current minimum value that can be manually set in the spin box.
- `float32 GetValue() const`  
  Get the current value of the spin box.
- `SetAlwaysUsesDeltaSnap(bool bNewValue)`  
  Set whether the spin box uses delta snap on type.
- `SetDelta(float32 NewValue)`  
  Set the delta for the spin box.
- `SetForegroundColor(FSlateColor InForegroundColor)`
- `SetMaxFractionalDigits(int NewValue)`  
  Set the Max Fractional Digits for the spin box.
- `SetMaxSliderValue(float32 NewValue)`  
  Set the maximum value that can be specified using the slider.
- `SetMaxValue(float32 NewValue)`  
  Set the maximum value that can be manually set in the spin box.
- `SetMinFractionalDigits(int NewValue)`  
  Set the Min Fractional Digits for the spin box.
- `SetMinSliderValue(float32 NewValue)`  
  Set the minimum value that can be specified using the slider.
- `SetMinValue(float32 NewValue)`  
  Set the minimum value that can be manually set in the spin box.
- `SetValue(float32 NewValue)`  
  Set the value of the spin box.

---

