### FPhysicsControlTarget


Defines a target position and orientation, and also the target velocity and angular velocity.
In many cases the velocities will be calculated automatically (e.g. when setting the target position,
the component will optionally calculate an implied velocity. However, the user can also specify a
target velocity directly. Note that the velocity influences the control through the damping parameters
in FPhysicsControlData

**属性**:

- `FVector TargetAngularVelocity [The target angular velocity (revolutions per second) of the child body, relative to the parent body]`
- `FRotator TargetOrientation [The target orientation of the child body, relative to the parent body]`
- `FVector TargetPosition [The target position of the child body, relative to the parent body]`
- `FVector TargetVelocity [The target velocity of the child body, relative to the parent body]`
- `bool bApplyControlPointToTarget [Whether to use the ControlPoint as an offset for the target transform, as well as the
physical body. If true then the target TM is treated as a target transform for the actual
object, though the control is still applied through the control point (which is at the
center of mass by default). If false then it is treated as a target transform for the
control point on the object.]`


**方法**:

- `FPhysicsControlTarget& opAssign(FPhysicsControlTarget Other)`

---

