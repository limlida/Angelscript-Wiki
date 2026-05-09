### FIKRigStretchLimbSettings


**属性**:

- `FName EndBone [The end bone assigned to this solver (usually the foot or ball).]`
- `FName Goal [The end bone assigned to this solver (usually the foot or ball).]`
- `int Iterations [Number of FABRIK iterations to correct bones lengths. Adjust until the end bone converges on the goal. Default is 8.]`
- `float MaximumStretchDistance [The maximum distance the limb is allowed to stretch (beyond its rest length). Default is -1.0 (no limit).]`
- `float RotateEndBoneWithGoal [Allow the end bone to be reoriented (0) or match the orientation of the goal (1). Range is 0-1. Default is 1.0.]`
- `EStretchLimbRotationMode RotationMode [Determines how to affect the orientation of the bones in the chain.]`
- `EStretchLimbSquashMode SquashMode [Control the falloff shape of the squash effect applied to the bones when the goal compresses the limb. Default is Uniform.
NOTE: this has no effect if the Squash Strength is 0.]`
- `float SquashStrength [The distance to squash the bones perpendicular to the pole vector when the limb is fully compressed.
NOTE: tune this to help dense chains achieve a reasonable pose. Must be used with constraint iterations to fix bones lengths.]`
- `FName StartBone [The start bone assigned to this solver (usually the thigh or shoulder).]`
- `float StretchStartPercent [The percentage of the bone chain length to straighten before stretching is applied (can prevent over extension).
NOTE: At 1.0, the limb will not stretch until the goal is 100% of the length of the limb away from the root of the chain.]`
- `bool bEnableStretching [Determines whether to squash or stretch the bones to reach the goal.]`


**方法**:

- `FIKRigStretchLimbSettings& opAssign(FIKRigStretchLimbSettings Other)`

---

