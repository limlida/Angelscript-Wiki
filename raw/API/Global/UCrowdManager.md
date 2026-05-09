### UCrowdManager


**属性**:

- `TArray<FCrowdAvoidanceConfig> AvoidanceConfig [obstacle avoidance params]`
- `float32 MaxAgentRadius [max radius of agent that can be added to crowd]`
- `int MaxAgents [max number of agents supported by crowd]`
- `int MaxAvoidedAgents [max number of neighbor agents for velocity avoidance]`
- `int MaxAvoidedWalls [max number of wall segments for velocity avoidance]`
- `float32 NavmeshCheckInterval [how often should agents check their position after moving off navmesh?]`
- `float32 PathOffsetRadiusMultiplier [agent radius multiplier for offsetting path around corners]`
- `float32 PathOptimizationInterval [how often should agents try to optimize their paths?]`
- `TArray<FCrowdAvoidanceSamplingPattern> SamplingPatterns [obstacle avoidance params]`
- `float32 SeparationDirClamp [clamp separation force to left/right when neighbor is behind (dot between forward and dirToNei, -1 = disabled)]`
- `bool bResolveCollisions [should crowd simulation resolve collisions between agents? if not, this will be handled by their movement components]`

---

