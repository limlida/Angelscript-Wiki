### UChaosVehicleWheel


**属性**:

- `EAxleType AxleType [If left undefined then the bAffectedByEngine value is used, if defined then bAffectedByEngine is ignored and the differential setup on the vehicle defines which wheels get power from the engine]`
- `UStaticMesh CollisionMesh [Static mesh with collision setup for wheel, will be used to create wheel shape
(if empty, sphere will be added as wheel shape, check bDontCreateShape flag)]`
- `float32 CorneringStiffness [Tyre Cornering Ability]`
- `ETorqueCombineMethod ExternalTorqueCombineMethod [Determines how the SetDriveTorque/SetBrakeTorque inputs are combined with the internal torques]`
- `float32 FrictionForceMultiplier [Friction Force Multiplier]`
- `FRuntimeFloatCurve LateralSlipGraph []`
- `float32 MaxBrakeTorque [max brake torque for this wheel (Nm)]`
- `float32 MaxHandBrakeTorque [Max handbrake brake torque for this wheel (Nm). A handbrake should have a stronger brake torque
than the brake. This will be ignored for wheels that are not affected by the handbrake.]`
- `float32 MaxSteerAngle [steer angle in degrees for this wheel]`
- `float32 MaxWheelspinRotation [Max Wheelspin rotation rad/sec]`
- `FVector Offset [If BoneName is specified, offset the wheel from the bone's location.
Otherwise this offsets the wheel from the vehicle's origin.]`
- `float32 RollbarScaling [Anti-roll effect]`
- `float32 SideSlipModifier [Wheel Lateral Skid Grip Loss, lower number less grip on skid]`
- `float32 SkidThreshold [Wheel Lateral Skid Threshold]`
- `float32 SlipThreshold [Wheel Longitudinal Slip Threshold]`
- `float32 SpringPreload [Spring Preload (N/m)]`
- `float32 SpringRate [Spring Force (N/m)]`
- `FVector SuspensionAxis [Local body direction in which where suspension forces are applied (typically along -Z-axis)]`
- `float32 SuspensionDampingRatio [Suspension damping, larger value causes the suspension to come to rest faster [range 0 to 1]]`
- `FVector SuspensionForceOffset [Vertical offset from where suspension forces are applied (along Z-axis)]`
- `float32 SuspensionMaxDrop [How far the wheel can drop below the resting position]`
- `float32 SuspensionMaxRaise [How far the wheel can go above the resting position]`
- `int SuspensionSmoothing [Smooth suspension [0-off, 10-max] - Warning might cause momentary visual inter-penetration of the wheel against objects/terrain]`
- `ESweepShape SweepShape [Wheel suspension trace type, defaults to ray trace]`
- `ESweepType SweepType [Whether wheel suspension considers simple, complex]`
- `float32 WheelLoadRatio [Amount wheel load effects wheel friction.
                  At 0 wheel friction is completely independent of the loading on the wheel (This is artificial as it always assumes even balance between all wheels)
                  At 1 wheel friction is based on the force pressing wheel into the ground. This is more realistic.
                  Lower value cures lift off over-steer, generally makes vehicle easier to handle under extreme motions.]`
- `float32 WheelMass [Mass of the wheel Kg]`
- `float32 WheelRadius [Radius of the wheel]`
- `float32 WheelWidth [Width of the wheel]`
- `bool bABSEnabled [Advanced Braking System Enabled]`
- `bool bAffectedByBrake [Whether brake should affect this wheel]`
- `bool bAffectedByEngine [Whether engine should power this wheel]`
- `bool bAffectedByHandbrake [Whether handbrake should affect this wheel]`
- `bool bAffectedBySteering [Whether steering should affect this wheel]`
- `bool bTractionControlEnabled [Straight Line Traction Control Enabled]`


**方法**:

- `EAxleType GetAxleType()`
- `float32 GetRotationAngle() const`
- `float32 GetRotationAngularVelocity() const`
- `float32 GetSteerAngle() const`
- `FVector GetSuspensionAxis() const`
- `float32 GetSuspensionOffset() const`
- `float32 GetWheelAngularVelocity() const`
- `float32 GetWheelRadius() const`
- `bool IsInAir() const`

---

