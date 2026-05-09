### FVehicleTransmissionConfig


**属性**:

- `float32 ChangeDownRPM [Engine Revs at which gear down change ocurrs]`
- `float32 ChangeUpRPM [Engine Revs at which gear up change ocurrs]`
- `float32 FinalRatio [The final gear ratio multiplies the transmission gear ratios.]`
- `TArray<float32> ForwardGearRatios [Forward gear ratios]`
- `float32 GearChangeTime [Time it takes to switch gears (seconds)]`
- `TArray<float32> ReverseGearRatios [Reverse gear ratio(s)]`
- `float32 TransmissionEfficiency [Mechanical frictional losses mean transmission might operate at 0.94 (94% efficiency)]`
- `bool bUseAutoReverse []`
- `bool bUseAutomaticGears [Whether to use automatic transmission]`


**方法**:

- `FVehicleTransmissionConfig& opAssign(FVehicleTransmissionConfig Other)`

---

