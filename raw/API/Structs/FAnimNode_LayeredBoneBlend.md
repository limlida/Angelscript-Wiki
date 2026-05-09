### FAnimNode_LayeredBoneBlend


Layered blend (per bone); has dynamic number of blendposes that can blend per different bone sets

**属性**:

- `FPoseLink BasePose [The source pose]`
- `TArray<TObjectPtr<UBlendProfile>> BlendMasks [The blend masks to use for our layer inputs. Allows the use of per-bone alphas.
Blend masks are used when BlendMode is BlendMask.]`
- `ELayeredBoneBlendMode BlendMode [Whether to use branch filters or a blend mask to specify an input pose per-bone influence]`
- `TArray<FPoseLink> BlendPoses [Each layer's blended pose]`
- `TArray<float32> BlendWeights [The weights of each layer]`
- `ECurveBlendOption CurveBlendOption [How to blend the layers together]`
- `int LODThreshold [* Max LOD that this node is allowed to run
* For example if you have LODThreshold to be 2, it will run until LOD 2 (based on 0 index)
* when the component LOD becomes 3, it will stop update/evaluate
* currently transition would be issue and that has to be re-visited]`
- `TArray<FInputBlendPose> LayerSetup [Configuration for the parts of the skeleton to blend for each layer. Allows
certain parts of the tree to be blended out or omitted from the pose.
LayerSetup is used when BlendMode is BranchFilter.]`
- `bool bBlendRootMotionBasedOnRootBone [Whether to incorporate the per-bone blend weight of the root bone when lending root motion]`
- `bool bMeshSpaceRotationBlend [Whether to blend bone rotations in mesh space or in local space]`
- `bool bMeshSpaceScaleBlend [Whether to blend bone scales in mesh space or in local space]`
- `bool bRootSpaceRotationBlend [Whether to blend bone rotations in root space or in mesh space]`


**方法**:

- `FAnimNode_LayeredBoneBlend& opAssign(FAnimNode_LayeredBoneBlend Other)`

---

