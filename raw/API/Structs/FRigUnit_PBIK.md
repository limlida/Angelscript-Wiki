### FRigUnit_PBIK


* Based on a Position Based solver at core, this node can solve multi chains within a root using multi effectors

**属性**:

- `TArray<FPBIKBoneSetting> BoneSettings [Per-bone settings to control the resulting pose. Includes limits and preferred angles.]`
- `FPBIKDebug Debug [Debug drawing options.]`
- `TArray<FPBIKEffector> Effectors [An array of effectors. These specify target transforms for different parts of the skeleton.]`
- `TArray<FName> ExcludedBones [These bones will be excluded from the solver. They will not bend and will not contribute to the constraint set.
Use the ExcludedBones array instead of setting Rotation Stiffness to very high values or Rotation Limits with zero range.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FName Root [This is usually the top-most skinned bone; often the "Pelvis" or "Hips", but can be set to any bone.
Bones above the root will be ignored by the solver.
Bones that are located *between* the Root and the effectors will be included in the solve.]`
- `FPBIKSolverSettings Settings [Global solver settings.]`


**方法**:

- `FRigUnit_PBIK& opAssign(FRigUnit_PBIK Other)`

---

