### FRigLogicConfiguration


**属性**:

- `ERigLogicCalculationType CalculationType []`
- `bool LoadAnimatedMaps`
- `bool LoadBlendShapes`
- `bool LoadJoints`
- `bool LoadMachineLearnedBehavior`
- `bool LoadRBFBehavior`
- `bool LoadTwistSwingBehavior`
- `ERigLogicRotationOrder RotationOrder []`
- `float32 RotationPruningThreshold [The joint rotation pruning threshold is used to eliminate joint rotation deltas below
the specified threshold from the joint matrix when the RigLogic instance is initialized.
Use it with caution, as while it may reduce the amount of compute to be done, it may also erase
important deltas that could introduce artifacts into the rig.
A reasonably safe starting value to try rotation pruning would be 0.1f]`
- `ERigLogicRotationType RotationType []`
- `float32 ScalePruningThreshold [The joint scale pruning threshold is used to eliminate joint scale deltas below
the specified threshold from the joint matrix when the RigLogic instance is initialized.
Use it with caution, as while it may reduce the amount of compute to be done, it may also erase
important deltas that could introduce artifacts into the rig.
A reasonably safe starting value to try scale pruning would be 0.001f]`
- `ERigLogicScaleType ScaleType []`
- `float32 TranslationPruningThreshold [The joint translation pruning threshold is used to eliminate joint translation deltas below
the specified threshold from the joint matrix when the RigLogic instance is initialized.
Use it with caution, as while it may reduce the amount of compute to be done, it may also erase
important deltas that could introduce artifacts into the rig.
A reasonably safe starting value to try translation pruning would be 0.0001f]`
- `ERigLogicTranslationType TranslationType []`


**方法**:

- `FRigLogicConfiguration& opAssign(FRigLogicConfiguration Other)`

---

