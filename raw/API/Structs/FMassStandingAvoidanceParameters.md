### FMassStandingAvoidanceParameters


**属性**:

- `float32 GhostMaxAcceleration [Max acceleration of the ghost. Making this larger than the agent speed will make the ghost react quickly.]`
- `float32 GhostMaxSpeed [Mas speed the ghost can move.]`
- `float32 GhostObstacleDetectionDistance [The distance at which neighbour agents are detected when updating the ghost.]`
- `float32 GhostSeparationDistance []`
- `float32 GhostSeparationRadiusScale [Agent radius scale for separation. Making it smaller makes the separation softer. Range: 0.8..1]`
- `float32 GhostSeparationStiffness []`
- `float32 GhostStandSlowdownRadius [The steering will slow down when the ghost is closer than this distance to the target. Range: 5..50]`
- `float32 GhostSteeringReactionTime []`
- `float32 GhostToTargetMaxDeviation [How far the ghost can deviate from the target location.]`
- `float32 GhostVelocityDampingTime [How quickly the ghost speed goes to zero. The smaller the value, the more the movement is dampened.]`
- `float32 MovingObstacleAvoidanceScale [How much avoidance is scaled for moving obstacles. Range: 1..5.]`
- `float32 MovingObstacleDirectionalScale [How much the ghost avoidance is tuned down when the moving obstacle is moving away from the ghost. Range: 0..1]`
- `float32 MovingObstaclePersonalSpaceScale [How much extra space is preserved in front of moving obstacles (relative to their size). Range: 1..5]`


**方法**:

- `FMassStandingAvoidanceParameters& opAssign(FMassStandingAvoidanceParameters Other)`

---

