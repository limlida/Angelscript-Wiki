### USynthKnob


A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.

* No Children

**属性**:

- `bool IsFocusable [Should the slider be focusable?]`
- `bool Locked [Whether the handle is interactive or fixed.]`
- `float32 MouseFineTuneSpeed [The speed of the mouse knob control when fine-tuning the knob]`
- `float32 MouseSpeed [The speed of the mouse knob control]`
- `FOnControllerCaptureBeginEvent OnControllerCaptureBegin [Invoked when the controller capture begins.]`
- `FOnControllerCaptureEndEvent OnControllerCaptureEnd [Invoked when the controller capture ends.]`
- `FOnMouseCaptureBeginEvent OnMouseCaptureBegin [Invoked when the mouse is pressed and a capture begins.]`
- `FOnMouseCaptureEndEvent OnMouseCaptureEnd [Invoked when the mouse is released and a capture ends.]`
- `FOnFloatValueChangedEvent OnValueChanged [Called when the value is changed by slider or typing.]`
- `FText ParameterName [The name of the pararameter. Will show when knob turns.]`
- `FText ParameterUnits [The parameter units (e.g. hz). Will append to synth tooltip info.]`
- `bool ShowTooltipInfo [Enable tool tip window to show parameter information while knob turns]`
- `float32 StepSize [The amount to adjust the value by, when using a controller or keyboard]`
- `float32 Value [The volume value to display.]`
- `FSynthKnobStyle WidgetStyle [The synth knob style]`


**方法**:

- `float32 GetValue() const`  
  Gets the current value of the slider.
- `SetLocked(bool InValue)`  
  Sets the handle to be interactive or fixed
- `SetStepSize(float32 InValue)`  
  Sets the amount to adjust the value by, when using a controller or keyboard
- `SetValue(float32 InValue)`  
  Sets the current value of the slider.

---

