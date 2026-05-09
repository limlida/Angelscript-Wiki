### FRigUnit_SetMultiControlInteger


SetMultiControlInteger is used to perform a change in the hierarchy by setting multiple controls' integer value.

**属性**:

- `TArray<FRigUnit_SetMultiControlInteger_Entry> Entries [The array of control-integer pairs to be processed]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetMultiControlInteger& opAssign(FRigUnit_SetMultiControlInteger Other)`

---

