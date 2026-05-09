### UAudioRadialSlider


An audio radial slider widget.

**属性**:

- `FLinearColor CenterBackgroundColor [The color to draw the widget background.]`
- `FVector2D HandStartEndRatio [Start and end of the hand as a ratio to the slider radius (so 0.0 to 1.0 is from the slider center to the handle).]`
- `bool IsUnitsTextReadOnly [Whether to set the units part of the text label read only.]`
- `bool IsValueTextReadOnly [Whether to set the value part of the text label read only.]`
- `FOnAudioRadialSliderValueChangedEvent OnValueChanged [Called when the value is changed by slider or typing.]`
- `FVector2D OutputRange [Output range]`
- `bool ShowLabelOnlyOnHover [If true, show text label only on hover; if false always show label.]`
- `bool ShowUnitsText [Whether to show the units part of the text label.]`
- `FLinearColor SliderBarColor [The color to draw the slider bar in.]`
- `FLinearColor SliderProgressColor [The color to draw the slider progress bar in.]`
- `float32 SliderThickness [The slider thickness.]`
- `FLinearColor TextLabelBackgroundColor [The color to draw the text label background.]`
- `FText UnitsText [The text label units]`
- `float32 Value [The normalized linear (0 - 1) slider value position.]`
- `EAudioRadialSliderLayout WidgetLayout [The layout of the widget (position of text label).]`


**方法**:

- `float32 GetOutputValue(float32 InSliderValue)`  
  Get output value from normalized linear (0 - 1) based on internal lin to output mapping.
- `float32 GetSliderValue(float32 OutputValue)`  
  Get normalized linear (0 - 1) slider value from output based on internal lin to output mapping.
- `SetCenterBackgroundColor(FLinearColor InValue)`  
  Sets the label background color
- `SetHandStartEndRatio(FVector2D InHandStartEndRatio)`  
  Sets the start and end of the hand as a ratio to the slider radius (so 0.0 to 1.0 is from the slider center to the handle).
- `SetOutputRange(FVector2D InOutputRange)`  
  Sets the output range
- `SetShowLabelOnlyOnHover(bool bShowLabelOnlyOnHover)`  
  If true, show text label only on hover; if false always show label.
- `SetShowUnitsText(bool bShowUnitsText)`  
  Sets whether to show the units text
- `SetSliderBarColor(FLinearColor InValue)`  
  Sets the slider bar color
- `SetSliderProgressColor(FLinearColor InValue)`  
  Sets the slider progress color
- `SetSliderThickness(float32 InThickness)`  
  Sets the slider thickness
- `SetTextLabelBackgroundColor(FSlateColor InColor)`  
  Sets the label background color
- `SetUnitsText(FText Units)`  
  Sets the units text
- `SetUnitsTextReadOnly(bool bIsReadOnly)`  
  Sets whether the units text is read only
- `SetValueTextReadOnly(bool bIsReadOnly)`  
  Sets whether the value text is read only
- `SetWidgetLayout(EAudioRadialSliderLayout InLayout)`  
  Sets the widget layout

---

