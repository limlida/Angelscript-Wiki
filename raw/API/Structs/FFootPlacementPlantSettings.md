### FFootPlacementPlantSettings


**属性**:

- `float32 AnkleTwistReduction [How much we reduce the procedural ankle twist adjustment used to align the foot to the ground slope.]`
- `float32 DistanceToGround [At this distance from the planting plane the bone is considered planted and will be fully aligned.]`
- `EFootPlacementLockType LockType []`
- `float32 MaxExtensionRatio [Max extension ratio of the chain, calculated from the remaining length between current pose and full limb extension]`
- `float32 MinExtensionRatio [Min extension ratio of the chain, calculated from the total limb length, and adjusted along the approach direction]`
- `float32 ReplantAngleRatio [Below this value, proportional to UnplantAngle, the bone will replant]`
- `float32 ReplantRadiusRatio [Below this value, proportional to UnplantRadius, the bone will replant]`
- `float32 SeparatingDistance [The minimum distance the feet can be from the plane that separates the feet.
Value of 0 disables this]`
- `float32 SpeedThreshold [Bone is considered planted below this speed. Value is obtained from FKSpeedCurveName]`
- `float32 UnalignmentSpeedThreshold [Speed at which we transition to fully unplanted.
The range between SpeedThreshold and UnalignmentSpeedThreshold should roughly represent the roll-phase of the foot
TODO: This feels innaccurate most of the time, and varies depending on anim speed. Improve this]`
- `float32 UnplantAngle [How much angular deviation (in degrees) causes the constraint to be released for replant]`
- `float32 UnplantRadius [How much linear deviation causes the constraint to be released]`
- `bool bAdjustHeelBeforePlanting [Whether to allow adjusting the heel lift before we plant]`
- `bool bReconstructWorldPlantFromVelocity [Only consider world deltas caused by played velocity. This is useful when on a moving platform i.e. but won't consider slopes.]`


**方法**:

- `FFootPlacementPlantSettings& opAssign(FFootPlacementPlantSettings Other)`

---

