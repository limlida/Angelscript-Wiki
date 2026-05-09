### FHairSimulationSetup


**属性**:

- `float32 AngularVelocityScale [The amount of angular velocities sent to the local groom space from the reference bone]`
- `float32 LinearVelocityScale [The amount of linear velocities sent to the local groom space from the reference bone]`
- `FString LocalBone [Bone used for the simulation local space]`
- `float32 TeleportDistance [Teleport distance threshold to reset the simulation]`
- `bool bDebugSimulation [Boolean to make the simulation strands visible]`
- `bool bLocalSimulation [Strands simulation is done in local space]`
- `bool bResetSimulation [Boolean to control if we want to reset trhe simulation at some point in time]`


**方法**:

- `FHairSimulationSetup& opAssign(FHairSimulationSetup Other)`

---

