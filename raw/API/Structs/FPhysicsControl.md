### FPhysicsControl


Structure that determines a "control" - this contains all the information needed to drive (with spring-dampers)
a child body relative to a parent body. These bodies will be associated with either a static or skeletal mesh.

**属性**:

- `FName ChildBoneName [The name of the skeletal mesh bone or the name of the static mesh body that the control
will be driving.]`
- `FPhysicsControlData ControlData [Strength and damping parameters. Can be modified at any time, but will sometimes have
been set once during initialization]`
- `FPhysicsControlMultiplier ControlMultiplier [Multiplier for the ControlData. This will typically be modified dynamically, and also expose the ability
to set directional strengths]`
- `FName ParentBoneName [The name of the skeletal mesh bone or the name of the static mesh body that will be doing the driving.]`


**方法**:

- `FPhysicsControl& opAssign(FPhysicsControl Other)`

---

