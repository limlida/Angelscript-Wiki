### FNavMovementProperties


Struct to hold properties a user might set for navigation movement

**属性**:

- `float32 FixedPathBrakingDistance [Braking distance override used with acceleration driven path following (bUseAccelerationForPaths)]`
- `bool bStopMovementAbortPaths [If set, StopActiveMovement call will abort current path following request]`
- `bool bUpdateNavAgentWithOwnersCollision [If set to true, NavAgentProperties' radius and height will be updated with Owner's collision capsule size]`
- `bool bUseAccelerationForPaths [If set, pathfollowing will control character movement via acceleration values. If false, it will set velocities directly.]`
- `bool bUseFixedBrakingDistanceForPaths [If set, FixedPathBrakingDistance will be used for path following deceleration]`


**方法**:

- `FNavMovementProperties& opAssign(FNavMovementProperties Other)`

---

