### UAudioMaterialMeter


Meter is rendered by using material instead of texture.

* No Children

**属性**:

- `TArray<FMeterChannelInfo> MeterChannelInfo [The current meter value to display.]`
- `EOrientation Orientation [The Meter's orientation.]`
- `FAudioMaterialMeterStyle WidgetStyle [The meter's style]`


**方法**:

- `TArray<FMeterChannelInfo> GetMeterChannelInfo() const`  
  Gets the current linear values of the meter.
- `SetMeterChannelInfo(TArray<FMeterChannelInfo> InMeterChannelInfo)`  
  Sets the current meter values.

---

