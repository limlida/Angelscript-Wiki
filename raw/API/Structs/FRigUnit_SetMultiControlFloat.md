### FRigUnit_SetMultiControlFloat


SetMultiControlFloat is used to perform a change in the hierarchy by setting multiple controls' float value.

**属性**:

- `TArray<FRigUnit_SetMultiControlFloat_Entry> Entries [The array of control-float pairs to be processed]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetMultiControlFloat& opAssign(FRigUnit_SetMultiControlFloat Other)`

---

