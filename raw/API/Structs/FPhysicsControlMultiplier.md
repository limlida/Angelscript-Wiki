### FPhysicsControlMultiplier


These parameters allow modification of the parameters in FPhysicsControlData for two reasons:
1. They allow per-axis settings for the linear components (e.g. so you can drive an object
   horizontally but still let it fall under gravity)
2. They make it easy to create the controls with "default" strength/damping (e.g. taken from the
   physics asset) in FPhysicsControlData, and then the strength/damping etc can be scaled every
   tick (typically between 0 and 1, though that is up to the user).

**属性**:

- `float32 AngularDampingRatioMultiplier [Multiplier on the angular damping ratio.]`
- `float32 AngularExtraDampingMultiplier [Multiplier on the angular extra damping.]`
- `float32 AngularStrengthMultiplier [Multiplier on the angular strength.]`
- `FVector LinearDampingRatioMultiplier [Per-direction multiplier on the linear damping ratio.]`
- `FVector LinearExtraDampingMultiplier [Per-direction multiplier on the linear extra damping.]`
- `FVector LinearStrengthMultiplier [Per-direction multiplier on the linear strength.]`
- `FVector MaxForceMultiplier [Per-direction multiplier on the maximum force that can be applied. Note that zero means zero force.]`
- `float32 MaxTorqueMultiplier [Per-direction multiplier on the maximum torque that can be applied. Note that zero means zero torque.]`


**方法**:

- `FPhysicsControlMultiplier& opAssign(FPhysicsControlMultiplier Other)`

---

