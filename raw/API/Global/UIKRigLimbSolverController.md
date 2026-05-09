### UIKRigLimbSolverController


The blueprint/python API for modifying an Full-Body IK solver's settings in an IK Rig.
* Can adjust Solver, Goal and Bone settings.

**方法**:

- `FIKRigLimbSolverSettings GetSolverSettings()`  
  Get the current solver settings as a struct.
       * @return FIKRigLimbSolverSettings struct with the current settings used by the solver.
- `SetSolverSettings(FIKRigLimbSolverSettings InSettings)`  
  Set the solver settings. Input is a custom struct type for this solver.
       * @param InSettings a FIKRigLimbSolverSettings struct containing all the settings to apply to this solver

---

