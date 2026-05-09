### FFloorConstraintChainSettings


**属性**:

- `float Alpha [Range 0 to 1. Default is 0. Blend the effect of the constraint on this goal on/off.]`
- `bool EnableFloorConstraint [Whether to apply the floor constraint to the location of the IK goal on this chain. Default is false.
When ON, the floor constraint will adjust the vertical position of the IK Goal according to the following rules.
1. When the source goal bone is LOWER than FloorHeightFalloffStart, the height of the goal is smoothly blended to the height of the source bone.
2. When the source goal bone is HIGHER than FloorHeightFalloffStart, the height of the goal is left at its normal retargeted location.
NOTE: the floor is assumed to be the XY plane where Z = 0.
NOTE: This only has an effect if the chain has an IK Goal assigned to it in the Target IK Rig asset.]`
- `float MaintainHeightOffset [Range 0 to 1. Default is 0. Maintain the height different between the source and target from the retarget pose.]`
- `FName TargetChainName [The name of the TARGET chain to transfer animation onto.]`


**方法**:

- `FFloorConstraintChainSettings& opAssign(FFloorConstraintChainSettings Other)`

---

