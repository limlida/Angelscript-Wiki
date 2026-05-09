### UAISystem


**属性**:

- `float32 AcceptanceRadius [Default AI movement's acceptance radius used to determine whether
AI reached path's end]`
- `TSoftObjectPtr<UBlackboardData> DefaultBlackboard [If set, new BTs will use this BB as default.]`
- `ECollisionChannel DefaultSightCollisionChannel [Which collision channel to use for sight checks by default]`
- `FSoftClassPath EnvQueryManagerClassName [Class that will be used to spawn the env query manager, can be game-specific]`
- `FSoftClassPath HotSpotManagerClassName [Class that will be used to spawn the hot spot manager, can be game-specific]`
- `float32 PathfollowingNavLinkAcceptanceRadius [Similarly to PathfollowingRegularPathPointAcceptanceRadius used by pathfollowing's internals
    but gets applied only when next point on a path represents a begining of navigation link]`
- `float32 PathfollowingRegularPathPointAcceptanceRadius [Value used for pathfollowing's internal code to determine whether AI reached path's point.
    @note this value is not used for path's last point. @see AcceptanceRadius]`
- `FSoftClassPath PerceptionSystemClassName [Class that will be used to spawn the perception system, can be game-specific]`
- `bool bAcceptPartialPaths [Sets default value for rather move tasks accept partial paths or not]`
- `bool bAddBlackboardSelfKey [If set to true will result in automatically adding the SelfActor key to new Blackboard assets. It will
    also result in making sure all the BB assets loaded do have the SelfKey entry, via PostLoad]`
- `bool bAllowControllersAsEQSQuerier [if enable will make EQS not complaint about using Controllers as queriers. Default behavior (false) will
    in places automatically convert controllers to pawns, and complain if code user bypasses the conversion or uses
    pawn-less controller]`
- `bool bAllowStrafing [Sets default value for rather move tasks allow strafing or not]`
- `bool bBlackboardKeyDecoratorAllowsNoneAsValue [If enabled, blackboard based decorators will set key to 'Invalid' on creation or when selected key no longer exists (instead of using the first key of the blackboard).]`
- `bool bClearBBEntryOnBTEQSFail []`
- `bool bEnableDebuggerPlugin [if set, GameplayDebuggerPlugin will be loaded on module's startup]`
- `bool bFinishMoveOnGoalOverlap [If true, overlapping the goal will be counted by default as finishing a move]`
- `bool bForgetStaleActors [If set, actors will be forgotten by the perception system when their stimulus has expired.
    If not set, the perception system will remember the actor even if they are no longer perceived and their
    stimuli has exceeded its max age]`

---

