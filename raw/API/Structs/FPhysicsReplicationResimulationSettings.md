### FPhysicsReplicationResimulationSettings


Default settings for physics replication using EPhysicsReplicationMode::Resimulation

**属性**:

- `float32 ResimulationErrorAngularVelocityThreshold [Enable angular velocity error threshold to trigger resimulation and set velocity degrees / second before a state discrepancy triggers a resimulation]`
- `float32 ResimulationErrorLinearVelocityThreshold [Enable linear velocity error threshold to trigger resimulation and set velocity difference in centimeters / second before a state discrepancy triggers a resimulation]`
- `float32 ResimulationErrorPositionThreshold [Enable positional error threshold to trigger resimulation and set distance in centimeters before a state discrepancy triggers a resimulation]`
- `float32 ResimulationErrorRotationThreshold [Enable rotational error threshold to trigger resimulation and set rotation difference in degrees before a state discrepancy triggers a resimulation]`
- `bool bEnableResimulationErrorAngularVelocityThreshold [Enable angular velocity error threshold to trigger resimulation]`
- `bool bEnableResimulationErrorLinearVelocityThreshold [Enable linear velocity error threshold to trigger resimulation]`
- `bool bEnableResimulationErrorPositionThreshold [Enable positional error threshold to trigger resimulation]`
- `bool bEnableResimulationErrorRotationThreshold [Enable rotational error threshold to trigger resimulation]`


**方法**:

- `FPhysicsReplicationResimulationSettings& opAssign(FPhysicsReplicationResimulationSettings Other)`

---

