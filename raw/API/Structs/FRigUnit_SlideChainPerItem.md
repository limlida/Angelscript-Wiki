### FRigUnit_SlideChainPerItem


Slides an existing chain along itself with control over extrapolation.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKeyCollection Items [The items to slide]`
- `float32 SlideAmount [The amount of sliding. This unit is multiple of the chain length.]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_SlideChainPerItem& opAssign(FRigUnit_SlideChainPerItem Other)`

---

