### UInputModifierDeadZone


Dead Zone
Input values within the range LowerThreshold -> UpperThreshold will be remapped from 0 -> 1.
Values outside this range will be clamped.

**属性**:

- `float32 LowerThreshold [Threshold below which input is ignored
This value should always be lower then the UpperThreshold.]`
- `EDeadZoneType Type`
- `float32 UpperThreshold [Threshold above which input is clamped to 1]`

---

