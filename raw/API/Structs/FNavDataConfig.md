### FNavDataConfig


**属性**:

- `float32 AgentHeight [Total height of the capsule used for navigation/pathfinding.]`
- `float32 AgentRadius [Radius of the capsule used for navigation/pathfinding.]`
- `float32 AgentStepHeight [Step height to use, or -1 for default value from navdata's config.]`
- `FColor Color [Color used to represent this agent in the editor and for debugging]`
- `FVector DefaultQueryExtent [Rough size of this agent, used when projecting unto navigation mesh]`
- `FName Name [Internal/debug name of this agent]`
- `TSoftClassPtr<AActor> NavDataClass [Class to use when spawning navigation data instance]`
- `float32 NavWalkingSearchHeightScale [Scale factor to apply to height of bounds when searching for navmesh to project to when nav walking]`
- `FSoftClassPath PreferredNavData [Type of navigation data used by agent, null means "any"]`
- `bool bCanCrouch [If true, this Pawn is capable of crouching.]`
- `bool bCanFly [If true, this Pawn is capable of flying.]`
- `bool bCanJump [If true, this Pawn is capable of jumping.]`
- `bool bCanSwim [If true, this Pawn is capable of swimming or moving through fluid volumes.]`
- `bool bCanWalk [If true, this Pawn is capable of walking or moving on the ground.]`


**方法**:

- `FNavDataConfig& opAssign(FNavDataConfig Other)`

---

