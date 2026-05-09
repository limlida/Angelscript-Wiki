### FIKRetargetAdditivePoseOpSettings


**属性**:

- `float32 Alpha [blend the amount of the pose to apply]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `FName PoseToApply [a retarget pose that is applied additively to the output pose of the target skeleton]`


**方法**:

- `FIKRetargetAdditivePoseOpSettings& opAssign(FIKRetargetAdditivePoseOpSettings Other)`

---

