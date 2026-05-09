### FIKRetargetScaleSourceOpSettings


**属性**:

- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `EScaleSourcePivot ScalePivot`
- `FBoneReference ScalePivotBone []`
- `float SourceScaleFactor [Range 0.01 to +inf. Default 1. Scales the incoming source pose. Affects entire skeleton and all IK goals.]`
- `bool bProjectScalePivotToFloor`


**方法**:

- `FIKRetargetScaleSourceOpSettings& opAssign(FIKRetargetScaleSourceOpSettings Other)`

---

