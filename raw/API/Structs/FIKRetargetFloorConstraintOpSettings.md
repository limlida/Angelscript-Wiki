### FIKRetargetFloorConstraintOpSettings


**属性**:

- `TArray<FFloorConstraintChainSettings> ChainsToAffect [The per-chain settings (exposed indirectly to the UI through a detail customization)]`
- `float HeightFalloffDistance [Range 0 to inf. Default is 20. The height in cm from the floor below which the goal is gradually blended towards the source bone height.
NOTE: if the source bone is higher than this value, the height of the goal is left at its normal retargeted height.]`
- `float HeightFalloffOffset [Range 0 to inf. Default is 8. The height in cm from the floor below which the goal is snapped directly to the source bone height.
NOTE: if the source bone height is greater than this value, but lower than FloorHeightFalloffEnd, then the height will smoothly blend from the source
bone height, to the height of the goal in its normal retargeted position.]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`


**方法**:

- `FIKRetargetFloorConstraintOpSettings& opAssign(FIKRetargetFloorConstraintOpSettings Other)`

---

