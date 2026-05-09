### UAvoidanceManager


**属性**:

- `float32 ArtificialRadiusExpansion [Multiply the radius of all STORED avoidance objects by this value to allow a little extra room for avoidance maneuvers.]`
- `float32 DefaultTimeToLive [How long an avoidance UID must not be updated before the system will put it back in the pool. Actual delay is up to 150% of this value.]`
- `float32 DeltaTimeToPredict [This is how far forward in time (seconds) we extend our velocity cones and thus our prediction]`
- `float32 HeightCheckMargin [Allowable height margin between obstacles and agents. This is over and above the difference in agent heights.]`
- `float32 LockTimeAfterAvoid [How long to stay on course (barring collision) after making an avoidance move]`
- `float32 LockTimeAfterClean [How long to stay on course (barring collision) after making an unobstructed move (should be > 0.0, but can be less than a full frame)]`


**方法**:

- `FVector GetAvoidanceVelocityForComponent(UMovementComponent MovementComp)`  
  Calculate avoidance velocity for component (avoids collisions with the supplied component)
- `int GetNewAvoidanceUID()`  
  Get appropriate UID for use when reporting to this function or requesting RVO assistance.
- `int GetObjectCount()`  
  Get the number of avoidance objects currently in the manager.
- `bool RegisterMovementComponent(UMovementComponent MovementComp, float32 AvoidanceWeight = 0.500000)`  
  Register with the given avoidance manager.
@param AvoidanceWeight      When avoiding each other, actors divert course in proportion to their relative weights. Range is 0.0 to 1.0. Special: at 1.0, actor will not divert course at all.

---

