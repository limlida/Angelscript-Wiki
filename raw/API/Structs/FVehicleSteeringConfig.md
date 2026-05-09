### FVehicleSteeringConfig


**属性**:

- `float32 AngleRatio [Only applies when AngleRatio is selected]`
- `FRuntimeFloatCurve SteeringCurve [Maximum steering versus forward speed (MPH)]`
- `ESteeringType SteeringType [Single angle : both wheels steer by the same amount
AngleRatio   : outer wheels on corner steer less than the inner ones by set ratio
Ackermann    : Ackermann steering principle is applied]`


**方法**:

- `FVehicleSteeringConfig& opAssign(FVehicleSteeringConfig Other)`

---

