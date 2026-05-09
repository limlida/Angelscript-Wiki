### FAnimNode_CopyBoneDelta


Simple controller to copy a transform relative to the ref pose to the target bone,
instead of the copy bone node which copies the absolute transform

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `CopyBoneDeltaMode CopyMode []`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 RotationMultiplier`
- `float32 ScaleMultiplier`
- `FBoneReference SourceBone []`
- `FBoneReference TargetBone []`
- `float32 TranslationMultiplier`
- `bool bAlphaBoolEnabled`
- `bool bCopyRotation`
- `bool bCopyScale`
- `bool bCopyTranslation`


**方法**:

- `FAnimNode_CopyBoneDelta& opAssign(FAnimNode_CopyBoneDelta Other)`

---

