### USlider


A simple widget that shows a sliding bar with a handle that allows you to control the value in a user define range (between 0..1 by default).

* No Children

**属性**:

- `bool IndentHandle [Whether the slidable area should be indented to fit the handle.]`
- `bool IsFocusable [Should the slider be focusable?]`
- `bool Locked [Whether the handle is interactive or fixed.]`
- `float32 MaxValue [The maximum value the slider can be set to.]`
- `float32 MinValue [The minimum value the slider can be set to.]`
- `bool MouseUsesStep [Sets new value if mouse position is greater/less than half the step size.]`
- `FOnControllerCaptureBeginEvent OnControllerCaptureBegin [Invoked when the controller capture begins.]`
- `FOnControllerCaptureEndEvent OnControllerCaptureEnd [Invoked when the controller capture ends.]`
- `FOnMouseCaptureBeginEvent OnMouseCaptureBegin [Invoked when the mouse is pressed and a capture begins.]`
- `FOnMouseCaptureEndEvent OnMouseCaptureEnd [Invoked when the mouse is released and a capture ends.]`
- `FOnFloatValueChangedEvent OnValueChanged [Called when the value is changed by slider or typing.]`
- `EOrientation Orientation [The slider's orientation.]`
- `bool RequiresControllerLock [Sets whether we have to lock input to change the slider value.]`
- `FLinearColor SliderBarColor [The color to draw the slider bar in.]`
- `FLinearColor SliderHandleColor [The color to draw the slider handle in.]`
- `float32 StepSize [The amount to adjust the value by, when using a controller or keyboard]`
- `FSliderStyle WidgetStyle [The progress bar style]`
- `bool bPreventThrottling [If refresh requests for the viewport should happen for all value changes *]`


**方法**:

- `float32 GetNormalizedValue() const`  
  Get the current value scaled from 0 to 1
- `float32 GetValue() const`  
  Gets the current value of the slider.
- `SetIndentHandle(bool InValue)`  
  Sets if the slidable area should be indented to fit the handle.
- `SetLocked(bool InValue)`  
  Sets the handle to be interactive or fixed.
- `SetMaxValue(float32 InValue)`  
  Sets the maximum value of the slider.
- `SetMinValue(float32 InValue)`  
  Sets the minimum value of the slider.
- `SetSliderBarColor(FLinearColor InValue)`  
  Sets the color of the slider bar.
- `SetSliderHandleColor(FLinearColor InValue)`  
  Sets the color of the handle bar
- `SetStepSize(float32 InValue)`  
  Sets the amount to adjust the value by, when using a controller or keyboard.
- `SetValue(float32 InValue)`  
  Sets the current value of the slider.

---

