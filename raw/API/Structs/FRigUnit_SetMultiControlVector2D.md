### FRigUnit_SetMultiControlVector2D


SetMultiControlVector2D is used to perform a change in the hierarchy by setting multiple controls' vector2D value.

**属性**:

- `TArray<FRigUnit_SetMultiControlVector2D_Entry> Entries [The array of control-vector2D pairs to be processed]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_SetMultiControlVector2D& opAssign(FRigUnit_SetMultiControlVector2D Other)`

---

