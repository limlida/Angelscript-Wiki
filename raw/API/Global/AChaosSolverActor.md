### AChaosSolverActor


**属性**:

- `FChaosDebugSubstepControl ChaosDebugSubstepControl [* Control to pause/step/substep the solver to the next synchronization point.]`
- `float32 FloorHeight []`
- `FChaosSolverConfiguration Properties []`
- `FDataflowSimulationAsset SimulationAsset [Solver dataflow asset used to advance in time]`
- `bool bHasFloor [End deprecated properties]`


**方法**:

- `SetAsCurrentWorldSolver()`  
  Makes this solver the current world solver. Dynamically spawned objects will have their physics state created in this solver.
- `SetSolverActive(bool bActive)`  
  Controls whether the solver is able to simulate particles it controls

---

