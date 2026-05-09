### FTrajectorySampleInfo


Encapsulates detailed trajectory sample info, from a move that has already occurred or one projected into the future

**属性**:

- `FRotator AngularVelocity [Rotational velocity (world space, degrees/sec)]`
- `FVector InstantaneousAcceleration [Acceleration at the time of this sample (world space, units/sec^2)]`
- `FVector LinearVelocity [Velocity at the time of this sample (world space, units/sec)]`
- `float SimTimeMs [Time stamp of this sample, in server simulation time]`
- `FTransform Transform [Position and orientation (world space)]`


**方法**:

- `FTrajectorySampleInfo& opAssign(FTrajectorySampleInfo Other)`

---

