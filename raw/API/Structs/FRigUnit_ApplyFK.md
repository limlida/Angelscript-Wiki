### FRigUnit_ApplyFK


**属性**:

- `EApplyTransformMode ApplyTransformMode`
- `ETransformSpaceMode ApplyTransformSpace`
- `FName BaseJoint [Transform op option. Use if ETransformSpace is BaseJoint]`
- `FTransform BaseTransform [Transform op option. Use if ETransformSpace is BaseTransform]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FTransformFilter Filter [The filter determines what axes can be manipulated by the in-viewport widgets]`
- `FName Joint`
- `FTransform Transform`


**方法**:

- `FRigUnit_ApplyFK& opAssign(FRigUnit_ApplyFK Other)`

---

