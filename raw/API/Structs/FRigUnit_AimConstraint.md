### FRigUnit_AimConstraint


**属性**:

- `EAimMode AimMode [# How to perform an aim]`
- `TArray<FAimTarget> AimTargets`
- `FVector AimVector [# Vector in the space of Named joint which will be aligned to the aim target]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FName Joint`
- `EAimMode UpMode [# How to perform an upvector stabilization]`
- `TArray<FAimTarget> UpTargets`
- `FVector UpVector [# Vector in the space of Named joint which will be aligned to the up target for stabilization]`


**方法**:

- `FRigUnit_AimConstraint& opAssign(FRigUnit_AimConstraint Other)`

---

