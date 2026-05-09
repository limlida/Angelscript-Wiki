### FFootPlacemenLegDefinition


**属性**:

- `FBoneReference BallBone [Secondary plant bone. For feet, use the ball joint.]`
- `FName DisableLegCurveName [Curve to disable the effect of footplacement on this leg]`
- `FName DisableLockCurveName [Name of the curve representing the alpha of the locking alpha.
This allows you to disable locking precisely, instead of relying on the procedural mechanism based on springs and foot analysis]`
- `FBoneReference FKFootBone [Bone to be planted. For feet, use the heel/ankle joint.]`
- `FBoneReference IKFootBone [TODO: can we optionally output as an attribute?]`
- `int NumBonesInLimb []`
- `FName SpeedCurveName [Name of the curve representing the foot/ball speed. Not required in Graph speed mode]`


**方法**:

- `FFootPlacemenLegDefinition& opAssign(FFootPlacemenLegDefinition Other)`

---

