### FAnimNode_SlopeWarping


**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `FVector CustomFloorOffset []`
- `TArray<FSlopeWarpingFootDefinition> FeetDefinitions []`
- `FVectorRK4SpringInterpolator FloorNormalInterpolator []`
- `FVectorRK4SpringInterpolator FloorOffsetInterpolator []`
- `FVector GravityDir []`
- `FBoneReference IKFootRootBone [IKFoot Root Bone. *]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 MaxStepHeight []`
- `FBoneReference PelvisBone [Pelvis Bone. *]`
- `FVectorRK4SpringInterpolator PelvisOffsetInterpolator []`
- `bool bAlphaBoolEnabled`
- `bool bKeepMeshInsideOfCapsule`
- `bool bPullPelvisDown`
- `bool bUseCustomFloorOffset`


**方法**:

- `FAnimNode_SlopeWarping& opAssign(FAnimNode_SlopeWarping Other)`

---

