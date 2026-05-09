### AAIController


AIController is the base class of controllers for AI-controlled Pawns.

Controllers are non-physical actors that can be attached to a pawn to control its actions.
AIControllers manage the artificial intelligence for the pawns they control.
In networked games, they only exist on the server.

@see https://docs.unrealengine.com/latest/INT/Gameplay/Framework/Controller/

**属性**:

- `UBlackboardComponent Blackboard [blackboard]`
- `UBrainComponent BrainComponent [Component responsible for behaviors.]`
- `TSubclassOf<UNavigationQueryFilter> DefaultNavigationFilterClass`
- `UPathFollowingComponent PathFollowingComponent [Component used for moving along a path.]`
- `UAIPerceptionComponent PerceptionComponent []`
- `FAIMoveCompletedSignature ReceiveMoveCompleted [Blueprint notification that we've completed the current movement request]`
- `bool bAllowStrafe [Is strafing allowed during movement?]`
- `bool bSetControlRotationFromPawnOrientation [Copy Pawn rotation to ControlRotation, if there is no focus point.]`
- `bool bSkipExtraLOSChecks [Skip extra line of sight traces to extremities of target being checked.]`
- `bool bStartAILogicOnPossess [By default AI's logic does not start when controlled Pawn is possessed. Setting this flag to true
    will make AI logic start when pawn is possessed]`
- `bool bStopAILogicOnUnposses [By default AI's logic gets stopped when controlled Pawn is unpossessed. Setting this flag to false
    will make AI logic persist past losing control over a pawn]`
- `bool bWantsPlayerState [Specifies if this AI wants its own PlayerState.]`


**方法**:

- `ClaimTaskResource(TSubclassOf<UGameplayTaskResource> ResourceClass)`
- `UAIPerceptionComponent GetAIPerceptionComponent()`
- `FVector GetFocalPoint() const`  
  Retrieve the final position that controller should be looking at.
- `FVector GetFocalPointOnActor(const AActor Actor) const`  
  Retrieve the focal point this controller should focus to on given actor.
- `AActor GetFocusActor() const`  
  Get the focused actor.
- `FVector GetImmediateMoveDestination() const`  
  Returns position of current path segment's end.
- `EPathFollowingStatus GetMoveStatus() const`  
  Returns status of path following
- `UPathFollowingComponent GetPathFollowingComponent() const`  
  Returns PathFollowingComponent subobject *
- `bool HasPartialPath() const`  
  Returns true if the current PathFollowingComponent's path is partial (does not reach desired destination).
- `ClearFocus()`  
  Clears Focus, will also clear FocalPoint as a result
- `SetFocalPoint(FVector FP)`  
  Set the position that controller should be looking at.
- `SetFocus(AActor NewFocus)`  
  Set Focus for actor, will set FocalPoint as a result.
- `EPathFollowingRequestResult MoveToActor(AActor Goal, float32 AcceptanceRadius = - 1.000000, bool bStopOnOverlap = true, bool bUsePathfinding = true, bool bCanStrafe = true, TSubclassOf<UNavigationQueryFilter> FilterClass = nullptr, bool bAllowPartialPath = true)`  
  Makes AI go toward specified Goal actor (destination will be continuously updated), aborts any active path following
@param AcceptanceRadius - finish move if pawn gets close enough
@param bStopOnOverlap - add pawn's radius to AcceptanceRadius
@param bUsePathfinding - use navigation data to calculate path (otherwise it will go in straight line)
@param bCanStrafe - set focus related flag: bAllowStrafe
@param FilterClass - navigation filter for pathfinding adjustments. If none specified DefaultNavigationFilterClass will be used
@param bAllowPartialPath - use incomplete path when goal can't be reached
    @note AcceptanceRadius has default value or -1 due to Header Parser not being able to recognize UPathFollowingComponent::DefaultAcceptanceRadius
- `EPathFollowingRequestResult MoveToLocation(FVector Dest, float32 AcceptanceRadius = - 1.000000, bool bStopOnOverlap = true, bool bUsePathfinding = true, bool bProjectDestinationToNavigation = false, bool bCanStrafe = true, TSubclassOf<UNavigationQueryFilter> FilterClass = nullptr, bool bAllowPartialPath = true)`  
  Makes AI go toward specified Dest location, aborts any active path following
@param AcceptanceRadius - finish move if pawn gets close enough
@param bStopOnOverlap - add pawn's radius to AcceptanceRadius
@param bUsePathfinding - use navigation data to calculate path (otherwise it will go in straight line)
@param bProjectDestinationToNavigation - project location on navigation data before using it
@param bCanStrafe - set focus related flag: bAllowStrafe
@param FilterClass - navigation filter for pathfinding adjustments. If none specified DefaultNavigationFilterClass will be used
@param bAllowPartialPath - use incomplete path when goal can't be reached
    @note AcceptanceRadius has default value or -1 due to Header Parser not being able to recognize UPathFollowingComponent::DefaultAcceptanceRadius
- `OnUsingBlackBoard(UBlackboardComponent BlackboardComp, UBlackboardData BlackboardAsset)`
- `bool RunBehaviorTree(UBehaviorTree BTAsset)`  
  Starts executing behavior tree.
- `SetMoveBlockDetection(bool bEnable)`  
  Updates state of movement block detection.
- `SetPathFollowingComponent(UPathFollowingComponent NewPFComponent)`  
  Note that this function does not do any pathfollowing state transfer.
    Intended to be called as part of initialization/setup process
- `UnclaimTaskResource(TSubclassOf<UGameplayTaskResource> ResourceClass)`
- `bool UseBlackboard(UBlackboardData BlackboardAsset, UBlackboardComponent& BlackboardComponent)`  
  Makes AI use the specified Blackboard asset & creates a Blackboard Component if one does not already exist.
@param       BlackboardAsset                 The Blackboard asset to use.
@param       BlackboardComponent             The Blackboard component that was used or created to work with the passed-in Blackboard Asset.
@return true if we successfully linked the blackboard asset to the blackboard component.

---

