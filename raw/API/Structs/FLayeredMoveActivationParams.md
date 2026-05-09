### FLayeredMoveActivationParams


Packaged params struct for initializing a corresponding FLayeredMoveInstancedData
Allows BP to do "templated" move data creation. Optional in C++, where params can be forwarded to the FLayeredMoveInstancedData ctor directly
The base class can also be used on any activation to just use default values

**属性**:

- `float DurationMs [This move will expire after a set amount of time if > 0. If 0, it will be ticked only once, regardless of time step. It will need to be manually ended if < 0.
Note: If changed after starting to a value beneath the current lifetime of the move, it will immediately finish (so if your move finishes early, setting this to 0 is equivalent to returning true from IsFinished())]`


**方法**:

- `FLayeredMoveActivationParams& opAssign(FLayeredMoveActivationParams Other)`

---

