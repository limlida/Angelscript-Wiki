### FVehicleInputRateConfig


**属性**:

- `float32 FallRate [Rate at which the input value falls]`
- `EInputFunctionType InputCurveFunction [Controller input curve, various predefined options, linear, squared, or user can specify a custom curve function]`
- `float32 RiseRate [Rate at which the input value rises]`
- `FRuntimeFloatCurve UserCurve [Controller input curve - should be a normalized float curve, i.e. time from 0 to 1 and values between 0 and 1
This curve is only sued if the InputCurveFunction above is set to CustomCurve]`


**方法**:

- `FVehicleInputRateConfig& opAssign(FVehicleInputRateConfig Other)`

---

