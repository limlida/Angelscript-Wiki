### UQuestRequirement


Quest Requirements can be added/removed by quests at any time to define requirements the player needs to adhere to.
For example, you could add a 'Stay Near Actor' requirement that specifies we need to stay near a certain NPC or the quest fails.
Another example might be a 'Keep NPC Alive' requirement that fails the quest if a certain NPC dies.

**方法**:

- `UQuest GetOwningQuest() const`  
  Get the quest that owns this requirement.
- `OnAdded(UQuest Quest)`  
  Called when this requirement is added to the quest.
- `OnRemoved(UQuest Quest)`  
  Called when this requirement is removed from the quest.

---

