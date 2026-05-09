### FRigUnit_SwitchParent


Switches an element to a new parent.

**属性**:

- `FRigElementKey Child [The child to switch to a new parent]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `ERigSwitchParentMode Mode [Depending on this the child will switch to the world,
       * back to its default or to the item provided by the Parent pin]`
- `FRigElementKey Parent [The optional parent to switch to. This is only used if the mode is set to 'Parent Item']`
- `bool bMaintainGlobal [If set to true the item will maintain its global transform,
       * otherwise it will maintain local]`


**方法**:

- `FRigUnit_SwitchParent& opAssign(FRigUnit_SwitchParent Other)`

---

