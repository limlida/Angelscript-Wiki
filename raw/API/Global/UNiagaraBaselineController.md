### UNiagaraBaselineController


Base class for baseline controllers. These can are responsible for spawning and manipulating the FX needed for the baseline perf tests.

**属性**:

- `UNiagaraEffectType EffectType [The effect type this controller is in use by.]`
- `ANiagaraPerfBaselineActor Owner [The owning actor for this baseline controller.]`
- `TSoftObjectPtr<UNiagaraSystem> System [The baseline system to spawn.]`
- `float32 TestDuration [Duration to gather performance stats for the given system.]`


**方法**:

- `UNiagaraSystem GetSystem()`  
  Returns the System for this baseline. Will synchronously load the system if needed.
- `OnBeginTest()`  
  Called from the stats system when we begin gathering stats for the given System asset.
- `OnEndTest(FNiagaraPerfBaselineStats Stats)`  
  Called from the stats system on completion of the test with the final stats for the given system asset.
- `OnOwnerTick(float DeltaTime)`  
  Called when the owning actor is ticked.
- `bool OnTickTest()`  
  Returns whether the baseline test is complete.

---

