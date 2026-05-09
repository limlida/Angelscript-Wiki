### FTransformTrajectory


A trajectory defined by a range of samples.

The sample range is conformed of history samples, a current sample and future predicted samples.
- History samples have time < 0. Zero or more can be present.
- Current sample has a time of 0. Assumes only one is ever present.
- Predicted samples have a time of > 0. Zero or more can be present.

**属性**:

- `TArray<FTransformTrajectorySample> Samples [This contains zero or more history samples, a current sample, and zero or more future predicted samples.]`


**方法**:

- `FTransformTrajectory& opAssign(FTransformTrajectory Other)`

---

