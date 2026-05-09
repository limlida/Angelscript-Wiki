### FMassStandingSteeringParameters


**属性**:

- `float32 DeadZoneRadius [How much the target should deviate from the current location before updating the force on the agent.]`
- `float32 LowSpeedThreshold [If the velocity is below this threshold, it is clamped to 0. This allows to prevent jittery movement when trying to be stationary.]`
- `float32 TargetMoveThreshold [How much the ghost should deviate from the target before updating the target.]`
- `float32 TargetMoveThresholdVariance []`
- `float32 TargetSelectionCooldown [Time between updates, varied randomly.]`
- `float32 TargetSelectionCooldownVariance []`
- `float32 TargetSpeedHysteresisScale [How much the max speed can drop before we stop tracking it.]`


**方法**:

- `FMassStandingSteeringParameters& opAssign(FMassStandingSteeringParameters Other)`

---

