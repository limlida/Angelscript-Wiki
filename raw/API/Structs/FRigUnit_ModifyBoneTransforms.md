### FRigUnit_ModifyBoneTransforms


ModifyBonetransforms is used to perform a change in the hierarchy by setting one or more bones' transforms.

**属性**:

- `TArray<FRigUnit_ModifyBoneTransforms_PerBone> BoneToModify [The bones to modify.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `EControlRigModifyBoneMode Mode [Defines if the bone's transform should be set
in local or global space, additive or override.]`
- `float32 Weight [At 1 this sets the transform, between 0 and 1 the transform is blended with previous results.]`
- `float32 WeightMaximum [The maximum of the weight - defaults to 1.0]`
- `float32 WeightMinimum [The minimum of the weight - defaults to 0.0]`


**方法**:

- `FRigUnit_ModifyBoneTransforms& opAssign(FRigUnit_ModifyBoneTransforms Other)`

---

