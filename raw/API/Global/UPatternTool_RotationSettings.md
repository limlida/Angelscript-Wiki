### UPatternTool_RotationSettings


Settings for Per Element Rotation in the Pattern Tool

**属性**:

- `FRotator EndRotation [Rotation applied to last Pattern Elements for Interpolated rotation]`
- `FRotator Jitter [Upper bound of the range which is sampled to randomly rotate each Pattern Element if Jitter is true]`
- `FRotator StartRotation [Rotation applied to all Pattern Elements, or to first Pattern Element for Interpolated rotation]`
- `bool bInterpolate [If true, Rotation is linearly interpolated between StartRotation and Rotation values]`
- `bool bJitter [If true, Rotation at each Pattern Element is offset by a uniformly chosen random value in the range of [-RotationJitterRange, RotationJitterRange]]`

---

