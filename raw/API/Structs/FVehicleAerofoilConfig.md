### FVehicleAerofoilConfig


**属性**:

- `EVehicleAerofoilType AerofoilType [Does this aerofoil represent a fixed spoiler, an aircraft wing, etc how is controlled.]`
- `float32 Area [Area of aerofoil surface [Meters Squared] - larger value creates more lift but also more drag]`
- `FName BoneName [Bone name on mesh where aerofoil is centered]`
- `float32 Camber [camber of wing - leave as zero for a rudder - can be used to trim/level elevator for level flight]`
- `float32 DragMultiplier [cheat to control amount of drag independently from lift, a value of zero will offer no drag]`
- `float32 LiftMultiplier [cheat to control amount of lift independently from lift]`
- `float32 MaxControlAngle [The angle in degrees through which the control surface moves - leave at 0 if it is a fixed surface]`
- `FVector Offset [Additional offset to give the aerofoil.]`
- `float32 StallAngle []`
- `FVector UpAxis [Up Axis of aerofoil.]`


**方法**:

- `FVehicleAerofoilConfig& opAssign(FVehicleAerofoilConfig Other)`

---

