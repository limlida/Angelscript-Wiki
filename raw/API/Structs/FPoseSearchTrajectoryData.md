### FPoseSearchTrajectoryData


**属性**:

- `FRuntimeFloatCurve AccelerationRemappingCurve []`
- `float32 BendVelocityTowardsAcceleration [artificially bend character velocity towards acceleration direction to compute trajectory prediction, to get sharper turns
0: character velocity is used with no alteration, 1: the acceleration direction is used as velocity direction]`
- `float32 MaxControllerYawRate [Maximum controller yaw  rate in degrees per second used to clamp the character owner controller desired yaw to generate the prediction trajectory.
Negative values disable the clamping behavior]`
- `float32 RotateTowardsMovementSpeed [If the character is forward facing (i.e. bOrientRotationToMovement is true), this controls how quickly the trajectory will rotate
to face acceleration. It's common for this to differ from the rotation rate of the character, because animations are often authored
with different rotation speeds than the character. This is especially true in cases where the character rotation snaps to movement.]`
- `FRuntimeFloatCurve SpeedRemappingCurve []`
- `bool bUseAccelerationRemappingCurve []`
- `bool bUseSpeedRemappingCurve []`


**方法**:

- `FPoseSearchTrajectoryData& opAssign(FPoseSearchTrajectoryData Other)`

---

