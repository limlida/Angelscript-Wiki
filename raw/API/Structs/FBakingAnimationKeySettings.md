### FBakingAnimationKeySettings


**属性**:

- `EBakingKeySettings BakingKeySettings [Bake on keyed frames only or bake all frames between start and end]`
- `FFrameNumber EndFrame`
- `int FrameIncrement [Frames to increment when baking]`
- `FFrameNumber StartFrame`
- `float32 Tolerance [Tolerance to use when reducing keys]`
- `bool bReduceKeys [Reduce keys after baking]`
- `bool bTimeWarp [Bake with time warp applied. If there is time warp on the sequence, you will need to disable it manually after baking, otherwise times will be warped twice.]`


**方法**:

- `FBakingAnimationKeySettings& opAssign(FBakingAnimationKeySettings Other)`

---

