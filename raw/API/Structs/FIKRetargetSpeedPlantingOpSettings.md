### FIKRetargetSpeedPlantingOpSettings


**属性**:

- `TArray<FRetargetSpeedPlantingSettings> ChainsToSpeedPlant`
- `float CriticalDamping [How much damping to apply to the spring (0 means no damping, 1 means critically damped which means no oscillation)]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `float SpeedThreshold [Range 0 to 100. Default 15. The maximum speed a source bone can be moving while being considered 'planted'.
The target IK goal will not be allowed to move whenever the source bone speed drops below this threshold speed.]`
- `float Stiffness [How stiff the spring model is that smoothly pulls the IK position after unplanting (more stiffness means more oscillation around the target value)]`


**方法**:

- `FIKRetargetSpeedPlantingOpSettings& opAssign(FIKRetargetSpeedPlantingOpSettings Other)`

---

