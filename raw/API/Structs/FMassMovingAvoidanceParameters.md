### FMassMovingAvoidanceParameters


**属性**:

- `float32 EndOfPathAvoidanceScale [How much to tune down the avoidance towards the end of the path. Range: 0..1]`
- `float32 EndOfPathDuration [The time the agent is considered to be near the end of the path when approaching end. Range: 0..3]`
- `float32 EnvironmentPredictiveAvoidanceDistance [Predictive environment avoidance force effect distance. The avoidance force is applied at the point in future where the agents are closest. The actual observed separation distance will be smaller. Range: 0..100]`
- `float32 EnvironmentPredictiveAvoidanceStiffness [Predictive avoidance force stiffness between agents and walls. Range: 400..1000 N/cm]`
- `float32 EnvironmentPredictiveAvoidanceTime [How far in the future the agent reacts to environment collisions.]`
- `float32 EnvironmentSeparationBehindEdgeDistanceScale [Environment separation distance behind edge where separation force is applied. The scale is applied to AgentRadius. Range: 1..2]`
- `float32 EnvironmentSeparationDistance [Environment separation force effect distance. The actual observed separation distance will be smaller. Range: 0..200]`
- `float32 EnvironmentSeparationStiffness [Environment separation force stiffness between agents and walls. Range: 200..1000 N/cm]`
- `float32 ObstacleDetectionDistance [The distance at which obstacle are detected. Range: 200...600]`
- `float32 ObstaclePredictiveAvoidanceStiffness [Predictive avoidance force stiffness between agents and obstacles. Range: 400..1000 N/cm]`
- `float32 ObstacleSeparationDistance [Separation force effect distance. The actual observed separation distance will be smaller. Range: 0..100]`
- `float32 ObstacleSeparationStiffness [Separation force stiffness between agents and obstacles. Range: 100..500 N/cm]`
- `float32 PredictiveAvoidanceDistance [Predictive avoidance force effect distance. The avoidance force is applied at the point in future where the agents are closest. The actual observed separation distance will be smaller. Range: 0..200]`
- `float32 PredictiveAvoidanceRadiusScale [Agent radius scale for anticipatory avoidance. Making the scale smaller makes the agent more eager to squeeze through other agents. Range: 0.5..1]`
- `float32 PredictiveAvoidanceTime [How far in the future the agent reacts to collisions. Range: 1..3, Indoor humans 1.4, outdoor humans 2.4 (seconds).]`
- `float32 SeparationRadiusScale [Agent radius scale for separation. Making it smaller makes the separation softer. Range: 0.8..1]`
- `float32 StandingObstacleAvoidanceScale [How much to tune down the avoidance when an obstacle is standing. This allows the agents to pass through standing agents more easily. Range: 0..1]`
- `float32 StartOfPathAvoidanceScale [How much to tune down the avoidance at the start of the path. Range: 0..1.]`
- `float32 StartOfPathDuration [The time the agent is considered to be near the start of the path when starting to move. Range: 0..3]`
- `float32 StaticObstacleClearanceScale [Agent radius scale for avoiding static obstacles near wall. If the clarance between obstacle and wall is less than the scaled radius, the agent will not try to move through the gap. Range: 0..1]`


**方法**:

- `FMassMovingAvoidanceParameters& opAssign(FMassMovingAvoidanceParameters Other)`

---

