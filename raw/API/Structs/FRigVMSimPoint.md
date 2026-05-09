### FRigVMSimPoint


**属性**:

- `float32 InheritMotion [Defines how much the point will inherit motion from its input.
This does not have an effect on passive (mass == 0.0) points.
Values can be higher than 1 due to timestep - but they are clamped internally.]`
- `float32 LinearDamping [The linear damping of the point]`
- `FVector LinearVelocity [The velocity of the point per second]`
- `float32 Mass [The mass of the point]`
- `FVector Position [The position of the point]`
- `float32 Size [Size of the point - only used for collision]`


**方法**:

- `FRigVMSimPoint& opAssign(FRigVMSimPoint Other)`

---

