### FRigUnit_SetControlTranslationOffset


SetControlTranslationOffset is used to perform a change in the hierarchy by setting a single control's translation offset.
This is typically only used during the Construction Event.

**属性**:

- `FName Control [The name of the Control to set the transform for.]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FVector Offset [The input translation offset to set on the control]`
- `ERigVMTransformSpace Space [Defines if the control's transform should be set
in local or global space.]`


**方法**:

- `FRigUnit_SetControlTranslationOffset& opAssign(FRigUnit_SetControlTranslationOffset Other)`

---

