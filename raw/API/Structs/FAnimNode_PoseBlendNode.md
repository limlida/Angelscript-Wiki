### FAnimNode_PoseBlendNode


Evaluates a point in an anim sequence, using a specific time input rather than advancing time internally.
Typically the playback position of the animation for this node will represent something other than time, like jump height.
This node will not trigger any notifies present in the associated sequence.

**属性**:

- `EAlphaBlendOption BlendOption [Type of blending used (Linear, Cubic, etc.)]`
- `float32 BlendWeight [Last encountered blendweight for this node]`
- `UCurveFloat CustomCurve [If you're using Custom BlendOption, you can specify curve]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `UPoseAsset PoseAsset [The animation sequence asset to evaluate]`
- `FPoseLink SourcePose`


**方法**:

- `FAnimNode_PoseBlendNode& opAssign(FAnimNode_PoseBlendNode Other)`

---

