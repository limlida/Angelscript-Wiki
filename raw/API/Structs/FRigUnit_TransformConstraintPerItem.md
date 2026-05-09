### FRigUnit_TransformConstraintPerItem


Constrains an item's transform to multiple items' transforms

**属性**:

- `FRigElementKey BaseItem [Transform op option. Use if ETransformSpace is BaseJoint]`
- `FTransform BaseTransform [Transform op option. Use if ETransformSpace is BaseTransform]`
- `ETransformSpaceMode BaseTransformSpace`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Item`
- `TArray<FConstraintTarget> Targets`
- `bool bUseInitialTransforms [If checked the initial transform will be used for the constraint data]`


**方法**:

- `FRigUnit_TransformConstraintPerItem& opAssign(FRigUnit_TransformConstraintPerItem Other)`

---

