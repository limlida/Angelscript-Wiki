### FInitialPhysicsControl


Structure that determines a Physics Control used during initialization of the physics control actor

**属性**:

- `TWeakObjectPtr<AActor> ChildActor [The owner of the mesh that the control will be driving]`
- `FName ChildBoneName [If the child mesh component is skeletal, then the name of the skeletal mesh bone that the control
will be driving.]`
- `FName ChildMeshComponentName [The mesh that the control will be driving. If this is blank but there is an actor, then we'll attempt
to use the root component]`
- `FPhysicsControlData ControlData [Strength and damping parameters. Can be modified at any time, but will sometimes have
been set once during initialization]`
- `FPhysicsControlMultiplier ControlMultiplier [Multiplier for the ControlData. This will typically be modified dynamically, and also expose the ability
to set directional strengths]`
- `FPhysicsControlTarget ControlTarget [The position/orientation etc targets for the controls. These are procedural/explicit control targets -
skeletal meshes have the option to use skeletal animation as well, in which case these targets are
expressed as relative to that animation.]`
- `TWeakObjectPtr<AActor> ParentActor [The owner of the mesh that will be doing the driving. Blank/non-existent means it will happen in world space]`
- `FName ParentBoneName [If the parent mesh component is skeletal, then the name of the skeletal mesh bone that will be doing
the driving.]`
- `FName ParentMeshComponentName [The mesh that will be doing the driving. If this is blank but there is an actor, then we'll attempt to
use the root component. If that doesn't work then it will happen in world space.]`


**方法**:

- `FInitialPhysicsControl& opAssign(FInitialPhysicsControl Other)`

---

