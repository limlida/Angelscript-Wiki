### FAnimNode_FootPlacement


**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FVector BaseTranslationDelta []`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `FBoneReference IKFootRootBone []`
- `FFootPlacementInterpolationSettings InterpolationSettings`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `TArray<FFootPlacemenLegDefinition> LegDefinitions []`
- `FBoneReference PelvisBone []`
- `FFootPlacementPelvisSettings PelvisSettings`
- `FFootPlacementPlantSettings PlantSettings`
- `EWarpingEvaluationMode PlantSpeedMode [Foot/Ball speed evaluation mode (Graph or Manual) used to decide when the feet are locked
Graph mode uses the root motion attribute from the animations to calculate the joint's speed
Manual mode uses a per-foot curve name representing the joint's speed]`
- `FFootPlacementTraceSettings TraceSettings`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_FootPlacement& opAssign(FAnimNode_FootPlacement Other)`

---

