### FAudioMeterStyle


Represents the appearance of an SAudioMeter

**属性**:

- `FSlateBrush BackgroundImage [Image to use to represent the background.]`
- `int DecibelsPerHash [How wide to draw the decibel scale, if it's enabled]`
- `FSlateFontInfo Font [Font family and size to be used when displaying the meter scale.]`
- `FSlateBrush MeterBackgroundImage [Image to use to represent the meter background.]`
- `FVector2D MeterPadding [How much padding to add around the meter]`
- `FSlateBrush MeterPeakImage [Image to use to represent the meter peak.]`
- `FVector2D MeterSize [How thick to draw the meter]`
- `FSlateBrush MeterValueBackgroundImage [Image to use to draw behind the meter value.]`
- `FSlateBrush MeterValueImage [Image to use to represent the meter value.]`
- `float32 MeterValuePadding [How much padding to add around the meter value]`
- `float32 PeakValueWidth [How wide to draw the peak value indicator]`
- `float32 ScaleHashHeight [The height of each hash mark]`
- `float32 ScaleHashOffset [Offset for the hashes]`
- `float32 ScaleHashWidth [The width of each hash mark]`
- `FVector2D ValueRangeDb [The minimum and maximum value to display in dB (values are clamped in this range)]`
- `bool bScaleSide [Which side to show the scale. If vertical, true means left side, false means right side. If horizontal, true means above, false means below.]`
- `bool bShowScale [Whether or not to show the decibel scale alongside the meter]`


**方法**:

- `FAudioMeterStyle& opAssign(FAudioMeterStyle Other)`

---

