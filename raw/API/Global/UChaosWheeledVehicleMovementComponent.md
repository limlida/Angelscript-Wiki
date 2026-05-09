### UChaosWheeledVehicleMovementComponent


**属性**:

- `FVehicleDifferentialConfig DifferentialSetup [Differential]`
- `FVehicleEngineConfig EngineSetup [Engine]`
- `FVehicleSteeringConfig SteeringSetup [Transmission data]`
- `FVehicleTransmissionConfig TransmissionSetup [Transmission data]`
- `TArray<FChaosWheelSetup> WheelSetups [Wheels to create]`
- `FCollisionResponseContainer WheelTraceCollisionResponses []`
- `TArray<TObjectPtr<UChaosVehicleWheel>> Wheels [Our instanced wheels]`
- `bool bLegacyWheelFrictionPosition []`
- `bool bMechanicalSimEnabled []`
- `bool bSuspensionEnabled []`
- `bool bWheelFrictionEnabled []`


**方法**:

- `EnableMechanicalSim(bool InState)`  
  Enable or completely bypass the ProcessMechanicalSimulation call
- `EnableSuspension(bool InState)`  
  Enable or completely bypass the ApplySuspensionForces call
- `EnableWheelFriction(bool InState)`  
  Enable or completely bypass the ApplyWheelFrictionForces call
- `float32 GetEngineMaxRotationSpeed() const`  
  Get current engine's max rotation speed
- `float32 GetEngineRotationSpeed() const`  
  Get current engine's rotation speed
- `int GetNumWheels() const`
- `FWheeledSnaphotData GetSnapshot() const`  
  Grab a snapshot of the vehicle instance dynamic state
- `FWheelStatus GetWheelState(int WheelIndex) const`  
  Get a wheels current simulation state
- `SetABSEnabled(int WheelIndex, bool Enabled)`
- `SetAffectedByBrake(int WheelIndex, bool Enabled)`
- `SetAffectedByEngine(int WheelIndex, bool Enabled)`
- `SetAffectedByHandbrake(int WheelIndex, bool Enabled)`
- `SetAffectedBySteering(int WheelIndex, bool Enabled)`
- `SetBrakeTorque(float32 BrakeTorque, int WheelIndex)`
- `SetDifferentialFrontRearSplit(float32 FrontRearSlpit)`
- `SetDownforceCoefficient(float32 DownforceCoeff)`
- `SetDragCoefficient(float32 DragCoeff)`
- `SetDriveTorque(float32 DriveTorque, int WheelIndex)`
- `SetMaxEngineTorque(float32 Torque)`  
  change handling via blueprint at runtime
- `SetSnapshot(FWheeledSnaphotData SnapshotIn)`  
  Set snapshot of vehicle instance dynamic state
- `SetSuspensionParams(float32 Rate, float32 Damping, float32 Preload, float32 MaxRaise, float32 MaxDrop, int WheelIndex)`
- `SetTorqueCombineMethod(ETorqueCombineMethod InCombineMethod, int WheelIndex)`
- `SetTractionControlEnabled(int WheelIndex, bool Enabled)`
- `SetWheelClass(int WheelIndex, TSubclassOf<UChaosVehicleWheel> InWheelClass)`
- `SetWheelFrictionMultiplier(int WheelIndex, float32 Friction)`
- `SetWheelHandbrakeTorque(int WheelIndex, float32 Torque)`
- `SetWheelMaxBrakeTorque(int WheelIndex, float32 Torque)`
- `SetWheelMaxSteerAngle(int WheelIndex, float32 AngleDegrees)`
- `SetWheelRadius(int WheelIndex, float32 Radius)`
- `SetWheelSlipGraphMultiplier(int WheelIndex, float32 Multiplier)`

---

