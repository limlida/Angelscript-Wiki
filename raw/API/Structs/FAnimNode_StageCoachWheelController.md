### FAnimNode_StageCoachWheelController


Simple controller that replaces or adds to the translation/rotation of a single bone.

**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 MaxAngularVelocity [Wheel max rotation speed in degrees/second]`
- `float32 ShutterSpeed [Camera shutter speed in frames/second]`
- `float32 StageCoachBlend [Blend effect degrees/second]`
- `int WheelSpokeCount [Number of spokes visible on wheel]`
- `bool bAlphaBoolEnabled`


**方法**:

- `FAnimNode_StageCoachWheelController& opAssign(FAnimNode_StageCoachWheelController Other)`

---

