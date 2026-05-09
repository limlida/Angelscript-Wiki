### FRigUnit_SpringInterpQuaternionV2


Uses a simple spring model to interpolate a quaternion from Current to Target.

**属性**:

- `FVector AngularVelocity [Angular velocity]`
- `float32 CriticalDamping [The amount of damping in the spring.
Set it smaller than 1 to make the spring oscillate before stabilizing on the target.
Set it equal to 1 to reach the target without overshooting.
Set it higher than one to make the spring take longer to reach the target.]`
- `FQuat Current [Current position of the spring.]`
- `FQuat Result [New position of the spring after delta time.]`
- `float32 Strength [The spring strength determines how hard it will pull towards the target. The value is the frequency
at which it will oscillate when there is no damping.]`
- `FQuat Target [Rest/target position of the spring.]`
- `float32 TargetVelocityAmount [The amount that the velocity should be passed through to the spring. A value of 1 will result in more
responsive output, but if the input is noisy or has step changes, these discontinuities will be passed
through to the output much more than if a smaller value such as 0 is used.]`
- `FVector Torque [Extra torque to apply (since the moment of inertia is 1, this is also the angular acceleration).]`
- `bool bInitializeFromTarget [If true, then the initial value will be taken from the target value, and not from the current value.]`
- `bool bUseCurrentInput [If true, then the Current input will be used to initialize the state, and is required to be a variable that
holds the current state. If false then the Target value will be used to initialize the state and the Current
input will be ignored/unnecessary as a state will be maintained by this node.]`


**方法**:

- `FRigUnit_SpringInterpQuaternionV2& opAssign(FRigUnit_SpringInterpQuaternionV2 Other)`

---

