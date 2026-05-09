### UNPCGoalItem


GoalItems are created inside goals to describe the available items in a goal. For example, an Attack Goal could
have a Attack GoalItem containing the target we need to attack, or an Interact goal could contain potential items
in the world we can interact with.

For more information, please check out the docs: https://docs.narrativetools.io/

**属性**:

- `FGameplayTagContainer BlockTags [We'll force a low score if you have these tags, meaning the goal won't be acted on]`
- `float32 CreationTime [Time the goal was created]`
- `float32 DefaultScore [The default score this goal will be given if its activity doesn't override the ScoreGoal function]`
- `UObject GoalKey [This object acts as a key, and can be used to access the goal later - it will also prevent goals with the same GoalKey from being added.]`
- `float32 GoalLifetime [Goal Expiry time. If less than zero goal will never expire and needs to be removed either by scoring < 0 or manually removed via RemoveGoal()]`
- `float32 IntendedTODStartTime [The Time of day the goal was intended to start at - used for goals that need to "Catch up" ie if we enter game at 2200 and NPC is supposed to start sleeping at 2000 we can tele them right into bed rather than making the NPC run to bed.]`
- `FOnGoalSignature OnGoalRemoved [Called when goal is removed.]`
- `FOnGoalSignature OnGoalSucceeded [Called when goal is succeeded]`
- `FGameplayTagContainer OwnedTags [The tags we'll grant the NPC when an activity acts on this goal. We'll remove when the goal ends]`
- `ANarrativeNPCController OwnerController [The NPCController that owns this goal]`
- `FGameplayTagContainer RequireTags [We'll require these tags to be on the owner to act on this goal]`
- `float32 TODCreationTime [The ingame time of day when the goal was created.]`
- `bool bRemoveOnSucceeded [If true, this goal will automatically be removed when its owning activity completes the goal.]`
- `bool bSaveGoal [Should the goal and any SaveGame variables on it be saved to disk?]`


**方法**:

- `float32 GetCatchupTime() const`  
  Return the amount of time that has passed since the goal was supposed to have been started if the goal started late, ie if we began play at 1500 and a scheduled goal for 1200-1700 added the goal late, our catchup time would be 300.
- `FString GetDebugString() const`  
  Return a debug string explaining what the goal is
- `float32 GetGoalAgeSeconds() const`  
  Return the amount of real time in seconds that has passed since goal was created
- `UObject GetGoalKey() const`  
  Returning a valid object will act as a key - you can access the goal later via this object, and we'll prevent goals with the same key from being added in future
- `float32 GetGoalScore() const`  
  Return a score for the goal - this will be used to grab the best goal to act on for each activity
- `Initialize()`  
  Called when the goal is added, or loaded back in from disk.
- `bool IsActiveGoal() const`  
  Return whether this goal is the active one that our Current Activity is acting upon
- `OnRemoved()`  
  Called when the goal is removed.
- `PrepareForSave()`  
  Prepare the goal for a save - this might for example mean storing an actors GUID so we can find it later when we load
- `RemoveGoal()`  
  Remove the goal from our owning comp
- `bool ShouldCleanup() const`  
  Return whether the goal has become invalid and should be removed, ie if an AttackGoals target has died.

---

