### FBodyInstanceCore


**属性**:

- `bool bAutoWeld [If true and is attached to a parent, the two bodies will be joined into a single rigid body. Physical settings like collision profile and body settings are determined by the root]`
- `bool bEnableGravity [If object should have the force of gravity applied]`
- `bool bGenerateWakeEvents [Should 'wake/sleep' events fire when this object is woken up or put to sleep by the physics simulation.]`
- `bool bGyroscopicTorqueEnabled [Enabled/disables whether this body is affected by gyroscopic torque, mainly useful for long/thin objects that spin]`
- `bool bOverrideMass [If true, mass will not be automatically computed and you must set it directly]`
- `bool bSimulatePhysics [If true, this body will use simulation. If false, will be 'fixed' (ie kinematic) and move where it is told.
For a Skeletal Mesh Component, simulating requires a physics asset setup and assigned on the SkeletalMesh asset.
For a Static Mesh Component, simulating requires simple collision to be setup on the StaticMesh asset.]`
- `bool bStartAwake [If object should start awake, or if it should initially be sleeping]`
- `bool bUpdateKinematicFromSimulation [When kinematic, whether the actor transform should be updated as a result of movement in the simulation, rather than immediately whenever a target transform is set.]`
- `bool bUpdateMassWhenScaleChanges [If true, it will update mass when scale change *]`


**方法**:

- `FBodyInstanceCore& opAssign(FBodyInstanceCore Other)`

---

