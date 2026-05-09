### FAnimNode_CCDIK


Controller which implements the CCDIK IK approximation algorithm

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `FVector EffectorLocation [Coordinates for target location of tip bone - if EffectorLocationSpace is bone, this is the offset from Target Bone to use as target location]`
- `EBoneControlSpace EffectorLocationSpace [Reference frame of Effector Transform.]`
- `FBoneSocketTarget EffectorTarget [If EffectorTransformSpace is a bone, this is the bone to use. *]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `int MaxIterations [Maximum number of iterations allowed, to control performance.]`
- `float32 Precision [Tolerance for final tip location delta from EffectorLocation]`
- `FBoneReference RootBone [Name of the root bone]`
- `TArray<float32> RotationLimitPerJoints [symmetry rotation limit per joint. Index 0 matches with root bone and last index matches with tip bone.]`
- `FBoneReference TipBone [Name of tip bone]`
- `bool bAlphaBoolEnabled`
- `bool bEnableRotationLimit [Tolerance for final tip location delta from EffectorLocation]`
- `bool bStartFromTail [Toggle drawing of axes to debug joint rotation]`


**方法**:

- `FAnimNode_CCDIK& opAssign(FAnimNode_CCDIK Other)`

---

