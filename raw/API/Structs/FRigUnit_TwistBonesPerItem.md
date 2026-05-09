### FRigUnit_TwistBonesPerItem


Creates a gradient of twist rotation along a collection of items.

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FRigElementKeyCollection Items [The items to twist]`
- `FVector PoleAxis [The axis to use for the pole vector for each bone]`
- `FVector TwistAxis [The axis to twist the bones around]`
- `ERigVMAnimEasingType TwistEaseType [The easing to use between two twists.]`
- `float32 Weight [The weight of the solver - how much the rotation should be applied]`
- `bool bPropagateToChildren [If set to true all of the global transforms of the children
of this bone will be recalculated based on their local transforms.
Note: This is computationally more expensive than turning it off.]`


**方法**:

- `FRigUnit_TwistBonesPerItem& opAssign(FRigUnit_TwistBonesPerItem Other)`

---

