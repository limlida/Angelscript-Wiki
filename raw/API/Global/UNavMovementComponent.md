### UNavMovementComponent


NavMovementComponent defines base functionality for MovementComponents that move any 'agent' that may be involved in AI pathfinding.

**属性**:

- `FNavAgentProperties NavAgentProps [Properties that define how the component can move.]`
- `FNavMovementProperties NavMovementProperties []`


**方法**:

- `FVector GetVelocityForNavMovement() const`  
  Get the current velocity of the movement component
- `bool IsCrouching() const`  
  Returns true if currently crouching
- `bool IsFalling() const`  
  Returns true if currently falling (not flying, in a non-fluid volume, and not on the ground)
- `bool IsFlying() const`  
  Returns true if currently flying (moving through a non-fluid volume without resting on the ground)
- `bool IsMovingOnGround() const`  
  Returns true if currently moving on the ground (e.g. walking or driving)
- `bool IsSwimming() const`  
  Returns true if currently swimming (moving through a fluid volume)

---

