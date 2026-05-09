### FRigUnit_ModifyTransforms


Modify Transforms is used to perform a change in the hierarchy by setting one or more bones' transforms

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `TArray<FRigUnit_ModifyTransforms_PerItem> ItemToModify [The items to modify.]`
- `EControlRigModifyBoneMode Mode [Defines if the bone's transform should be set
in local or global space, additive or override.]`
- `float32 Weight [At 1 this sets the transform, between 0 and 1 the transform is blended with previous results.]`
- `float32 WeightMaximum [The maximum of the weight - defaults to 1.0]`
- `float32 WeightMinimum [The minimum of the weight - defaults to 0.0]`


**方法**:

- `FRigUnit_ModifyTransforms& opAssign(FRigUnit_ModifyTransforms Other)`

---

