### USynth2DSlider


A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.

* No Children

**属性**:

- `bool IndentHandle [Whether the slidable area should be indented to fit the handle.]`
- `bool IsFocusable [Should the slider be focusable?]`
- `bool Locked [Whether the handle is interactive or fixed.]`
- `FOnControllerCaptureBeginEventSynth2D OnControllerCaptureBegin [Invoked when the controller capture begins.]`
- `FOnControllerCaptureEndEventSynth2D OnControllerCaptureEnd [Invoked when the controller capture ends.]`
- `FOnMouseCaptureBeginEventSynth2D OnMouseCaptureBegin [Invoked when the mouse is pressed and a capture begins.]`
- `FOnMouseCaptureEndEventSynth2D OnMouseCaptureEnd [Invoked when the mouse is released and a capture ends.]`
- `FOnFloatValueChangedEventSynth2D OnValueChangedX [Called when the value is changed by slider or typing.]`
- `FOnFloatValueChangedEventSynth2D OnValueChangedY [Called when the value is changed by slider or typing.]`
- `FLinearColor SliderHandleColor [The color to draw the slider handle in.]`
- `float32 StepSize [The amount to adjust the value by, when using a controller or keyboard]`
- `float32 ValueX []`
- `float32 ValueY []`
- `FSynth2DSliderStyle WidgetStyle [The progress bar style]`


**方法**:

- `FVector2D GetValue() const`  
  Gets the current value of the slider.
- `SetIndentHandle(bool InValue)`  
  Sets if the slidable area should be indented to fit the handle
- `SetLocked(bool InValue)`  
  Sets the handle to be interactive or fixed
- `SetSliderHandleColor(FLinearColor InValue)`  
  Sets the color of the handle bar
- `SetStepSize(float32 InValue)`  
  Sets the amount to adjust the value by, when using a controller or keyboard
- `SetValue(FVector2D InValue)`  
  Sets the current value of the slider.

---

