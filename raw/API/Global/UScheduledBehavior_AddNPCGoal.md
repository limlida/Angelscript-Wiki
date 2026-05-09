### UScheduledBehavior_AddNPCGoal


UScheduledBehavior_AddNPCGoals create a goal and add it at the specified time. They then track it, and remove it at the EndTime.

**属性**:

- `float32 ScoreOverride [If > 0, we'll assign this score to the created goal. Otherwise we'll use the created goals score.]`
- `bool bReselect [Do we want a reselect]`


**方法**:

- `UNPCGoalItem ProvideGoal() const`  
  Construct and provide the goal

---

