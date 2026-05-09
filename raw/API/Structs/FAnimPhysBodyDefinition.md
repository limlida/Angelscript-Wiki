### FAnimPhysBodyDefinition


**属性**:

- `FVector BoxExtents [Extents of the box to use for simulation]`
- `AnimPhysCollisionType CollisionType [Resolution method for planar limits]`
- `FAnimPhysConstraintSetup ConstraintSetup [Data describing the constraints we will apply to the body]`
- `FVector LocalJointOffset [Vector relative to the body being simulated to attach the constraint to]`
- `float32 SphereCollisionRadius [Radius to use if CollisionType is set to CustomSphere]`


**方法**:

- `FAnimPhysBodyDefinition& opAssign(FAnimPhysBodyDefinition Other)`

---

