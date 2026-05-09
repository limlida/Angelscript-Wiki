### FMassMovementParameters


Parameters describing how this mass agent should move

**属性**:

- `float32 DefaultDesiredSpeed [Default desired speed (cm/s).]`
- `float32 DefaultDesiredSpeedVariance [How much default desired speed is varied randomly.]`
- `float32 HeightSmoothingTime [The time it takes the entity position to catchup to the requested height.]`
- `float32 MaxAcceleration [200..600 Smaller steering maximum acceleration makes the steering more \"calm\" but less opportunistic, may not find solution, or gets stuck.]`
- `float32 MaxSpeed [Maximum speed (cm/s).]`
- `TArray<FMassMovementStyleParameters> MovementStyles [List of supported movement styles for this configuration.]`
- `bool bIsCodeDrivenMovement [Indicate whether mass AI has direct control over the mass agent's velocity. If true, desired velocity will be written directly to velocity every frame]`


**方法**:

- `FMassMovementParameters& opAssign(FMassMovementParameters Other)`

---

