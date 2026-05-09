### FHairSolverSettings


**属性**:

- `TSoftObjectPtr<UNiagaraSystem> CustomSystem [Custom niagara system to be used if custom solver is picked]`
- `bool EnableSimulation [Use niagara for the groom solver]`
- `float32 GravityPreloading [Optimisation of the rest state configuration to compensate from the gravity]`
- `int IterationCount [Number of iterations to solve the constraints with the xpbd solver]`
- `EGroomNiagaraSolvers NiagaraSolver [Niagara solver to be used for simulation]`
- `int SubSteps [Number of sub steps to be done per frame. The actual solver calls are done at 24 fps]`
- `bool bEnableDeformation [Use deformer for the groom solver]`
- `bool bForceVisible [Force the Niagara solver component to be visible]`


**方法**:

- `FHairSolverSettings& opAssign(FHairSolverSettings Other)`

---

