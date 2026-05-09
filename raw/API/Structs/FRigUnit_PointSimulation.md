### FRigUnit_PointSimulation


Performs point based simulation
Note: Disabled for now.

**属性**:

- `FRigVMFourPointBezier Bezier [If the simulation has at least four points they will be stored in here.]`
- `TArray<FRigUnit_PointSimulation_BoneTarget> BoneTargets [The bones to map to the simulated points.]`
- `TArray<FCRSimSoftCollision> CollisionVolumes [The collision volumes to define]`
- `FRigUnit_PointSimulation_DebugSettings DebugSettings [Debug draw settings for this simulation]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable nodes together]`
- `TArray<FCRSimPointForce> Forces [The forces to apply]`
- `ERigVMSimPointIntegrateType IntegratorType [The type of integrator to use]`
- `TArray<FCRSimLinearSpring> Links [The links to connect the points with]`
- `TArray<FRigVMSimPoint> Points [The points to simulate]`
- `FVector PrimaryAimAxis [The primary axis to use for the aim]`
- `FVector SecondaryAimAxis [The secondary axis to use for the aim]`
- `float32 SimulatedStepsPerSecond [The frame rate of the simulation]`
- `float32 VerletBlend [The amount of blending to apply per second ( only for verlet integrations )]`
- `bool bLimitLocalPosition [If set to true bones are placed within the original distance of
the previous local transform. This can be used to avoid stretch.]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_PointSimulation& opAssign(FRigUnit_PointSimulation Other)`

---

