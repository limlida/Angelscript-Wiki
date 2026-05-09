### FRigUnit_DistributeRotationForItemArray


Distributes rotations provided across a array of items.
Each rotation is expressed by a quaternion and a ratio, where the ratio is between 0.0 and 1.0
Note: This node adds rotation in local space of each item!

**属性**:

- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `TArray<FRigElementKey> Items [The items to use to distribute the rotation]`
- `ERigVMAnimEasingType RotationEaseType [The easing to use between to rotations.]`
- `TArray<FRigUnit_DistributeRotation_Rotation> Rotations [The list of rotations to be applied]`
- `float32 Weight [The weight of the solver - how much the rotation should be applied]`


**方法**:

- `FRigUnit_DistributeRotationForItemArray& opAssign(FRigUnit_DistributeRotationForItemArray Other)`

---

