### FRigUnit_PoseGetDelta


Compares two pose caches and compares their values.

**属性**:

- `float32 CurveThreshold [The delta threshold for curve value difference. 0.0 disables curve differences.]`
- `ERigElementType ElementType`
- `FRigElementKeyCollection ItemsToCompare [An optional list of items to compare]`
- `FRigElementKeyCollection ItemsWithDelta []`
- `FRigPose PoseA`
- `FRigPose PoseB`
- `bool PosesAreEqual []`
- `float32 PositionThreshold [The delta threshold for a translation / position difference. 0.0 disables position differences.]`
- `float32 RotationThreshold [The delta threshold for a rotation difference (in degrees). 0.0 disables rotation differences.]`
- `float32 ScaleThreshold [The delta threshold for a scale difference. 0.0 disables scale differences.]`
- `ERigVMTransformSpace Space [Defines in which space transform deltas should be computed]`


**方法**:

- `FRigUnit_PoseGetDelta& opAssign(FRigUnit_PoseGetDelta Other)`

---

