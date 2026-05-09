### FChaosSolverDestructionSettings


**属性**:

- `int ClusteringParticleReleaseThrottlingMaxCount [Maximum number of active geometry collection to reach before all released clustering disable all released particle instantly]`
- `int ClusteringParticleReleaseThrottlingMinCount [Minimum number of active geometry collection to reach before clustering start to disable a percentage of the released particle per cluster]`
- `int PerAdvanceBreaksAllowed [Number of breaks allowed to occur for each invocation of AdvanceClustering]`
- `int PerAdvanceBreaksRescheduleLimit [Number of breaks allowed to be rescheduled for next frame if any]`
- `bool bOptimizeForRuntimeMemory [When enabled, this will avoid creating non-necessary geometry collection physics data until the root breaks
This will save runtime memory for unbroken geometry collection at the cost of allocating those particle when the first break happens
It is false by default]`


**方法**:

- `FChaosSolverDestructionSettings& opAssign(FChaosSolverDestructionSettings Other)`

---

