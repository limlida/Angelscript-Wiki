### UAudioMaterialKnob


A simple widget that shows a turning Knob that allows you to control the value between 0..1.
Knob is rendered by using material instead of texture.

* No Children

**属性**:

- `float32 FineTuneSpeed [The tune speed when fine-tuning the knob]`
- `FOnKnobValueChangedEvent OnKnobValueChanged [Called when the value is changed by knob.]`
- `float32 StepSize [The amount to adjust the value by, when using steps]`
- `float32 TuneSpeed [The tune speed of the knob]`
- `float32 Value [Default Value of the Knob]`
- `FAudioMaterialKnobStyle WidgetStyle [The button's style]`
- `bool bLocked [Whether the knob is interactive or fixed.]`
- `bool bMouseUsesStep [Sets new value if mouse position is greater/less than half the step size.]`


**方法**:

- `float32 GetFineTuneSpeed() const`  
  Get the Knobs fine-tune speed
- `bool GetIsLocked() const`  
  Get whether the knob is interactive or fixed.
- `bool GetMouseUsesStep() const`  
  Get whether the knob uses steps when tuning On Mouse move
- `float32 GetStepSize() const`  
  Get Step Size
- `float32 GetTuneSpeed() const`  
  Get the Knobs tune speed
- `float32 GetValue()`  
  Get the current value of the knob.
- `SetFineTuneSpeed(float32 InValue)`  
  Set the knobs fine-tune speed. InValue is Clamped between 0.f - 1.f
- `SetLocked(bool InLocked)`  
  Set the knob to be interactive or fixed
- `SetMouseUsesStep(bool InUsesStep)`  
  Set the knob to use steps when turning On Mouse move
- `SetStepSize(float32 InValue)`  
  Set the amount to adjust the value when using steps
- `SetTuneSpeed(float32 InValue)`  
  Set the knobs tune speed. InValue is Clamped between 0.f - 1.f
- `SetValue(float32 InValue)`  
  Set the current value of the knob. InValue is Clamped between 0.f - 1.f

---

