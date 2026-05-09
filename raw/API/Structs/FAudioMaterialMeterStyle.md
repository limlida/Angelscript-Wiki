### FAudioMaterialMeterStyle


Represents the appearance of an Audio Material Meter

**属性**:

- `int DecibelsPerHash [How wide to draw the decibel scale, if it's enabled]`
- `FVector2f DesiredSize [Desired Draw size of the rendered material]`
- `FSlateFontInfo Font [Font family and size to be used when displaying the meter scale.]`
- `UMaterialInterface Material [Material used to render the Slate]`
- `FLinearColor MeterFillBackgroundColor [The meter's Background Fill color value.]`
- `FLinearColor MeterFillMaxColor [The meter's Fill color value representing the Ending section of the fill.]`
- `FLinearColor MeterFillMidColor [The meter's Fill color value representing the Middle section of the fill.]`
- `FLinearColor MeterFillMinColor [The meter's Fill color value representing the Starting section of the fill.]`
- `FVector2D MeterPadding [How much padding to add around the meter]`
- `float32 ScaleHashHeight [The height of each hash mark]`
- `float32 ScaleHashOffset [Offset for the hashes]`
- `float32 ScaleHashWidth [The width of each hash mark]`
- `FVector2D ValueRangeDb [The minimum and maximum value to display in dB (values are clamped in this range)]`
- `bool bScaleSide [Which side to show the scale. If vertical, true means left side, false means right side. If horizontal, true means above, false means below.]`
- `bool bShowScale [Whether or not to show the decibel scale alongside the meter]`


**方法**:

- `FAudioMaterialMeterStyle& opAssign(FAudioMaterialMeterStyle Other)`

---

