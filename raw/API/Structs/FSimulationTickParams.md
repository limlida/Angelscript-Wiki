### FSimulationTickParams


Input parameters to provide context for SimulationTick functions

**属性**:

- `FMovingComponentSet MovingComps [Components involved in movement by the simulation
This will be empty when the simulation is ticked asynchronously]`
- `FProposedMove ProposedMove [Proposed movement for this tick]`
- `UMoverBlackboard SimBlackboard [Blackboard]`
- `FMoverTickStartData StartState [Simulation state data at the start of the tick, including Input Cmd]`
- `FMoverTimeStep TimeStep [Time and frame information for this tick]`


**方法**:

- `FSimulationTickParams& opAssign(FSimulationTickParams Other)`

---

