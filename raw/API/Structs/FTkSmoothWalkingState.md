### FTkSmoothWalkingState


Internal state data for the SmoothWalkingMode

**属性**:

- `FVector IntermediateAngularVelocity [Angular velocity of the intermediate spring when using a double spring]`
- `FQuat IntermediateFacing [Intermediate facing direction when using a double spring]`
- `FVector IntermediateVelocity [Intermediate velocity which the velocity spring tracks as a target]`
- `FVector SpringAcceleration [Acceleration of internal velocity spring]`
- `FVector SpringVelocity [Velocity of internal velocity spring]`


**方法**:

- `FTkSmoothWalkingState& opAssign(FTkSmoothWalkingState Other)`

---

