### FConstraintDrive


**属性**:

- `float32 Damping [The damping strength of the drive. Force proportional to the velocity error. In force mode the unit is kg * cm / s^-1. In acceleration mode the unit is cm / s^-1.]`
- `float32 MaxForce [The force limit of the drive.]`
- `float32 Stiffness [The spring strength of the drive. Force proportional to the position error. In force mode the unit is kg * cm / s^-2. In acceleration mode the unit is cm / s^-2.]`
- `bool bEnablePositionDrive [Enables/Disables position drive (orientation if using angular drive)]`
- `bool bEnableVelocityDrive [Enables/Disables velocity drive (angular velocity if using angular drive)]`


**方法**:

- `FConstraintDrive& opAssign(FConstraintDrive Other)`

---

