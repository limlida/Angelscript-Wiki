### UAudioMaterialSlider


A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.
Slider is rendered by using material instead of texture.

* No Children

**属性**:

- `float32 FineTuneSpeed [The tune speed of the slider when fine-tuning the slider On Mouse move && Left-Shift pressed]`
- `FOnSliderFloatValueChangedEvent OnValueChanged [Called when the value is changed by slider.]`
- `EOrientation Orientation [Orientation of the slider]`
- `float32 StepSize [The amount to adjust the value by, when using steps]`
- `float32 TuneSpeed [The tune speed of the slider On Mouse move]`
- `float32 Value [Default Value of the slider]`
- `FAudioMaterialSliderStyle WidgetStyle [The slider's style]`
- `bool bLocked [Whether the slider is interactive or fixed.]`
- `bool bMouseUsesStep [Sets new value if mouse position is greater/less than half the step size.]`


**方法**:

- `float32 GetFineTuneSpeed() const`  
  Get slider fine-tune speed
- `bool GetIsLocked() const`  
  Get whether the slider is interactive or fixed.
- `bool GetMouseUsesStep() const`  
  Get whether the slider uses steps when turning On Mouse move
- `float32 GetStepSize() const`  
  Get Step Size
- `float32 GetTuneSpeed() const`  
  Get slider tune speed
- `float32 GetValue() const`  
  Gets the current value of the slider.
- `SetFineTuneSpeed(float32 InValue)`  
  Set the fine-tune speed of the slider. InValue is Clamped between 0.f - 1.f
- `SetLocked(bool bInLocked)`  
  Set the slider to be interactive or fixed
- `SetMouseUsesStep(bool bInUsesStep)`  
  Sets the slider to use steps when turning On Mouse move
- `SetStepSize(float32 InValue)`  
  Sets the amount to adjust the value when using steps
- `SetTuneSpeed(float32 InValue)`  
  Set the tune speed of the slider. InValue is Clamped between 0.f - 1.f
- `SetValue(float32 InValue)`  
  Sets the current value of the slider. InValue is Clamped between 0.f - 1.f

---

