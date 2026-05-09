### FVehicleEngineConfig


**属性**:

- `float32 EngineBrakeEffect [Braking effect from engine, when throttle released]`
- `float32 EngineIdleRPM [Idle RMP of engine then in neutral/stationary]`
- `float32 EngineRevDownRate [Affects how fast the engine RPM slows down]`
- `float32 EngineRevUpMOI [Affects how fast the engine RPM speed up]`
- `float32 MaxRPM [Maximum revolutions per minute of the engine]`
- `float32 MaxTorque [Max Engine Torque (Nm) is multiplied by TorqueCurve]`
- `FRuntimeFloatCurve TorqueCurve [Torque [Normalized 0..1] for a given RPM]`


**方法**:

- `FVehicleEngineConfig& opAssign(FVehicleEngineConfig Other)`

---

