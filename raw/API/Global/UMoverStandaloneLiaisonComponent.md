### UMoverStandaloneLiaisonComponent


MoverStandaloneLiaison: this component acts as a backend driver for an actor's Mover component, for use in Standalone (non-networked) games.
This class is set on a Mover component as the "back end".

**属性**:

- `bool bUseAsyncMovementSimulationTick [Sets whether the movement simulation tick can run on worker threads or not, also gated by global option.
Changes at runtime will take affect next frame. Has no effect on input production or applying results.]`
- `bool bUseAsyncProduceInput [Sets whether produce input can run on worker threads or not, also gated by global option.
Changes at runtime will take affect next frame. Has no effect on simulation ticking or applying results.]`


**方法**:

- `AddTickDependency(UActorComponent OtherComponent, EMoverTickDependencyOrder TickOrder, EMoverTickPhase TickPhase)`  
  Adds a tick dependency between another component and one of mover's tick functions.
@param OtherComponent                The component to add a dependency with.
@param TickOrder                             What order OtherComponent's should have relative to TickPhase i.e. OtherComponent Before SimulateMovement.
@param TickPhase                             The mover tick phase we want to a dependency with.
- `bool GetEnableProduceInput() const`  
  Whether this instance will have its produce-input tick called.
- `bool GetUseAsyncMovementSimulationTick() const`
- `bool GetUseAsyncProduceInput() const`
- `SetEnableProduceInput(bool bEnableInputProduction)`  
  Sets whether this instance's produce-input tick will run at all. It may be useful to disable on actors that don't rely on Mover input to move.
- `SetUseAsyncMovementSimulationTick(bool bUseAsyncMovementSim)`  
  Sets whether this instance's movement simulation tick can run on worker threads or not. See @bUseAsyncMovementSimulationTick
- `SetUseAsyncProduceInput(bool bUseAsyncInputProduction)`  
  Sets whether this instance's produce input can run on worker threads or not. See @bUseAsyncProduceInput and @SetEnableProduceInput

---

