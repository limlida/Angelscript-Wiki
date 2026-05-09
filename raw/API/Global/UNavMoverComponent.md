### UNavMoverComponent


NavMoverComponent: Responsible for implementing INavMoveInterface with UMoverComponent so pathfinding and other forms of navigation movement work.
This component also caches the input given to it that is then consumed by the mover system.
Note: This component relies on the parent actor having a MoverComponent as well. By default this component only has a reference to MoverComponent meaning
we use other ways (such as gameplay tags for the active movement mode) to check for state rather than calling specific functions on the active MoverComponent.

**属性**:

- `FNavAgentProperties NavAgentProps [Properties that define how the component can move.]`
- `FNavMovementProperties NavMovementProperties [associated properties for nav movement]`


**方法**:

- `bool ConsumeNavMovementData(FVector& OutMoveInputIntent, FVector& OutMoveInputVelocity)`  
  Writes internal cached requested velocities to the MoveInput passed in. Returns true if it had move input to write.
- `float32 GetMaxSpeedForNavMovement() const`  
  Get the max speed of the movement component
- `FVector GetVelocityForNavMovement() const`  
  Get the current velocity of the movement component
- `bool IsSwimming() const`  
  Returns true if currently swimming (moving through a fluid volume)

---

