### FRigUnit_TransformConstraint


**属性**:

- `FName BaseBone [Transform op option. Use if ETransformSpace is BaseJoint]`
- `FTransform BaseTransform [Transform op option. Use if ETransformSpace is BaseTransform]`
- `ETransformSpaceMode BaseTransformSpace`
- `FName Bone`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `TArray<FConstraintTarget> Targets`
- `bool bUseInitialTransforms [If checked the initial transform will be used for the constraint data]`


**方法**:

- `FRigUnit_TransformConstraint& opAssign(FRigUnit_TransformConstraint Other)`

---

