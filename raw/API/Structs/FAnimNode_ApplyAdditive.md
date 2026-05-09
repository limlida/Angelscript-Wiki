### FAnimNode_ApplyAdditive


**属性**:

- `FPoseLink Additive`
- `float32 Alpha`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FPoseLink Base`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_ApplyAdditive& opAssign(FAnimNode_ApplyAdditive Other)`

---

