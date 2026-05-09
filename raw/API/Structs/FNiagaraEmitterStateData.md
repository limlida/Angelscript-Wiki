### FNiagaraEmitterStateData


**属性**:

- `ENiagaraEmitterInactiveResponse InactiveResponse [UPROPERTY(EditAnywhere, Category="Emitter State")
ENiagaraStatelessEmitterState_SelfSystem LifeCycleMode = ENiagaraStatelessEmitterState_SelfSystem::Self;]`
- `ENiagaraLoopBehavior LoopBehavior []`
- `int LoopCount []`
- `FNiagaraDistributionRangeFloat LoopDelay []`
- `FNiagaraDistributionRangeFloat LoopDuration []`
- `ENiagaraLoopDurationMode LoopDurationMode []`
- `float32 MaxDistance []`
- `ENiagaraExecutionStateManagement MaxDistanceReaction []`
- `float32 MinDistance []`
- `ENiagaraExecutionStateManagement MinDistanceReaction []`
- `float32 VisibilityCullDelay []`
- `ENiagaraExecutionStateManagement VisibilityCullReaction []`
- `bool bDelayFirstLoopOnly`
- `bool bEnableDistanceCulling`
- `bool bEnableVisibilityCulling`
- `bool bLoopDelayEnabled`
- `bool bMaxDistanceEnabled`
- `bool bMinDistanceEnabled`
- `bool bRecalculateDelayEachLoop`
- `bool bRecalculateDurationEachLoop`
- `bool bResetAgeOnAwaken`


**方法**:

- `FNiagaraEmitterStateData& opAssign(FNiagaraEmitterStateData Other)`

---

