### UIKRigFBIKController


The blueprint/python API for modifying an Full-Body IK solver's settings in an IK Rig.
* Can adjust Solver, Goal and Bone settings.

**方法**:

- `FIKRigFBIKBoneSettings GetBoneSettings(FName InBoneName)`  
  Get the settings associated with a particular bone.
       * Note that you must AddBoneSettings() using the IK Rig controller before a bone will have settings on it.
       * @param InBoneName the name of the bone to get settings for
       * @return FIKRigFBIKBoneSettings struct holding all the settings for the specified bone (or empty if the bone did not have settings)
- `FIKRigFBIKGoalSettings GetGoalSettings(FName InGoalName)`  
  Get the settings for the specified goal.
       * @param InGoalName the name of the goal to get settings for
       * @return FIKRigFBIKGoalSettings struct (empty if the specified goal does not belong to this solver)
- `FIKRigFBIKSettings GetSolverSettings()`  
  Get the current solver settings as a struct.
       * @return FIKRigFBIKSettings struct with the current settings used by the solver.
- `SetBoneSettings(FName InBoneName, FIKRigFBIKBoneSettings InSettings)`  
  Apply settings to a given bone
       * @param InBoneName the name of the bone to apply the settings to
       * @param InSettings a FIKRigFBIKBoneSettings struct containing the settings
- `SetGoalSettings(FName InGoalName, FIKRigFBIKGoalSettings InSettings)`  
  Set the settings for the specified goal.
       * @param InGoalName: the name of the goal to assign the settings to.
       * @param InSettings: a custom struct type with all the settings for an FBIK goal
- `SetSolverSettings(FIKRigFBIKSettings InSettings)`  
  Set the solver settings. Input is a custom struct type for this solver.
       * @param InSettings a FIKRigFBIKSettings struct containing all the settings to apply to this solver

---

