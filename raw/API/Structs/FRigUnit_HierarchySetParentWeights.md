### FRigUnit_HierarchySetParentWeights


Sets the item's parents' weights

**属性**:

- `FRigElementKey Child [* The child to set the parents' weights for]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `TArray<FRigElementWeight> Weights [* The weights to set for the child's parents.
* The number of weights needs to match the current number of parents.]`


**方法**:

- `FRigUnit_HierarchySetParentWeights& opAssign(FRigUnit_HierarchySetParentWeights Other)`

---

