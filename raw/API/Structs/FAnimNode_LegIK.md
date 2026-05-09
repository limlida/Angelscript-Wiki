### FAnimNode_LegIK


**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `TArray<FAnimLegIKDefinition> LegsDefinition []`
- `int MaxIterations [Max Number of Iterations.]`
- `float32 ReachPrecision [Tolerance for reaching IK Target, in unreal units.]`
- `float32 SoftAlpha [Default is 1.0 (full). Range is 0 to 1. Blends the effect of the "softness" on/off.]`
- `float32 SoftPercentLength [Default is 1.0 (off). Range is 0.1 to 1.0. When set to a value less than 1, will "softly" approach full extension starting when the effector
distance from the root of the chain is greater than this percent length of the bone chain. Typical values are around 0.97.
This is useful for preventing the knee from "popping" when approaching full extension.]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_LegIK& opAssign(FAnimNode_LegIK Other)`

---

