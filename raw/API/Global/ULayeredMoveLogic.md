### ULayeredMoveLogic


Base class for all layered move logic that operates in tandem with instanced FLayeredMoveInstancedData.
The logic object itself is not meant to ever be replicated, and a maximum of one instance of each logic class
need ever exist on a given MoverComponent. Repeated and/or simultaneous activations of the same move on a component
are represented, tracked, and replicated through instances of the FLayeredMoveInstancedData struct type
that the logic class indicates in the ActiveMoveDataStructType property.

The virtual methods on this class are invoked in a special and strict pattern that guarantees AccessExecutionMoveData
will return the valid data instance relevant to that function execution.

Refer to [Examples when they exist] for implementation examples

**属性**:

- `float DefaultDurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `FLayeredMoveFinishVelocitySettings FinishVelocitySettings [Settings related to velocity applied to the actor after the move has finished]`
- `UScriptStruct InstancedDataStructType [@todo DanH: Fail validation if this isn't set or isn't an FLayeredMoveInstancedData]`
- `EMoveMixMode MixMode [Determines how this object's movement contribution should be mixed with others]`
- `uint8 Priority [Determines if this layered move should take priority over other layered moves when different moves have conflicting overrides - higher numbers taking precedent.]`


**方法**:

- `bool GenerateMove(FMoverTimeStep TimeStep, UMoverBlackboard SimBlackboard, FMoverTickStartData StartState, FProposedMove& OutProposedMove)`  
  Generate a movement that will be combined with other sources
- `bool IsFinished(FMoverTimeStep TimeStep, const UMoverBlackboard SimBlackboard)`  
  @todo: Will need to cache whether to treat the instance data as const (i.e. whether to disregard & complain if someone tries to set the data in BP during that window)
- `OnEnd(FMoverTimeStep TimeStep, UMoverBlackboard SimBlackboard)`  
  Called when this move has ended
- `OnStart(FMoverTimeStep TimeStep, UMoverBlackboard SimBlackboard)`  
  Called when this move is initially activated

---

