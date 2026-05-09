### FIKRetargetFKChainsOpSettings


**属性**:

- `float ChainDrawSize [Debug draw size used for single-bone chains.]`
- `float ChainDrawThickness [Debug draw chain line thickness.]`
- `TArray<FRetargetFKChainSettings> ChainsToRetarget [The setting for each chain to retarget]`
- `const UIKRigDefinition IKRigAsset [The target IK Rig asset that contains the bones chains to retarget in this op.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `bool bDrawChainLines [Debug draw lines on each chain in the viewport]`
- `bool bDrawSingleBoneChains [Debug draw spheres on single-bone chains in the viewport]`


**方法**:

- `FIKRetargetFKChainsOpSettings& opAssign(FIKRetargetFKChainsOpSettings Other)`

---

