### UNPCActivity


NPC Activities essentially wrap a Behaviour tree, and act on UGoalItems, which define how we'll set up the behavior trees blackboard.
See UNPCActivityComponent.PerformActivitySelection to see how AI select what activity to perform.

**属性**:

- `UNPCGoalItem ActivityGoal [The goal this activity is operating on - for example AttackGoal for AttackActivity, etc. This can null if your activity doesn't need a goal]`
- `UBehaviorTree BehaviourTree [The behaviour tree the NPC needs to run]`
- `float32 LastActivateTime [Whether this activity should be saved to disk or not]`
- `FOnGoalSignature OnActivityGoalSucceeded [Broadcast when the activity is completed.]`
- `UNPCActivityComponent OwnerActivityComponent []`
- `ANarrativeNPCController OwnerController [We cache the AI controller]`
- `TSubclassOf<UNPCGoalItem> SupportedGoalType [The goal class this activity supports, if it supports one. You can leave this empty if your activity doesn't need a goal, eg Idle, etc.]`
- `bool bIsInterruptable [Whether we're allowed to interrupt this activity or not]`
- `bool bSaveActivity [Whether this activity should be saved to disk or not - this is set when you call AddActivity.]`


**方法**:

- `bool IsActivityActive(float32& OutActiveTime) const`  
  Return whether the activity is active or not. ActiveTime is how long the activity has been active, or the time since it went deactive. Will be FLT_MAX if has never been activated.
- `bool IsInterruptable() const`
- `NotifySucceeded()`  
  Tell the activity its succeeded. Ie for attacking this may be when target is killed, or for moving somewhere this might be when we reach the destination.
- `RemoveActivityGoal()`
- `float32 ScoreActivity(FNPCGoalContainer GoalContainer, UNPCGoalItem& OutBestGoal, TArray<UNPCGoalItem>& OutInvalidGoals)`  
  Score the activity - the activity with the best score will be ran using its BestGoal. Invalid goals will also be removed.
- `float32 ScoreGoalItem(const UNPCGoalItem Goal)`  
  Override this if you want to ignore Goal.GetScore() and provide a custom score. IE you may want a SitOnCouch goal
       to score higher if the owner has low stamina, but lower or zero if we have enough stamina.
- `bool SetupBlackboard(UBlackboardComponent BB)`  
  Once the activity starts, this will be called to try and set up the blackboard. You can return false
       if the blackboard wasn't able to be setup and RunActivity will then return false to let the call know it failed.

---

