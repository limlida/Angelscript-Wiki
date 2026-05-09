### FAnimNode_PoseHandler


Evaluates a point in an anim sequence, using a specific time input rather than advancing time internally.
Typically the playback position of the animation for this node will represent something other than time, like jump height.
This node will not trigger any notifies present in the associated sequence.

**属性**:

- `float32 BlendWeight [Last encountered blendweight for this node]`
- `float32 InternalTimeAccumulator [Accumulated time used to reference the asset in this node]`
- `UPoseAsset PoseAsset [The animation sequence asset to evaluate]`


**方法**:

- `FAnimNode_PoseHandler& opAssign(FAnimNode_PoseHandler Other)`

---

