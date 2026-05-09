### UNPCActivityConfiguration


Defines what activities an NPC can do, and what goal generators they will have.

**属性**:

- `TArray<TSubclassOf<UNPCActivity>> DefaultActivities [The activities to grant the NPC]`
- `TArray<TSubclassOf<UNPCGoalGenerator>> GoalGenerators [The goal generators the NPC can use to generate goals - you can add your own goals manually via AC->AddGoal(), goals do not have to be added via generators]`
- `float32 RescoreInterval [How often we want to re-score our goals, which may change our current activity. Faster rescore rates will use more performance.]`

---

