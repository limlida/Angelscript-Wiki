### UPatternTool_ScaleSettings


Settings for Per Element Scale in the Pattern Tool

**属性**:

- `FVector EndScale [Scale applied to last Pattern Element for Interpolated scale]`
- `FVector Jitter [Upper bound of the range which is sampled to randomly scale each Pattern Element if Jitter is true]`
- `FVector StartScale [Scale applied to all Pattern Elements, or to first Pattern Element for Interpolated scale]`
- `bool bInterpolate [If true, Scale is linearly interpolated between StartScale and Scale values]`
- `bool bJitter [If true, Scale at each Pattern Element is offset by a uniformly chosen random value in the range of [-ScaleJitterRange, ScaleJitterRange]]`
- `bool bProportional [If true, changes to Start Scale, End Scale, and Jitter are proportional along all the axes]`

---

