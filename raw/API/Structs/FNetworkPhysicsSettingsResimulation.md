### FNetworkPhysicsSettingsResimulation


**属性**:

- `float32 AngVelStabilityMultiplier [Overrides CVar: np2.Resim.AngVelStabilityMultiplier -- Recommended range between 0.0-1.0. Lower value means more stable angular velocity corrections.]`
- `float32 PosStabilityMultiplier [Overrides CVar: np2.Resim.PosStabilityMultiplier -- Recommended range between 0.0-1.0. Lower value means more stable positional corrections.]`
- `float32 ResimulationErrorAngularVelocityThreshold [Overrides Project Settings -> Physics -> Replication -> Physics Prediction -> Resimulation Error Angular Velocity Threshold -- Degrees / second that the object is allowed to desync from the server before triggering a resimulation, within this threshold runtime correction can be performed if RuntimeCorrectionEnabled is true.]`
- `FNetworkPhysicsSettingsResimulationErrorCorrection ResimulationErrorCorrectionSettings []`
- `float32 ResimulationErrorLinearVelocityThreshold [Overrides Project Settings -> Physics -> Replication -> Physics Prediction -> Resimulation Error Linear Velocity Threshold -- Velocity difference in centimeters / second that the object is allowed to desync from the server before triggering a resimulation, within this threshold runtime correction can be performed if RuntimeCorrectionEnabled is true.]`
- `float32 ResimulationErrorPositionThreshold [Overrides Project Settings -> Physics -> Replication -> Physics Prediction -> Resimulation Error Position Threshold -- Distance that the object is allowed to desync from the server before triggering a resimulation, within this threshold runtime correction can be performed if RuntimeCorrectionEnabled is true.]`
- `float32 ResimulationErrorRotationThreshold [Overrides Project Settings -> Physics -> Replication -> Physics Prediction -> Resimulation Error Rotation Threshold -- Rotation difference in degrees that the object is allowed to desync from the server before triggering a resimulation, within this threshold runtime correction can be performed if RuntimeCorrectionEnabled is true.]`
- `float32 RotStabilityMultiplier [Overrides CVar: np2.Resim.RotStabilityMultiplier -- Recommended range between 0.0-1.0. Lower value means more stable rotational corrections.]`
- `float32 VelStabilityMultiplier [Overrides CVar: np2.Resim.VelStabilityMultiplier -- Recommended range between 0.0-1.0. Lower value means more stable linear velocity corrections.]`
- `bool bOverrideAngVelStabilityMultiplier`
- `bool bOverridePosStabilityMultiplier`
- `bool bOverrideResimulationErrorAngularVelocityThreshold`
- `bool bOverrideResimulationErrorLinearVelocityThreshold`
- `bool bOverrideResimulationErrorPositionThreshold [Override properties]`
- `bool bOverrideResimulationErrorRotationThreshold`
- `bool bOverrideRotStabilityMultiplier`
- `bool bOverrideRuntimeCorrectConnectedBodies`
- `bool bOverrideRuntimeCorrectionEnabled`
- `bool bOverrideRuntimeVelocityCorrection`
- `bool bOverrideVelStabilityMultiplier`
- `bool bRuntimeCorrectConnectedBodies [Overrides CVar: np2.Resim.RuntimeCorrectConnectedBodies -- If true runtime position and rotation correction will also shift transform of any connected physics objects. Used if RuntimeCorrectionEnabled is true.]`
- `bool bRuntimeCorrectionEnabled [Overrides CVar: np2.Resim.RuntimeCorrectionEnabled -- Apply positional and rotational runtime corrections while within resim trigger distance.]`
- `bool bRuntimeVelocityCorrection [Overrides CVar: np2.Resim.RuntimeVelocityCorrection -- Apply linear and angular velocity corrections in runtime while within resim trigger distance. Used if RuntimeCorrectionEnabled is true.]`


**方法**:

- `FNetworkPhysicsSettingsResimulation& opAssign(FNetworkPhysicsSettingsResimulation Other)`

---

