### FAngularDriveConstraint


Angular Drive

**属性**:

- `EAngularDriveMode AngularDriveMode [Whether motors use SLERP (spherical lerp) or decompose into a Swing motor (cone constraints) and Twist motor (roll constraints). NOTE: SLERP will NOT work if any of the angular constraints are locked.]`
- `FVector AngularVelocityTarget [Target angular velocity relative to the body reference frame in revolutions per second.]`
- `FRotator OrientationTarget [Target orientation relative to the the body reference frame.]`
- `FConstraintDrive SlerpDrive [Controls the SLERP (spherical lerp) drive between current orientation/velocity and target orientation/velocity. NOTE: This is only available when all three angular limits are either free or limited. Locking any angular limit will turn off the drive implicitly.]`
- `FConstraintDrive SwingDrive [Controls the cone constraint drive between current orientation/velocity and target orientation/velocity. This is available as long as there is at least one swing limit set to free or limited.]`
- `FConstraintDrive TwistDrive [Controls the twist (roll) constraint drive between current orientation/velocity and target orientation/velocity. This is available as long as the twist limit is set to free or limited.]`
- `bool bAccelerationMode [Whether to use acceleration mode for angular drive. The other option is force mode. (default:true)]`


**方法**:

- `FAngularDriveConstraint& opAssign(FAngularDriveConstraint Other)`

---

