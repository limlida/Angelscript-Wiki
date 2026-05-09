### FNetworkPhysicsSettingsPredictiveInterpolation


**属性**:

- `float32 PosCorrectionTimeBase [Overrides CVar: np2.PredictiveInterpolation.PosCorrectionTimeBase -- Base time to correct positional offset over. RoundTripTime * PosCorrectionTimeMultiplier is added on top of this.]`
- `float32 PosCorrectionTimeMin [Overrides CVar: np2.PredictiveInterpolation.PosCorrectionTimeMin -- Min time to correct positional offset over. DeltaSeconds is added on top of this.]`
- `float32 PosCorrectionTimeMultiplier [Overrides CVar: np2.PredictiveInterpolation.PosCorrectionTimeMultiplier -- Multiplier to adjust how much of RoundTripTime to add to positional offset correction.]`
- `float32 PosInterpolationTimeMultiplier [Overrides CVar: np2.PredictiveInterpolation.InterpolationTimeMultiplier -- Multiplier to adjust the interpolation time which is based on the sendrate of state data from the server.]`
- `float32 RotCorrectionTimeBase [Overrides CVar: np2.PredictiveInterpolation.RotCorrectionTimeBase -- Base time to correct rotational offset over. RoundTripTime * RotCorrectionTimeMultiplier is added on top of this.]`
- `float32 RotCorrectionTimeMin [Overrides CVar: np2.PredictiveInterpolation.RotCorrectionTimeMin -- Min time to correct rotational offset over. DeltaSeconds is added on top of this.]`
- `float32 RotCorrectionTimeMultiplier [Overrides CVar: np2.PredictiveInterpolation.RotCorrectionTimeMultiplier -- Multiplier to adjust how much of RoundTripTime to add to rotational offset correction.]`
- `float32 RotInterpolationTimeMultiplier [Overrides CVar: np2.PredictiveInterpolation.RotInterpolationTimeMultiplier -- Multiplier to adjust the rotational interpolation time which is based on the sendrate of state data from the server.]`
- `float32 SoftSnapPosStrength [Overrides CVar: np2.PredictiveInterpolation.SoftSnapPosStrength -- Value in percent between 0.0 - 1.0 representing how much to softsnap each tick of the remaining positional distance.]`
- `float32 SoftSnapRotStrength [Overrides CVar: np2.PredictiveInterpolation.SoftSnapRotStrength -- Value in percent between 0.0 - 1.0 representing how much to softsnap each tick of the remaining rotational distance.]`
- `bool bCorrectConnectedBodies [Overrides CVar: np2.PredictiveInterpolation.CorrectConnectedBodies -- When true, transform corrections will also apply to any connected physics object.]`
- `bool bCorrectConnectedBodiesFriction [Overrides CVar: np2.PredictiveInterpolation.CorrectConnectedBodiesFriction -- When true, transform correction on any connected physics object will also recalculate their friction.]`
- `bool bDisableSoftSnap [Overrides CVar: np2.PredictiveInterpolation.DisableSoftSnap -- When true, predictive interpolation will not use softsnap to correct the replication with when velocity fails. Hardsnap will still eventually kick in if replication can't reach the target.]`
- `bool bOverrideCorrectConnectedBodies`
- `bool bOverrideCorrectConnectedBodiesFriction`
- `bool bOverrideDisableSoftSnap`
- `bool bOverridePosCorrectionTimeBase [Override properties]`
- `bool bOverridePosCorrectionTimeMin`
- `bool bOverridePosCorrectionTimeMultiplier`
- `bool bOverridePosInterpolationTimeMultiplier`
- `bool bOverridePostResimWaitForUpdate`
- `bool bOverrideRotCorrectionTimeBase`
- `bool bOverrideRotCorrectionTimeMin`
- `bool bOverrideRotCorrectionTimeMultiplier`
- `bool bOverrideRotInterpolationTimeMultiplier`
- `bool bOverrideSkipVelocityRepOnPosEarlyOut`
- `bool bOverrideSoftSnapPosStrength`
- `bool bOverrideSoftSnapRotStrength`
- `bool bOverrideSoftSnapToSource`
- `bool bPostResimWaitForUpdate [Overrides CVar: np2.PredictiveInterpolation.PostResimWaitForUpdate -- After a resimulation, wait for replicated states that correspond to post-resim state before processing replication again.]`
- `bool bSkipVelocityRepOnPosEarlyOut [Overrides CVar: np2.PredictiveInterpolation.SkipVelocityRepOnPosEarlyOut -- If true, don't run linear velocity replication if position can early out but angular can't early out.]`
- `bool bSoftSnapToSource [Overrides CVar: np2.PredictiveInterpolation.SoftSnapToSource -- If true, softsnap will be performed towards the source state of the current target instead of the predicted state of the current target.]`


**方法**:

- `FNetworkPhysicsSettingsPredictiveInterpolation& opAssign(FNetworkPhysicsSettingsPredictiveInterpolation Other)`

---

