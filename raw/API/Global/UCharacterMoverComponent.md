### UCharacterMoverComponent


Character Mover Component: this is a specialization of the core Mover Component that is set up with a
classic character in mind. Defaults and extended functionality, such as jumping and simple montage replication,
are intended to support features similar to UE's ACharacter actor type.

**属性**:

- `FMover_OnStanceChanged OnStanceChanged [Broadcast when this actor changes stances.]`
- `bool bHandleJump [Whether this component should directly handle jumping or not]`
- `bool bHandleStanceChanges [Whether this component should directly handle stance changes, including crouching input]`
- `bool bWantsToCrouch [If true, try to crouch (or keep crouching) on next update. If false, try to stop crouching on next update.]`


**方法**:

- `bool CanActorJump() const`  
  Can this Actor jump?
- `bool CanCrouch()`  
  Whether this actor can currently crouch or not
- `Crouch()`  
  Perform crouch on actor
- `bool GetHandleJump() const`  
  Returns whether this component is tasked with handling jump input or not
- `bool GetHandleStanceChanges() const`  
  Returns whether this component is tasked with handling character stance changes, including crouching
- `bool IsAirborne() const`  
  Is this actor in a airborne state? (e.g. Flying, Falling)
- `bool IsCrouching() const`  
  Returns true if currently crouching
- `bool IsFalling() const`  
  Is this actor in a falling state? Note that this includes upwards motion induced by jumping.
- `bool IsFlying() const`  
  Returns true if currently flying (moving through a non-fluid volume without resting on the ground)
- `bool IsOnGround() const`  
  Is this actor in a grounded state? (e.g. Walking)
- `bool IsSlopeSliding() const`  
  Is this actor sliding on an unwalkable slope
- `bool IsSwimming() const`  
  Is this actor in a Swimming state? (e.g. Swimming)
- `bool Jump()`  
  Perform jump on actor
- `SetHandleJump(bool bInHandleJump)`  
  If true, this component will handle default character inputs for jumping
- `SetHandleStanceChanges(bool bInHandleStanceChanges)`  
  If true, this component will process stancing changes and crouching inputs
- `UnCrouch()`  
  Perform uncrouch on actor

---

