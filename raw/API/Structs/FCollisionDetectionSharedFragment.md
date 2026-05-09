### FCollisionDetectionSharedFragment


General settings for managing incoming collision

**属性**:

- `float32 EntityAverageSpeed [Average speed that this entity will move at. This will help improve collision detection by keeping entity velocity constant]`
- `float32 MinSpeed [The min speed to consider a colliding entity.]`
- `float32 ObstacleQueryRange [The range we check for incoming obstacles]`
- `float32 ObstacleRadiusMultiplier [The radius multiplier for incoming dangerous obstacles. This gives entities more room to react to incoming collisions]`
- `float32 TimeToCollisionEvent [Time in seconds to trigger IncomingDangerousEntity() on entities when there is an incoming collision]`


**方法**:

- `FCollisionDetectionSharedFragment& opAssign(FCollisionDetectionSharedFragment Other)`

---

