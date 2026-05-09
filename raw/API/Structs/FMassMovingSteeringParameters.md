### FMassMovingSteeringParameters


Steering related movement parameters.

**属性**:

- `float32 LookAheadTime [How much we look ahead when steering. Affects how steeply we steer towards the goal and when to start to slow down at the end of the path.]`
- `float32 ReactionTime [Steering reaction time in seconds.]`
- `float32 SteeringPreventSlowdownAttenuationDistance [When using FMassSteerToMoveTargetPreventSlowdownTag, maximum distance at which slowdown reduction is applied.]`
- `bool bAllowSpeedVariance [Allow directional and catchup speed variance.]`


**方法**:

- `FMassMovingSteeringParameters& opAssign(FMassMovingSteeringParameters Other)`

---

