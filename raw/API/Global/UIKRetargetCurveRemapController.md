### UIKRetargetCurveRemapController


The blueprint/python API for editing a Curve Remap Op

**方法**:

- `FIKRetargetCurveRemapOpSettings GetSettings()`  
  Get the current op settings as a struct.
       * @return FIKRetargetCurveRemapOpSettings struct with the current settings used by the op.
- `SetSettings(FIKRetargetCurveRemapOpSettings InSettings)`  
  Set the op settings. Input is a custom struct type for this op.
       * @param InSettings a FIKRetargetCurveRemapOpSettings struct containing all the settings to apply to this op

---

