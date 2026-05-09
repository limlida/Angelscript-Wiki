### FRigUnit_SpringIK


The Spring IK solver uses a verlet integrator to perform an IK solve.
It support custom constraints including distance, length etc.
Note: This node operates in world space!

**属性**:

- `float32 Damping [The higher the value to more quickly the simulation calms down. Values between 0.0001 and 0.75 are common.]`
- `FRigUnit_SpringIK_DebugSettings DebugSettings [The debug setting for the node]`
- `float32 EffectorRatio [Defines the equilibrium of the effector springs.
This value ranges from 0.0 (zero distance) to 1.0 (distance in initial pose)]`
- `float32 EffectorStrength [Sets the coefficient of the springs towards the effector. Values between 1 and 2048 are common.]`
- `FName EndBone [The name of the second bone to solve]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 HierarchyStrength [Sets the coefficient of the springs along the hierarchy. Values between 1 and 2048 are common.]`
- `int Iterations [Drives how precise the solver operates. Values between 4 and 24 are common.
This is only used if the simulation is not live (bLiveSimulation setting).]`
- `FVector PoleVector [The polevector to use for the IK solver
This can be a location or direction.]`
- `EControlRigVectorKind PoleVectorKind [The kind of pole vector this is representing - can be a direction or a location]`
- `FName PoleVectorSpace [The space in which the pole vector is expressed]`
- `FVector PrimaryAxis [The major axis being aligned - along the bone]`
- `float32 RootRatio [Defines the equilibrium of the root springs.
This value ranges from 0.0 (zero distance) to 1.0 (distance in initial pose)]`
- `float32 RootStrength [Sets the coefficient of the springs towards the root. Values between 1 and 2048 are common.]`
- `FVector SecondaryAxis [The minor axis being aligned - towards the pole vector]`
- `FName StartBone [The name of the first bone to solve]`
- `bool bFlipPolePlane [If set to true the pole plane will be flipped]`
- `bool bLimitLocalPosition [If set to true bones are placed within the original distance of
the previous local transform. This can be used to avoid stretch.]`
- `bool bLiveSimulation [If set to true simulation will continue for all intermediate bones over time.]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_SpringIK& opAssign(FRigUnit_SpringIK Other)`

---

