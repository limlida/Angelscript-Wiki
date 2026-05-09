### FRigUnit_ParentSwitchConstraintArray


The Parent Switch Constraint is used to have an item follow one of multiple parents,
and allowing to switch between the parent in question.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FTransform InitialGlobalTransform [The initial global transform for the subject]`
- `int ParentIndex [The parent index to use for constraining the subject]`
- `TArray<FRigElementKey> Parents [The list of parents to constrain to]`
- `FRigElementKey Subject [The subject to constrain]`
- `bool Switched [Returns true if the parent has changed]`
- `FTransform Transform [The transform result (full without weighting)]`
- `float32 Weight [The weight of the change - how much the change should be applied]`


**方法**:

- `FRigUnit_ParentSwitchConstraintArray& opAssign(FRigUnit_ParentSwitchConstraintArray Other)`

---

