### UBTTask_MoveTo


Move To task node.
Moves the AI pawn toward the specified Actor or Location blackboard entry using the navigation system.

**属性**:

- `FValueOrBBKey_Float AcceptableRadius [fixed distance added to threshold between AI and goal location in destination reach test]`
- `FValueOrBBKey_Class FilterClass ["None" will result in default filter being used]`
- `FValueOrBBKey_Float ObservedBlackboardValueTolerance [if task is expected to react to changes to location represented by BB key
    this property can be used to tweak sensitivity of the mechanism. Value is
    recommended to be less than AcceptableRadius]`
- `FValueOrBBKey_Bool bAllowPartialPath [if set, use incomplete path when goal can't be reached]`
- `FValueOrBBKey_Bool bAllowStrafe []`
- `FValueOrBBKey_Bool bProjectGoalLocation [if set, goal location will be projected on navigation data (navmesh) before using]`
- `FValueOrBBKey_Bool bReachTestIncludesAgentRadius [if set, radius of AI's capsule will be added to threshold between AI and goal location in destination reach test]`
- `FValueOrBBKey_Bool bReachTestIncludesGoalRadius [if set, radius of goal's capsule will be added to threshold between AI and goal location in destination reach test]`
- `FValueOrBBKey_Bool bRequireNavigableEndLocation [if set, the goal location will need to be navigable]`
- `FValueOrBBKey_Bool bStartFromPreviousPath [if set, the path request will start from the end of the previous path (if any), and the generated path will be merged with the remaining points of the previous path]`
- `FValueOrBBKey_Bool bTrackMovingGoal [if set, path to goal actor will update itself when actor moves]`

---

