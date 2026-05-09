### UNPCActivityComponent


Lives on the NPCCharacter and allows us to run NPC activities. For more info on NPC Actitites see the comment above UNPCActivity.

**属性**:

- `TArray<TObjectPtr<UNPCActivity>> Activities [The activities the NPC can run.]`
- `UNPCActivityConfiguration ActivityConfiguration [Our activity configuration goes in here]`
- `TArray<TObjectPtr<UActivityGroup>> ActivityGroups [The activities the NPC can run.]`
- `UNPCActivity CurrentActivity [The activity we're currently running]`
- `TArray<TObjectPtr<UNPCGoalGenerator>> GoalGenerators [Our goal generators we'll use to create goals - goals can also be explicitly added]`
- `TMap<TSubclassOf<UNPCGoalItem>,FNPCGoalContainer> Goals [Our goals we currently have - we use a map to allow quick access to goals by their class]`
- `ANarrativeNPCController OwnerController [Our controller, cached]`
- `float32 RescoreInterval [How often to rescore activities]`


**方法**:

- `UNPCActivity AddActivity(TSubclassOf<UNPCActivity> ActivityClass, bool bSaveActivity)`  
  Add an activity to our list.
- `AddActivitySchedule(UNPCActivitySchedule Schedule)`  
  Add an activity schedule to the NPC.
- `UNPCGoalItem AddGoal(UNPCGoalItem NewGoal, bool bTriggerReselect = false)`  
  Add the given goal to the goal map using its goaltag.Return a handle to the created goal

       @param bTriggerReselect whether you want to ask the activity component to reselect its behavior after adding this goal.
- `UNPCGoalGenerator AddGoalGenerator(TSubclassOf<UNPCGoalGenerator> GoalGeneratorClass, bool bSaveGoalGenerator)`  
  Add an GoalGenerator to our list.
- `UNPCActivity GetActivity(TSubclassOf<UNPCActivity> ActivityClass)`  
  Find an added activity via its class
- `UNPCActivity GetCurrentActivity() const`  
  get our current activity
- `UNPCGoalItem GetCurrentActivityGoal() const`  
  get our current activities goal
- `UNPCGoalItem GetGoalByKey(TSubclassOf<UNPCGoalItem> GoalType, const UObject Key, bool& OutSucceeded)`  
  Grab a goal via its key
- `UNPCGoalGenerator GetGoalGenerator(TSubclassOf<UNPCGoalGenerator> GoalGeneratorClass)`  
  Find an added GoalGenerator via its class
- `FNPCGoalContainer GetGoals(TSubclassOf<UNPCGoalItem> GoalType) const`  
  Grab all created goals of the given type
- `bool HasGoal(TSubclassOf<UNPCGoalItem> GoalType) const`  
  Return true if we have a goal of the given type
- `bool PerformActivitySelection(bool bCheckNew = false)`  
  Scores our activities, and selects the best one, along with the best goal for that activity.
       @param bCheckNew will potentially end CurrentActivity if a better one is found, otherwise if a valid current activity is running
       that will be kept instead.

       @return whether a new activity was selected or not
- `bool RemoveActivity(TSubclassOf<UNPCActivity> ActivityClass)`  
  Remove an activity from our list.
- `RemoveActivitySchedule(UNPCActivitySchedule Schedule)`  
  Remove an activity schedule from the NPC.
- `RemoveAllGoals()`  
  Remove all goals from the ac.
- `RemoveGoal(UNPCGoalItem GoalToRemove)`  
  Remove the goal with the given handle
- `bool RemoveGoalGenerator(TSubclassOf<UNPCGoalGenerator> GoalGeneratorClass)`  
  Remove n GoalGenerator from our list.
- `bool RunActivity(UNPCActivity ActivityTemplate, UNPCGoalItem Goal, FString& FailReason)`  
  Start the given activity, and pass the goal to it. Goal can be nullptr
- `SetActivityConfiguration(UNPCActivityConfiguration Config)`  
  Set our activity config
- `StopCurrentActivity()`  
  Stop the currently running activity

---

