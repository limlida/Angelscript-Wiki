### FRigVMFunction_TimeLoop


Simulates a time value - and outputs loop information

**属性**:

- `float32 Absolute [the overall time in seconds]`
- `float32 Duration [the duration of a single loop in seconds]`
- `bool Even [true if the iteration of the loop is even]`
- `float32 FlipFlop [the relative time in seconds (within the loop),
going from 0 to duration and then back from duration to 0,
or 0 to 1 and 1 to 0 if Normalize is turned on]`
- `bool Normalize [if set to true the output relative and flipflop
will be normalized over the duration.]`
- `float32 Relative [the relative time in seconds (within the loop)]`
- `float32 Speed`


**方法**:

- `FRigVMFunction_TimeLoop& opAssign(FRigVMFunction_TimeLoop Other)`

---

