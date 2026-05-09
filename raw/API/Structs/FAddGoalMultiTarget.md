### FAddGoalMultiTarget


Represents one of the NPCs in a Add Goals

**属性**:

- `UNPCGoalItem Goal [The activity to run at the specified time]`
- `UNPCDefinition NPCDefinition [The NPC to run this activity on]`
- `bool bGoalSucceeded [We track in here whether the goal has yet been succeded or not]`
- `bool bRequireSucceed [If false, the Add Goals can still run even if this NPC failed to start the activity the settlement wanted.]`


**方法**:

- `FAddGoalMultiTarget& opAssign(FAddGoalMultiTarget Other)`

---

