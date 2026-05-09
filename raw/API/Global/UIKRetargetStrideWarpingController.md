### UIKRetargetStrideWarpingController


The blueprint/python API for editing a Stride Warping Op

**方法**:

- `FIKRetargetStrideWarpingOpSettings GetSettings()`  
  Get the current op settings as a struct.
       * @return FIKRetargetStrideWarpingOpSettings struct with the current settings used by the op.
- `SetSettings(FIKRetargetStrideWarpingOpSettings InSettings)`  
  Set the solver settings. Input is a custom struct type for this solver.
       * @param InSettings a FIKRetargetStrideWarpingOpSettings struct containing all the settings to apply to this op

---

