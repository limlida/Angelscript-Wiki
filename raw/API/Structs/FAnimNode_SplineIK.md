### FAnimNode_SplineIK


**属性**:

- `float32 Alpha [Current strength of the skeletal control]`
- `FInputAlphaBoolBlend AlphaBoolBlend`
- `FName AlphaCurveName`
- `EAnimAlphaInputType AlphaInputType`
- `FInputScaleBias AlphaScaleBias`
- `FInputScaleBiasClamp AlphaScaleBiasClamp`
- `ESplineBoneAxis BoneAxis [Axis of the controlled bone (ie the direction of the spline) to use as the direction for the curve.]`
- `FComponentSpacePoseLink ComponentPose [Input link]`
- `TArray<FTransform> ControlPoints [Transforms applied to spline points *]`
- `FBoneReference EndBone [Name of bone at the end of the spline chain. Bones after this will not be altered by the controller.]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `float32 Offset [The distance along the spline from the start from which bones are constrained]`
- `int PointCount [The number of points in the spline if we are not auto-calculating]`
- `float32 Roll [Overall roll of the spline, applied on top of other rotations along the direction of the spline]`
- `FBoneReference StartBone [Name of root bone from which the spline extends *]`
- `float32 Stretch [The maximum stretch allowed when fitting bones to the spline. 0.0 means bones do not stretch their length,
1.0 means bones stretch to the length of the spline]`
- `FAlphaBlend TwistBlend [How to interpolate twist along the length of the spline]`
- `float32 TwistEnd [The twist of the end bone. Twist is interpolated along the spline according to Twist Blend.]`
- `float32 TwistStart [The twist of the start bone. Twist is interpolated along the spline according to Twist Blend.]`
- `bool bAlphaBoolEnabled`
- `bool bAutoCalculateSpline [The number of points in the spline if we are specifying it directly]`


**方法**:

- `FAnimNode_SplineIK& opAssign(FAnimNode_SplineIK Other)`

---

