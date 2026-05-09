### FConeConstraint


Cone constraint

**属性**:

- `float32 ContactDistance [Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.]`
- `float32 Damping [Damping of the soft constraint. Only used when Soft Constraint is on.]`
- `float32 Restitution [Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.]`
- `float32 Stiffness [Stiffness of the soft constraint. Only used when Soft Constraint is on.]`
- `float32 Swing1LimitDegrees [Angle of movement along the XY plane. This defines the first symmetric angle of the cone.]`
- `EAngularConstraintMotion Swing1Motion [Indicates whether the Swing1 limit is used.]`
- `float32 Swing2LimitDegrees [Angle of movement along the XZ plane. This defines the second symmetric angle of the cone.]`
- `EAngularConstraintMotion Swing2Motion [Indicates whether the Swing2 limit is used.]`
- `bool bSoftConstraint [Whether we want to use a soft constraint (spring).]`


**方法**:

- `FConeConstraint& opAssign(FConeConstraint Other)`

---

