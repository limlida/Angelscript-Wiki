### FRigUnit_SetMultiControlRotator


SetMultiControlRotator is used to perform a change in the hierarchy by setting multiple controls' rotator value.

**属性**:

- `TArray<FRigUnit_SetMultiControlRotator_Entry> Entries [The array of control-rotator pairs to be processed]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetMultiControlRotator& opAssign(FRigUnit_SetMultiControlRotator Other)`

---

