### FMovementModeTickEndState


Filled out by a MovementMode during simulation tick to indicate its ending state, allowing for a residual time step and switching modes mid-tick

**属性**:

- `FName NextModeName []`
- `float32 RemainingMs [Any unused tick time]`
- `bool bEndedWithNoChanges [Affirms that no state changes were made during this simulation tick. Can help optimizations if modes set this during sim tick.]`


**方法**:

- `FMovementModeTickEndState& opAssign(FMovementModeTickEndState Other)`

---

