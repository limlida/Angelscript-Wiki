### FAnimNode_TwoWayBlend


This represents a baked transition

**属性**:

- `FPoseLink A`
- `float32 Alpha [The float value that controls the alpha blending when the alpha input type is set to 'Float']`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName [The animation curve that controls the alpha blending when the alpha input type is set to 'Curve']`
- `EAnimAlphaInputType AlphaInputType [The data type used to control the alpha blending between the A and B poses.
              Note: Changing this value will disconnect alpha input pins.]`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FPoseLink B`
- `bool bAlphaBoolEnabled [The boolean value that controls the alpha blending when the alpha input type is set to 'Bool']`
- `bool bAlwaysUpdateChildren [Always update children, regardless of whether or not that child has weight.]`
- `bool bResetChildOnActivation [This reinitializes child pose when re-activated. For example, when active child changes]`


**方法**:

- `FAnimNode_TwoWayBlend& opAssign(FAnimNode_TwoWayBlend Other)`

---

