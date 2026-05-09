### FPhysicsControlData


Contains data associated with how physical bodies should be controlled/directed towards their targets.
The underlying control is done through damped springs, so the parameters here relate to that.

**属性**:

- `float32 AngularDampingRatio [The amount of damping associated with the angular strength. A value of 1 Results in critically
damped motion where the control drives as quickly as possible to the target without overshooting.
Values > 1 result in more damped motion, and values below 1 result in faster, but more "wobbly" motion.]`
- `float32 AngularExtraDamping [The amount of additional angular damping. This is added to the damping that comes from AngularDampingRatio
and can be useful when you want damping even when AngularStrength is zero.]`
- `float32 AngularStrength [The strength used to drive angular motion]`
- `float32 AngularTargetVelocityMultiplier [Multiplier on the angular velocity, which gets applied to the damping. A value of 1 means the animation target
velocity is used, which helps it track the animation. A value of 0 means damping happens in "world space"
- so damping acts like drag on the movement.]`
- `FVector CustomControlPoint [The position of the control point relative to the child mesh, when using a custom control point.]`
- `float32 LinearDampingRatio [The amount of damping associated with the linear strength. A value of 1 Results in critically
damped motion where the control drives as quickly as possible to the target without overshooting.
Values > 1 result in more damped motion, and values below 1 result in faster, but more "wobbly" motion.]`
- `float32 LinearExtraDamping [The amount of additional linear damping. This is added to the damping that comes from LinearDampingRatio
and can be useful when you want damping even when LinearStrength is zero.]`
- `float32 LinearStrength [The strength used to drive linear motion]`
- `float32 LinearTargetVelocityMultiplier [Multiplier on the linear velocity, which gets applied to the damping. A value of 1 means the animation target
velocity is used, which helps it track the animation. A value of 0 means damping happens in "world space"
- so damping acts like drag on the movement.]`
- `float32 MaxForce [The maximum force used to drive the linear motion. Zero indicates no limit.]`
- `float32 MaxTorque [The maximum torque used to drive the angular motion. Zero indicates no limit.]`
- `bool bDisableCollision [Whether or not this control should disable collision between the parent and child bodies (only
has an effect if there is a parent body)]`
- `bool bEnabled [Whether this control should be enabled]`
- `bool bOnlyControlChildObject [If true then the control will only affect the child object, not the parent]`
- `bool bUseCustomControlPoint [Whether or not to use the custom control point position]`
- `bool bUseSkeletalAnimation [If true then the target will be applied on top of the skeletal animation (if there is any)]`


**方法**:

- `FPhysicsControlData& opAssign(FPhysicsControlData Other)`

---

