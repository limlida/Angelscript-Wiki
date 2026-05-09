### FRigVMFunction_VerletIntegrateVector


Simulates a single position over time using Verlet integration. It is recommended to use SpringInterp instead as it
is more accurate and stable, and has more meaningful parameters.

**属性**:

- `FVector Acceleration []`
- `float32 Blend [The amount of blending to apply per second]`
- `float32 Damp [The amount of damping to apply ( 0.0 to 1.0, but usually really low like 0.005 )]`
- `FVector Force [The force feeding into the solver. Can be used for gravity.]`
- `FVector Position []`
- `float32 Strength [The strength of the verlet spring]`
- `FVector Target`
- `FVector Velocity []`


**方法**:

- `FRigVMFunction_VerletIntegrateVector& opAssign(FRigVMFunction_VerletIntegrateVector Other)`

---

