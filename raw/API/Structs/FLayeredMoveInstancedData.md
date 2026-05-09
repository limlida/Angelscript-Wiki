### FLayeredMoveInstancedData


Instanced data created and replicated for each activation of a layered move

**属性**:

- `float DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`
- `float StartSimTimeMs [The simulation time this move first ticked (< 0 means it hasn't started yet)]`


**方法**:

- `FLayeredMoveInstancedData& opAssign(FLayeredMoveInstancedData Other)`

---

