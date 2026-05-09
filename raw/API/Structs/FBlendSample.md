### FBlendSample


Sample data

**属性**:

- `UAnimSequence Animation [For linked animations]`
- `uint FrameIndexToSample [Single Frame Blending: If selected, instead of using the entire animation sequence, only the specified single frame is used for sampling the animation]`
- `float32 RateScale []`
- `FVector SampleValue [blend 0->x, blend 1->y, blend 2->z]`
- `bool bIncludeInAnalyseAll [Whether or not this sample will be moved when the "analyse all" button is used. Note that, even if disabled,
it will still be available for individual sample analysis/moving]`
- `bool bUseSingleFrameForBlending []`


**方法**:

- `FBlendSample& opAssign(FBlendSample Other)`

---

