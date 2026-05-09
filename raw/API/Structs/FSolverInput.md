### FSolverInput


**属性**:

- `float32 AngularMotionStrength [* This value is applied to the target information for effectors, which influence back to
* Joint's motion that are affected by the end effector
* The reason min/max is used when we apply the depth through the chain that are affected]`
- `float32 Damping [The precision to use for the fabrik solver]`
- `float32 DefaultTargetClamp [This is a scale value (range from 0-0.7) that is used to stablize the target vector. If less, it's more stable, but it can reduce speed of converge.]`
- `float32 LinearMotionStrength [* This value is applied to the target information for effectors, which influence back to
* Joint's motion that are affected by the end effector
* The reason min/max is used when we apply the depth through the chain that are affected]`
- `int MaxIterations [The maximum number of iterations. Values between 4 and 16 are common.]`
- `float32 MinAngularMotionStrength []`
- `float32 MinLinearMotionStrength []`
- `float32 Precision [The precision to use for the solver]`
- `bool bUseJacobianTranspose [Cheaper solution than default Jacobian Pseudo Inverse Damped Least Square]`


**方法**:

- `FSolverInput& opAssign(FSolverInput Other)`

---

