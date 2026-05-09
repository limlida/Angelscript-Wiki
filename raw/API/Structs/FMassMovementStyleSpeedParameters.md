### FMassMovementStyleSpeedParameters


Movement style consists of multiple speeds which are assigned to agents based on agents unique ID.
Same speed is assigned consistently for the same ID.

**属性**:

- `float32 Probability [Probability to assign this speed.]`
- `float32 Speed [Desired speed]`
- `float32 Variance [How much default desired speed is varied randomly.]`


**方法**:

- `FMassMovementStyleSpeedParameters& opAssign(FMassMovementStyleSpeedParameters Other)`

---

