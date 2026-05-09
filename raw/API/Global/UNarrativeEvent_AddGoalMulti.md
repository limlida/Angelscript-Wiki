### UNarrativeEvent_AddGoalMulti


Special version that handles adding goals to multiple NPCs instead of just the one. Override OnGoalsCompleted to do something when all goals are done.

**属性**:

- `TArray<TObjectPtr<UNPCGoalItem>> IssuedGoals [The active goals]`
- `TArray<FAddGoalMultiTarget> NPCGoalTargets [The NPCs that this Add Goals will effect]`


**方法**:

- `OnGoalsCompleted()`  
  Prepare the goal for a save - this might for example mean storing an actors GUID so we can find it later when we load

---

