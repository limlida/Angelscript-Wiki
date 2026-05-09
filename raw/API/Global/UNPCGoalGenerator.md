### UNPCGoalGenerator


Goal generators generate goals for your NPCs to do. They provide a bit of optimization in that you can only add the generators your
NPC requires so this will remove lots of unnesseccary processing time. They also allow for configuration, ie your legendary enemy could
have further distance for its GoalGenerator_FindAttackTarget, whereas your novice enemy might have a shorter distance.

Goal generators should be added to your NPCs definition. They will then be registered with the NPCs Activity Component.
For more information, please check out the docs: https://docs.narrativetools.io/

**属性**:

- `UNPCActivityComponent OwnerActivityComponent []`
- `ANarrativeNPCController OwnerController [We cache the AI controller]`
- `bool bSaveGoalGenerator [Whether this generator should be saved to disk or not]`


**方法**:

- `UNPCGoalItem AddGoalItem(UNPCGoalItem Goal, bool bTriggerReselect = false)`  
  /Use this to tell the NPC activity component to add the goal.
- `InitializeGoalGenerator()`  
  Use this event to set your generator up, bind it to an event, etc.
- `RemoveGoalItem(UNPCGoalItem Goal)`  
  /Use this to tell the NPC activity component to remove a goal we've made

---

