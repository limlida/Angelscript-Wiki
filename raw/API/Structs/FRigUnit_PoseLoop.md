### FRigUnit_PoseLoop


Given a pose, execute iteratively across all items in the pose

**属性**:

- `FControlRigExecuteContext Completed []`
- `int Count []`
- `float32 CurveValue []`
- `FRigVMExecutePin ExecutePin [* This property is used to chain multiple mutable units together]`
- `FTransform GlobalTransform []`
- `int Index []`
- `FRigElementKey Item []`
- `FTransform LocalTransform []`
- `FRigPose Pose`
- `float32 Ratio [Ranging from 0.0 (first item) and 1.0 (last item)
This is useful to drive a consecutive node with a
curve or an ease to distribute a value.]`


**方法**:

- `FRigUnit_PoseLoop& opAssign(FRigUnit_PoseLoop Other)`

---

