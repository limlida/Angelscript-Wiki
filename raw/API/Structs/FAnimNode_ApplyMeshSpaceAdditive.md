### FAnimNode_ApplyMeshSpaceAdditive


**属性**:

- `FPoseLink Additive`
- `float32 Alpha [The float value that controls the alpha blending when the alpha input type is set to 'Float']`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType [The data type used to control the alpha blending of the additive pose.
              Note: Changing this value will disconnect alpha input pins.]`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FPoseLink Base`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `bool bAlphaBoolEnabled [The boolean value that controls the alpha blending when the alpha input type is set to 'Bool']`
- `bool bRootSpaceAdditive`


**方法**:

- `FAnimNode_ApplyMeshSpaceAdditive& opAssign(FAnimNode_ApplyMeshSpaceAdditive Other)`

---

