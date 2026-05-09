### FAnimNode_BlendStackInput


Input pose that links the blend stack's sample graph with the sample/pose chosen by the blend stack.
    @Todo: It might be better to reuse FAnimNode_LinkedInputPose, since we will most likely need variable input pins in the future too.

**属性**:

- `float32 PlayRate [The play rate multiplier. Can be negative, which will cause the animation to play in reverse.]`
- `bool bOverridePlayRate [If true, the PlayRate input from thos node will override the SequencePlayer or BlendSpacePlayer playrate each frame]`


**方法**:

- `FAnimNode_BlendStackInput& opAssign(FAnimNode_BlendStackInput Other)`

---

