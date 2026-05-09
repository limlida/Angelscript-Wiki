### FAnimNode_LookAt


Simple controller that make a bone to look at the point or another bone

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FBoneReference BoneToModify [Name of bone to control. This is the main bone chain to modify from. *]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `float32 InterpolationTime`
- `float32 InterpolationTriggerThreashold`
- `EInterpolationBlend InterpolationType`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 LookAtClamp [Look at Clamp value in degrees - if your look at axis is Z, only X, Y degree of clamp will be used]`
- `FVector LookAtLocation [Target Offset. It's in world space if LookAtBone is empty or it is based on LookAtBone or LookAtSocket in their local space]`
- `FBoneSocketTarget LookAtTarget [Target socket to look at. Used if LookAtBone is empty. - You can use  LookAtLocation if you need offset from this point. That location will be used in their local space. *]`
- `FAxis LookAt_Axis []`
- `FAxis LookUp_Axis []`
- `bool bAlphaBoolEnabled`
- `bool bUseLookUpAxis [Whether or not to use Look up axis]`


**方法**:

- `FAnimNode_LookAt& opAssign(FAnimNode_LookAt Other)`

---

