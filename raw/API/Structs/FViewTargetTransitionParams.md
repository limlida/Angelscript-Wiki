### FViewTargetTransitionParams


A set of parameters to describe how to transition between view targets.

**属性**:

- `float32 BlendExp [Exponent, used by certain blend functions to control the shape of the curve.]`
- `EViewTargetBlendFunction BlendFunction [Function to apply to the blend parameter.]`
- `float32 BlendTime [Total duration of blend to pending view target. 0 means no blending.]`
- `bool bLockOutgoing [If true, lock outgoing viewtarget to last frame's camera POV for the remainder of the blend.
This is useful if you plan to teleport the old viewtarget, but don't want to affect the blend.]`


**方法**:

- `FViewTargetTransitionParams& opAssign(FViewTargetTransitionParams Other)`

---

