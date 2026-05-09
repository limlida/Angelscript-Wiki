### FPoseSearchTrajectorySample


**属性**:

- `FLinearColor DebugColor []`
- `int Flags [This allows the user to define what information from the channel you want to compare to.]`
- `FName NormalizationGroup [if set, all the channels of the same class with the same cardinality, and the same NormalizationGroup, will be normalized together.
for example in a locomotion database of a character holding a weapon, containing non mirrorable animations, you'd still want to normalize together
left foot and right foot position and velocity]`
- `float32 Offset [the data relative to the sampling time associated to this FPoseSearchTrajectorySample will be offsetted by Offset seconds.
For example, Flags is Position, and Offset is 0.5, this channel will try to match the future position of the trajectory 0.5 seconds ahead]`
- `float32 Weight []`


**方法**:

- `FPoseSearchTrajectorySample& opAssign(FPoseSearchTrajectorySample Other)`

---

