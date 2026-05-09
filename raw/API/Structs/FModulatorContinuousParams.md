### FModulatorContinuousParams


**属性**:

- `float32 Default [The default value to be used if the parameter is not found.]`
- `float32 MaxInput [The maximum input value. Values will be clamped to the [MinInput, MaxInput] range.]`
- `float32 MaxOutput [The maximum output value. The input value will be scaled from the range [MinInput, MaxInput] to [MinOut, MaxOutput]]`
- `float32 MinInput [The minimum input value. Values will be clamped to the [MinInput, MaxInput] range.]`
- `float32 MinOutput [The minimum output value. The input value will be scaled from the range [MinInput, MaxInput] to [MinOut, MaxOutput]]`
- `ModulationParamMode ParamMode [The mode with which to treat the input value]`
- `FName ParameterName [The name of the sound instance parameter that specifies the current value.]`


**方法**:

- `FModulatorContinuousParams& opAssign(FModulatorContinuousParams Other)`

---

