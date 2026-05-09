### FNiagaraSpawnInfo


Data controlling the spawning of particles

**属性**:

- `int Count [How many particles to spawn.]`
- `float32 InterpStartDt [The sub frame delta time at which to spawn the first particle.]`
- `float32 IntervalDt [The sub frame delta time between each particle.]`
- `int SpawnGroup [An integer used to identify this spawn info.
Typically this is unused.
An example usage is when using multiple spawn modules to spawn from multiple discreet locations.]`


**方法**:

- `FNiagaraSpawnInfo& opAssign(FNiagaraSpawnInfo Other)`

---

