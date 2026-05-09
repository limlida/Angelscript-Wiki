### UNarrativeDataTask


Data Tasks are lightweight tasks that consist of a Task Name, ie "FindItem", and an argument, ie "Pickaxe".

You can create data tasks in the content browser and store them using the CompleteNarrativeDataTask function. These data tasks are really useful for two main reasons:
1. They can be used to move the player through a quest. IE KillNPC: Boss, FindItem: Dragonstone, etc
2. Narrative saves these to disk, meaning you can check if the player has ever killed a given NPC, found a given item, etc (using HasCompletedTask function)
Dialogues can easily check these too, which is powerful, ie If HasCompletedTask "KillNPC: King" an NPC could say "How could you have slain the king!"

**属性**:

- `FString ArgumentName [The name of the argument the data task takes, for example a task called FindItems argument name might be "Item Name" for example]`
- `FString DefaultArgument [Default argument to autofill]`
- `FString TaskCategory [The category of this Task, used for organization in the quest tool]`
- `FText TaskDescription [A description of this task. Will get used as a tooltip in the quest editor so write something useful!]`
- `FString TaskName [A short name describing what this Task is]`

---

