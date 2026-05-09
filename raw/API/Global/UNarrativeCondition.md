### UNarrativeCondition


Narrative Conditions allow you to make conditions that dialogues and quests can then use to conditionally include/exclude nodes.

For example, you could make a condition "HasItem" that checks if the player has a certain amount of an item. Then, you could use that
condition on a dialogue node so that the player can only say "I'll buy it!" if they actually have 500 coins in their inventory.

Currently quests do not support NarrativeConditions, only NarrativeEvents. Dialogues support both.

**属性**:

- `TArray<TObjectPtr<UCharacterDefinition>> CharacterTargets [Characters we should run the Condition on. If empty, we'll run on the character that owns the quest/dialogue.]`
- `EConditionFilter ConditionFilter [Defines what types of characters the event should be allowed to run on]`
- `TArray<TObjectPtr<UNPCDefinition>> NPCTargets [NPCs we should run the Condition on. If empty, we'll run the Condition on all NPCs in the dialogue]`
- `EPartyConditionPolicy PartyConditionPolicy [Defines how the condition should be ran against a party that is doing this dialogue. Ignored by non-party dialogues.

Imagine if you want to check if your party has completed a quest. By default narrative will check if anyone in the party had completed
the quest on their own narrative component, but if you wanted to check if the party itself had completed the quest before you'd check this box.]`
- `TArray<TObjectPtr<UPlayerDefinition>> PlayerTargets [Players we should run the Condition on. If empty, we'll run on the character that owns the quest/dialogue.]`
- `bool bNot [Set this to true to flip the result of this condition]`


**方法**:

- `bool CheckCondition(APawn Target, APlayerController Controller, UTalesComponent NarrativeComponent)`  
  Check whether this condition is true or false

      @param Target This is the target we want to check the condition on .
      @param Controller The controller of the player we're running the condition on - will be null if running the condition against a party
      @param NarrativeComponent The narrative component we're running the condition on
- `TArray<UCharacterDefinition> GetCharacterTargets() const`  
  return the characters to run the event on
- `FString GetGraphDisplayText()`  
  Define the text that will show up on a node if this condition is added to it

---

