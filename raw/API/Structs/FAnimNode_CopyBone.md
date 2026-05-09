### FAnimNode_CopyBone


Simple controller to copy a bone's transform to another one.

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `EBoneControlSpace ControlSpace [Space to convert transforms into prior to copying components]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `FBoneReference SourceBone [Source Bone Name to get transform from]`
- `FBoneReference TargetBone [Name of bone to control. This is the main bone chain to modify from. *]`
- `bool bAlphaBoolEnabled`
- `bool bCopyRotation [If Rotation should be copied]`
- `bool bCopyScale [If Scale should be copied]`
- `bool bCopyTranslation [If Translation should be copied]`


**方法**:

- `FAnimNode_CopyBone& opAssign(FAnimNode_CopyBone Other)`

---

