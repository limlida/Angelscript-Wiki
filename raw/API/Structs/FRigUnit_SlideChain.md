### FRigUnit_SlideChain


Slides an existing chain along itself with control over extrapolation.

**属性**:

- `FName EndBone [The name of the last bone to slide]`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `float32 SlideAmount [The amount of sliding. This unit is multiple of the chain length.]`
- `FName StartBone [The name of the first bone to slide]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_SlideChain& opAssign(FRigUnit_SlideChain Other)`

---

