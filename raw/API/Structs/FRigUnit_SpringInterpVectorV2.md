### FRigUnit_SpringInterpVectorV2


Uses a simple spring model to interpolate a vector from Current to Target.

**属性**:

- `float32 CriticalDamping [The amount of damping in the spring.
Set it smaller than 1 to make the spring oscillate before stabilizing on the target.
Set it equal to 1 to reach the target without overshooting.
Set it higher than one to make the spring take longer to reach the target.]`
- `FVector Current [Current position of the spring.]`
- `FVector Force [Extra force to apply (since the mass is 1, this is also the acceleration).]`
- `FVector Result [New position of the spring after delta time.]`
- `float32 Strength [The spring strength determines how hard it will pull towards the target. The value is the frequency
at which it will oscillate when there is no damping.]`
- `FVector Target [Rest/target position of the spring.]`
- `float32 TargetVelocityAmount [The amount that the velocity should be passed through to the spring. A value of 1 will result in more
responsive output, but if the input is noisy or has step changes, these discontinuities will be passed
through to the output much more than if a smaller value such as 0 is used.]`
- `FVector Velocity [Velocity]`
- `bool bInitializeFromTarget [If true, then the initial value will be taken from the target value, and not from the current value.]`
- `bool bUseCurrentInput [If true, then the Current input will be used to initialize the state, and is required to be a variable that
holds the current state. If false then the Target value will be used to initialize the state and the Current
input will be ignored/unnecessary as a state will be maintained by this node.]`


**方法**:

- `FRigUnit_SpringInterpVectorV2& opAssign(FRigUnit_SpringInterpVectorV2 Other)`

---

