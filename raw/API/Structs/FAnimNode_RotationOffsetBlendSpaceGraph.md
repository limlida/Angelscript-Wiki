### FAnimNode_RotationOffsetBlendSpaceGraph


Allows multiple animations to be blended between based on input parameters

**属性**:

- `float32 Alpha [Current strength of the AimOffset]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FPoseLink BasePose`
- `FName GroupName [The group name that we synchronize with (NAME_None if it is not part of any group). Note that
this is the name of the group used to sync the output of this node - it will not force
syncing of animations contained by it. Animations inside this Blend Space have their own
options for syncing.]`
- `EAnimGroupRole GroupRole [The role this Blend Space can assume within the group (ignored if GroupName is not set). Note
that this is the role of the output of this node, not of animations contained by it.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 X [The X coordinate to sample in the blendspace]`
- `float32 Y [The Y coordinate to sample in the blendspace]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_RotationOffsetBlendSpaceGraph& opAssign(FAnimNode_RotationOffsetBlendSpaceGraph Other)`

---

