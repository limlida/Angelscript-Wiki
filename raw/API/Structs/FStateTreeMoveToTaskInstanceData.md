### FStateTreeMoveToTaskInstanceData


**属性**:

- `AAIController AIController []`
- `float32 AcceptableRadius [fixed distance added to threshold between AI and goal location in destination reach test]`
- `FVector Destination []`
- `float32 DestinationMoveTolerance [if the task is expected to react to changes to location in input
    this property can be used to tweak sensitivity of the mechanism. Value is
    recommended to be less than AcceptableRadius]`
- `TSubclassOf<UNavigationQueryFilter> FilterClass ["None" will result in default filter being used]`
- `AActor TargetActor []`
- `bool bAllowPartialPath [if set, use incomplete path when goal can't be reached]`
- `bool bAllowStrafe []`
- `bool bProjectGoalLocation [if set, goal location will be projected on navigation data (navmesh) before using]`
- `bool bReachTestIncludesAgentRadius [if set, radius of AI's capsule will be added to threshold between AI and goal location in destination reach test]`
- `bool bReachTestIncludesGoalRadius [if set, radius of goal's capsule will be added to threshold between AI and goal location in destination reach test]`
- `bool bRequireNavigableEndLocation [if set, the goal location will need to be navigable]`
- `bool bTrackMovingGoal [if set, path to goal actor will update itself when actor moves]`


**方法**:

- `FStateTreeMoveToTaskInstanceData& opAssign(FStateTreeMoveToTaskInstanceData Other)`

---

