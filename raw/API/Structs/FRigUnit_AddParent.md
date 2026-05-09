### FRigUnit_AddParent


Adds a new parent to an element. The weight for the new parent will be 0.0.
You can use the SetParentWeights node to change the parent weights later.

If you just want to add a space to a control you can use the 'Add Spaces' node.

**属性**:

- `FRigElementKey Child [* The child to be parented under the new parent]`
- `FName DisplayLabel [* The optional display label for the parent constraint / space]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKey Parent [* The new parent to be added to the child]`


**方法**:

- `FRigUnit_AddParent& opAssign(FRigUnit_AddParent Other)`

---

