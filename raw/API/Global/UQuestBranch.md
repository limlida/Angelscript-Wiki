### UQuestBranch


**属性**:

- `UQuestState DestinationState [State where we will go if this branch is taken. Branch will be ignored if this is null]`
- `TArray<UNarrativeTask> QuestTasks [The tasks that need to be completed to take this branch to its destination

Plenty of quest tasks come with narrative, Please see the the Narrative/Content/DefaultTasks/ folder
for some examples. You can copy these and create custom ones for your game, like ObtainItem, KillEnemy, etc - whatever you need.]`
- `bool bHidden [Should this branch be hidden from the player on the narrative demo UI (Great for quests with hidden options that we want to be part
       of the quest logic, but we don't want the UI to show)]`

---

