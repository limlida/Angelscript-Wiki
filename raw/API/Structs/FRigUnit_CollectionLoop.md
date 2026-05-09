### FRigUnit_CollectionLoop


Given a collection of items, execute iteratively across all items in a given collection

**属性**:

- `FRigElementKeyCollection Collection`
- `FControlRigExecuteContext Completed []`
- `int Count []`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `int Index []`
- `FRigElementKey Item []`
- `float32 Ratio [Ranging from 0.0 (first item) and 1.0 (last item)
This is useful to drive a consecutive node with a
curve or an ease to distribute a value.]`


**方法**:

- `FRigUnit_CollectionLoop& opAssign(FRigUnit_CollectionLoop Other)`

---

