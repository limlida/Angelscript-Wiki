### FNiagaraStatelessSpawnInfo


**属性**:

- `FNiagaraDistributionRangeInt Amount [Number of particles to spawn at the provided time]`
- `FNiagaraDistributionRangeInt LoopCountLimit [For Emitters that loop multiple times (or infinitely), this can constrain the bursting to only happen within this loop count limit.
For example, an emitter might loop 5 times, but bursting should only happen on the first two loops.  Setting Loop Count Limit to 2 will allow the burst to fire twice, once after each of the first two loops, and then stop.
-TODO:EditConditionHides, EditCondition = "Type == ENiagaraStatelessSpawnInfoType::Burst",]`
- `FNiagaraDistributionRangeFloat Rate [Number of particles to spawn per second
Note: In the case of a random range or binding the value is only evaluated at the start of each loop.  This varies from regular emitters.]`
- `FNiagaraDistributionRangeFloat SpawnProbability [0 - 1 value that can be viewed as a percentage chance that the spawn will generated particles or not.
A value of 0.5 can be viewed as a 50% chance that the spawn will trigger.
Note: Rate spawning will only evaluate the probability at the start of each loop.  This varies from regular emitters which evaluate each time particles are spawned.]`
- `float32 SpawnTime [Time to spawn particles at]`
- `ENiagaraStatelessSpawnInfoType Type []`
- `bool bEnabled`
- `bool bLoopCountLimitEnabled`
- `bool bSpawnProbabilityEnabled`


**方法**:

- `FNiagaraStatelessSpawnInfo& opAssign(FNiagaraStatelessSpawnInfo Other)`

---

