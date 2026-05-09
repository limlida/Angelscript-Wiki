### FAnimNode_ObserveBone


Debugging node that displays the current value of a bone in a specific space.

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FBoneReference BoneToObserve [Name of bone to observe.]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `EBoneControlSpace DisplaySpace [Reference frame to display the bone transform in.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `bool bAlphaBoolEnabled`
- `bool bRelativeToRefPose [Show the difference from the reference pose?]`


**方法**:

- `FAnimNode_ObserveBone& opAssign(FAnimNode_ObserveBone Other)`

---

