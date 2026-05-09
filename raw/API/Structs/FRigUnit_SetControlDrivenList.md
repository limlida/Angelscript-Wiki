### FRigUnit_SetControlDrivenList


SetControlDrivenList is used to change the list of affected controls of an indirect control

**属性**:

- `FName Control [The name of the Control to set the list for]`
- `TArray<FRigElementKey> Driven [The list of affected controls]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`


**方法**:

- `FRigUnit_SetControlDrivenList& opAssign(FRigUnit_SetControlDrivenList Other)`

---

