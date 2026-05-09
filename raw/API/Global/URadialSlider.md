### URadialSlider


A simple widget that shows a sliding bar with a handle that allows you to control the value between 0..1.

* No Children

**属性**:

- `float32 AngularOffset [Rotates radial slider by arbitrary offset to support full gamut of configurations.]`
- `FLinearColor CenterBackgroundColor [The color to draw the center background in.]`
- `float32 CustomDefaultValue [The value where the slider should draw it's progress bar from, independent of direction]`
- `FVector2D HandStartEndRatio [Start and end of the hand as a ratio to the slider radius (so 0.0 to 1.0 is from the slider center to the handle).]`
- `bool IsFocusable [Should the slider be focusable?]`
- `bool Locked [Whether the handle is interactive or fixed.]`
- `bool MouseUsesStep [Sets new value if mouse position is greater/less than half the step size.]`
- `FOnControllerCaptureBeginEvent OnControllerCaptureBegin [Invoked when the controller capture begins.]`
- `FOnControllerCaptureEndEvent OnControllerCaptureEnd [Invoked when the controller capture ends.]`
- `FOnMouseCaptureBeginEvent OnMouseCaptureBegin [Invoked when the mouse is pressed and a capture begins.]`
- `FOnMouseCaptureEndEvent OnMouseCaptureEnd [Invoked when the mouse is released and a capture ends.]`
- `FOnFloatValueChangedEvent OnValueChanged [Called when the value is changed by slider or typing.]`
- `bool RequiresControllerLock [Sets whether we have to lock input to change the slider value.]`
- `bool ShowSliderHand [Whether to show the slider hand.]`
- `bool ShowSliderHandle [Whether to show the slider handle (thumb).]`
- `FLinearColor SliderBarColor [The color to draw the slider bar in.]`
- `FLinearColor SliderHandleColor [The color to draw the slider handle in.]`
- `float32 SliderHandleEndAngle [The angle at which the Slider Handle will end.]`
- `float32 SliderHandleStartAngle [The angle at which the Slider Handle will start.]`
- `FLinearColor SliderProgressColor [The color to draw the completed progress of the slider bar in.]`
- `FRuntimeFloatCurve SliderRange [A curve that defines how the slider should be sampled. Default is linear.]`
- `float32 StepSize [The amount to adjust the value by, when using a controller or keyboard]`
- `bool UseVerticalDrag [Whether the value is changed when dragging vertically as opposed to along the radial curve.]`
- `float32 Value [The slider value to display.]`
- `TArray<float32> ValueTags [Adds text tags to the radial slider at the value's position.]`
- `FSliderStyle WidgetStyle [The progress bar style]`
- `bool bUseCustomDefaultValue [Whether the slider should draw it's progress bar from a custom value on the slider]`


**方法**:

- `float32 GetCustomDefaultValue() const`  
  Gets the current custom default value of the slider.
- `float32 GetNormalizedSliderHandlePosition() const`  
  Get the current raw slider alpha from 0 to 1
- `float32 GetValue() const`  
  Gets the current value of the slider.
- `SetAngularOffset(float32 InValue)`  
  Sets the Angular Offset for the slider.
- `SetCenterBackgroundColor(FLinearColor InValue)`  
  Sets the color of the slider bar
- `SetCustomDefaultValue(float32 InValue)`  
  Sets the current custom default value of the slider.
- `SetHandStartEndRatio(FVector2D InValue)`  
  Sets the start and end of the hand as a ratio to the slider radius (so 0.0 to 1.0 is from the slider center to the handle).
- `SetLocked(bool InValue)`  
  Sets the handle to be interactive or fixed
- `SetShowSliderHand(bool InShowSliderHand)`  
  Whether to show the slider hand.
- `SetShowSliderHandle(bool InShowSliderHandle)`  
  Whether to show the slider handle (thumb).
- `SetSliderBarColor(FLinearColor InValue)`  
  Sets the color of the slider bar
- `SetSliderHandleColor(FLinearColor InValue)`  
  Sets the color of the handle bar
- `SetSliderHandleEndAngle(float32 InValue)`  
  Sets the maximum angle of the slider.
- `SetSliderHandleStartAngle(float32 InValue)`  
  Sets the minimum angle of the slider.
- `SetSliderProgressColor(FLinearColor InValue)`  
  Sets the progress color of the slider bar
- `SetSliderRange(FRuntimeFloatCurve InSliderRange)`  
  Sets the curve for the slider range
- `SetStepSize(float32 InValue)`  
  Sets the amount to adjust the value by, when using a controller or keyboard
- `SetUseVerticalDrag(bool InUseVerticalDrag)`  
  Set whether the value is changed when dragging vertically as opposed to along the radial curve.
- `SetValue(float32 InValue)`  
  Sets the current value of the slider.
- `SetValueTags(TArray<float32> InValueTags)`  
  Adds value tags to the slider.

---

