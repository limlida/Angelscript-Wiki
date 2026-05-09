### UAudioMeter


An audio meter widget.

Supports displaying a slower moving peak-hold value as well as the current meter value.

A clipping value is also displayed which shows a customizable color to indicate clipping.

Internal values are stored and interacted with as linear volume values.

**属性**:

- `FLinearColor BackgroundColor [The color to draw the background.]`
- `FLinearColor MeterBackgroundColor [The color to draw the meter background.]`
- `TArray<FMeterChannelInfo> MeterChannelInfo [The current meter value to display.]`
- `FLinearColor MeterClippingColor [The color to draw the meter clipping value.]`
- `FLinearColor MeterPeakColor [The color to draw the meter peak value.]`
- `FLinearColor MeterScaleColor [The color to draw the meter scale hashes.]`
- `FLinearColor MeterScaleLabelColor [The color to draw the meter scale label.]`
- `FLinearColor MeterValueColor [The color to draw the meter value.]`
- `EOrientation Orientation [The slider's orientation.]`
- `FAudioMeterStyle WidgetStyle [The audio meter style]`


**方法**:

- `TArray<FMeterChannelInfo> GetMeterChannelInfo() const`  
  Gets the current linear value of the meter.
- `SetBackgroundColor(FLinearColor InValue)`  
  Sets the background color
- `SetMeterBackgroundColor(FLinearColor InValue)`  
  Sets the meter background color
- `SetMeterChannelInfo(TArray<FMeterChannelInfo> InMeterChannelInfo)`  
  Sets the current meter values.
- `SetMeterClippingColor(FLinearColor InValue)`  
  Sets the meter clipping color
- `SetMeterPeakColor(FLinearColor InValue)`  
  Sets the meter peak color
- `SetMeterScaleColor(FLinearColor InValue)`  
  Sets the meter scale color
- `SetMeterScaleLabelColor(FLinearColor InValue)`  
  Sets the meter scale color
- `SetMeterValueColor(FLinearColor InValue)`  
  Sets the meter value color

---

