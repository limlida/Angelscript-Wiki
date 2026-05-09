### FAnimNode_ModifyBone


Simple controller that replaces or adds to the translation/rotation of a single bone.

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FBoneReference BoneToModify [Name of bone to control. This is the main bone chain to modify from. *]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `FRotator Rotation [New rotation of bone to apply.]`
- `EBoneModificationMode RotationMode [Whether and how to modify the translation of this bone.]`
- `EBoneControlSpace RotationSpace [Reference frame to apply Rotation in.]`
- `FVector Scale [New Scale of bone to apply. This is only worldspace.]`
- `EBoneModificationMode ScaleMode [Whether and how to modify the translation of this bone.]`
- `EBoneControlSpace ScaleSpace [Reference frame to apply Scale in.]`
- `FVector Translation [New translation of bone to apply.]`
- `EBoneModificationMode TranslationMode [Whether and how to modify the translation of this bone.]`
- `EBoneControlSpace TranslationSpace [Reference frame to apply Translation in.]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_ModifyBone& opAssign(FAnimNode_ModifyBone Other)`

---

