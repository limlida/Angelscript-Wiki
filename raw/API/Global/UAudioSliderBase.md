### UAudioSliderBase


An audio slider widget.

**属性**:

- `bool IsUnitsTextReadOnly [Whether to set the units part of the text label read only.]`
- `bool IsValueTextReadOnly [Whether to set the value part of the text label read only.]`
- `FOnFloatValueChangedEvent OnValueChanged [Called when the value is changed by slider or typing.]`
- `EOrientation Orientation [The slider's orientation.]`
- `bool ShowLabelOnlyOnHover [If true, show text label only on hover; if false always show label.]`
- `bool ShowUnitsText [Whether to show the units part of the text label.]`
- `FLinearColor SliderBackgroundColor [The color to draw the slider background.]`
- `FLinearColor SliderBarColor [The color to draw the slider bar.]`
- `FLinearColor SliderThumbColor [The color to draw the slider thumb.]`
- `FLinearColor TextLabelBackgroundColor [The color to draw the text label background.]`
- `FText UnitsText [The text label units]`
- `float32 Value [The normalized linear (0 - 1) slider value.]`
- `FLinearColor WidgetBackgroundColor [The color to draw the widget background.]`


**方法**:

- `float32 GetOutputValue(float32 InSliderValue)`  
  Get output value from normalized linear (0 - 1) based on internal lin to output mapping.
- `float32 GetSliderValue(float32 OutputValue)`  
  Get normalized linear (0 - 1) slider value from output based on internal lin to output mapping.
- `SetShowLabelOnlyOnHover(bool bShowLabelOnlyOnHover)`  
  If true, show text label only on hover; if false always show label.
- `SetShowUnitsText(bool bShowUnitsText)`  
  Sets whether to show the units text
- `SetSliderBackgroundColor(FLinearColor InValue)`  
  Sets the slider background color
- `SetSliderBarColor(FLinearColor InValue)`  
  Sets the slider bar color
- `SetSliderThumbColor(FLinearColor InValue)`  
  Sets the slider thumb color
- `SetTextLabelBackgroundColor(FSlateColor InColor)`  
  Sets the label background color
- `SetUnitsText(FText Units)`  
  Sets the units text
- `SetUnitsTextReadOnly(bool bIsReadOnly)`  
  Sets whether the units text is read only
- `SetValueTextReadOnly(bool bIsReadOnly)`  
  Sets whether the value text is read only
- `SetWidgetBackgroundColor(FLinearColor InValue)`  
  Sets the widget background color

---

