### FMassMovementStyleParameters


Movement style parameters. A movement style abstracts movement properties for specific style. Behaviors can refer to specific styles when handling speeds.

**属性**:

- `TArray<FMassMovementStyleSpeedParameters> DesiredSpeeds [Array of desired speeds (cm/s) assigned to agents based on probability.]`
- `FMassMovementStyleRef Style [Style of the movement]`


**方法**:

- `FMassMovementStyleParameters& opAssign(FMassMovementStyleParameters Other)`

---

