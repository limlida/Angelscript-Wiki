### FAnimNode_WarpTest


**属性**:

- `float32 SecondsToWait [every SecondsToWait we warp to the next Transforms[i]]`
- `FPoseLink Source`
- `TArray<FTransform> Transforms [the node will warp the character looping between Transforms[i] choosing the next one every SecondsToWait]`


**方法**:

- `FAnimNode_WarpTest& opAssign(FAnimNode_WarpTest Other)`

---

