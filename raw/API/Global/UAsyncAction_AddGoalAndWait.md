### UAsyncAction_AddGoalAndWait


adds a goal for a given npc and calls goal succeeded when goal succeeded

**属性**:

- `FAddGoalAndWaitSignature GoalRemoved [called when goal is removed. if the goal succeeds, then this is not called.]`
- `FAddGoalAndWaitSignature GoalSucceeded [called once the goal succeeds]`


**方法**:

- `EndTask()`  
  when called, sets the task to be ready to destroy, removing all bound events

---

