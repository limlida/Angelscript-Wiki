### UAnimBlueprint


An Anim Blueprint is essentially a specialized Blueprint whose graphs control the animation of a Skeletal Mesh.
It can perform blending of animations, directly control the bones of the skeleton, and output a final pose
for a Skeletal Mesh each frame.

**属性**:

- `UClass DefaultBindingClass [The default binding type that any new nodes will use when created]`
- `USkeleton TargetSkeleton [This is the target skeleton asset for anim instances created from this blueprint; all animations
referenced by the BP should be compatible with this skeleton.  For advanced use only, it is easy
to cause errors if this is modified without updating or replacing all referenced animations.]`
- `bool bEnableLinkedAnimLayerInstanceSharing [If true, linked animation layers will be instantiated only once per AnimClass instead of once per AnimInstance, AnimClass and AnimGroup.
      Extra instances will be created if two or more active anim graph override the same layer Function]`
- `bool bUseMultiThreadedAnimationUpdate [Allows this anim Blueprint to update its native update, blend tree, montages and asset players on
a worker thread. The compiler will attempt to pick up any issues that may occur with threaded update.
For updates to run in multiple threads both this flag and the project setting "Allow Multi Threaded
Animation Update" should be set.]`
- `bool bWarnAboutBlueprintUsage [Selecting this option will cause the compiler to emit warnings whenever a call into Blueprint
is made from the animation graph. This can help track down optimizations that need to be made.]`


**方法**:

- `AddNodeAssetOverride(const UAnimationAsset Target, UAnimationAsset Override, bool bPrintAppliedOverrides = false)`  
  Adds an Animation Asset override for the provided AnimationBlueprint, replacing any instance of Target with Override

@param AnimBlueprint                                 The Animation Blueprint to add/set the Override for
@param Target                                                The Animation Asset to add an override for (overrides all instances of the asset)
@param Override                                              The Animation Asset to used to override the Target with (types have to match)
@param bPrintAppliedOverrides                Flag whether or not to print the applied overrides
- `GetAnimationGraphs(TArray<UAnimationGraph>& AnimationGraphs)`  
  Returns all Animation Graphs contained by the provided Animation Blueprint
- `GetNodesOfClass(TSubclassOf<UAnimGraphNode_Base> NodeClass, TArray<UAnimGraphNode_Base>& GraphNodes, bool bIncludeChildClasses = true)`  
  Returns all Animation Graph Nodes of the provided Node Class contained by the Animation Blueprint

---

