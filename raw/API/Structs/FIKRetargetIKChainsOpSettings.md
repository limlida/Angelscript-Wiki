### FIKRetargetIKChainsOpSettings


**属性**:

- `TArray<FRetargetIKChainSettings> ChainsToRetarget`
- `float GoalDrawSize [Adjust size of goal debug drawing in viewport]`
- `float GoalDrawThickness [Adjust thickness of goal debug drawing in viewport]`
- `int LODThreshold [The maximum LOD that this Op is allowed to run at.
For example if you have LODThreshold of 2, the Op will run until LOD 2 (based on 0 index). When the component LOD becomes 3, it will stop running.
A value of -1 forces the Op to execute at all LOD levels. Default is -1.]`
- `bool bDrawFinalGoals [Draw final IK goal locations.]`
- `bool bDrawSourceLocations [Draw goal locations from source skeleton.]`


**方法**:

- `FIKRetargetIKChainsOpSettings& opAssign(FIKRetargetIKChainsOpSettings Other)`

---

