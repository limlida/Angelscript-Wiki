### FAnimNode_RotationMultiplier


Simple controller that multiplies scalar value to the translation/rotation/scale of a single bone.

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
- `float32 Multiplier [To make these to be easily pin-hookable, I'm not making it struct, but each variable
0.f is invalid, and default]`
- `EBoneAxis RotationAxisToRefer []`
- `FBoneReference SourceBone [Source to get transform from]`
- `FBoneReference TargetBone [Name of bone to control. This is the main bone chain to modify from.]`
- `bool bAlphaBoolEnabled`
- `bool bIsAdditive []`


**方法**:

- `FAnimNode_RotationMultiplier& opAssign(FAnimNode_RotationMultiplier Other)`

---

