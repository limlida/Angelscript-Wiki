### FPhysicsControlModifierData


Analogous to the ControlData, this indicates how an individual controlled body should move

**属性**:

- `ECollisionEnabled CollisionType [The collision type. Note that PhysicsControlComponent uses the full filtering, but
RigidBodyWithControl just treats this as enable/disable collision]`
- `float32 GravityMultiplier [How much gravity to use when simulating - typically between 0 and 1]`
- `EPhysicsControlKinematicTargetSpace KinematicTargetSpace [The space in which kinematic targets should operate]`
- `EPhysicsMovementType MovementType [How the body should move.]`
- `float32 PhysicsBlendWeight [When converting back from simulation to animation, how much to use the simulation output
versus the original animation input.
Note - this is not used in RBWC]`
- `bool bUpdateKinematicFromSimulation [If true then the associated actor's transform will be updated from the simulation when it is
kinematic. This is most likely useful when using async physics in order to prevent different
parts of the skeleton from being torn apart.
Note - this is not used in RBWC]`


**方法**:

- `FPhysicsControlModifierData& opAssign(FPhysicsControlModifierData Other)`

---

