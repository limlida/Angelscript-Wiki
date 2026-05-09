### FVehicleThrustConfig


**属性**:

- `FName BoneName [Bone name on mesh where thrust is located]`
- `float32 MaxControlAngle [The angle in degrees through which the control surface moves - leave at 0 if it is a fixed surface]`
- `float32 MaxThrustForce [Maximum thrust force]`
- `FVector Offset [Additional offset to give the location, or use in preference to the bone]`
- `FVector ThrustAxis [Up Axis of thrust.]`
- `EVehicleThrustType ThrustType [Does this aerofoil represent a fixed spoiler, an aircraft wing, etc how is controlled.]`


**方法**:

- `FVehicleThrustConfig& opAssign(FVehicleThrustConfig Other)`

---

