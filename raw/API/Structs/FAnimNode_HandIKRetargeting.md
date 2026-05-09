### FAnimNode_HandIKRetargeting


Node to handle re-targeting of Hand IK bone chain.
It looks at position in Mesh Space of Left and Right FK bones, and moves Left and Right IK bones to those.
based on HandFKWeight. (0 = favor left hand, 1 = favor right hand, 0.5 = equal weight).
This is used so characters of different proportions can handle the same props.

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `float32 HandFKWeight [Which hand to favor. 0.5 is equal weight for both, 1 = right hand, 0 = left hand.]`
- `TArray<FBoneReference> IKBonesToMove [IK Bones to move.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `FBoneReference LeftHandFK [Bone for Left Hand FK]`
- `FBoneReference LeftHandIK [Bone for Left Hand IK]`
- `FVector PerAxisAlpha [Alpha values per axis to apply on the resulting retargeting translation]`
- `FBoneReference RightHandFK [Bone for Right Hand FK]`
- `FBoneReference RightHandIK [Bone for Right Hand IK]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_HandIKRetargeting& opAssign(FAnimNode_HandIKRetargeting Other)`

---

