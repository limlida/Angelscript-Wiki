### FPhysicalAnimationData


Stores info on the type of motor that will be used for a given bone

**属性**:

- `float32 AngularVelocityStrength [The strength used to correct angular velocity error]`
- `float32 MaxAngularForce [The max force used to correct angular errors]`
- `float32 MaxLinearForce [The max force used to correct linear errors]`
- `float32 OrientationStrength [The strength used to correct orientation error]`
- `float32 PositionStrength [The strength used to correct linear position error. Only used for non-local simulation]`
- `float32 VelocityStrength [The strength used to correct linear velocity error. Only used for non-local simulation]`
- `bool bIsLocalSimulation [Whether the drive targets are in world space or local]`


**方法**:

- `FPhysicalAnimationData& opAssign(FPhysicalAnimationData Other)`

---

