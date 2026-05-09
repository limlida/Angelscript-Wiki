### FAbcSamplingSettings


**属性**:

- `int FrameEnd [Ending index to stop sampling the animation at]`
- `int FrameStart [Starting index to start sampling the animation from]`
- `int FrameSteps [Steps to take when sampling the animation]`
- `EAlembicSamplingType SamplingType [Type of sampling performed while importing the animation]`
- `float32 TimeSteps [Time steps to take when sampling the animation]`
- `bool bSkipEmpty [Skip empty (pre-roll) frames and start importing at the frame which actually contains data]`


**方法**:

- `FAbcSamplingSettings& opAssign(FAbcSamplingSettings Other)`

---

