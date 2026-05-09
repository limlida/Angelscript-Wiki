### FIKRetargetAlignPoleVectorOpSettings


**属性**:

- `TArray<FRetargetPoleVectorSettings> ChainsToAlign`
- `const UIKRigDefinition IKRigAsset [The target IK Rig asset that contains the bones chains to retarget in this op.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`


**方法**:

- `FIKRetargetAlignPoleVectorOpSettings& opAssign(FIKRetargetAlignPoleVectorOpSettings Other)`

---

