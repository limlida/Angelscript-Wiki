### UIKRigSetTransformController


The blueprint/python API for modifying Set Transform settings in an IK Rig.

**方法**:

- `FIKRigSetTransformSettings GetSolverSettings()`  
  Get the current solver settings as a struct.
       * @return FIKRigSetTransformSettings struct with the current settings used by the solver.
- `SetSolverSettings(FIKRigSetTransformSettings InSettings)`  
  Set the solver settings. Input is a custom struct type for this solver.
       * @param InSettings a FIKRigSetTransformSettings struct containing all the settings to apply to this solver

---

