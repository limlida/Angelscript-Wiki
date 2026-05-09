### FTwistConstraint


Angular roll constraint

**属性**:

- `float32 ContactDistance [Determines how close to the limit we have to get before turning the joint on. Larger value will be more expensive, but will do a better job not violating constraints. A smaller value will be more efficient, but easier to violate.]`
- `float32 Damping [Damping of the soft constraint. Only used when Soft Constraint is on.]`
- `float32 Restitution [Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead.]`
- `float32 Stiffness [Stiffness of the soft constraint. Only used when Soft Constraint is on.]`
- `float32 TwistLimitDegrees [Symmetric angle of roll along the X-axis.]`
- `EAngularConstraintMotion TwistMotion [Indicates whether the Twist limit is used.]`
- `bool bSoftConstraint [Whether we want to use a soft constraint (spring).]`


**方法**:

- `FTwistConstraint& opAssign(FTwistConstraint Other)`

---

