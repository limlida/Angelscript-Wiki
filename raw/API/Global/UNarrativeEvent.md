### UNarrativeEvent


Narrative Events allow you to write a little bit of code that fires when a given quest or dialogue node is reached.

For example, you could make a Narrative Event "Give item" that adds an item to the players inventory. Then, you could
add that event to a dialogue node, for example if an NPC said "Heres my sword, I want you to take it." you could add your
event to that dialogue node and actually add the sword item to the players inventory.

**属性**:

- `TArray<TObjectPtr<UCharacterDefinition>> CharacterTargets [Characters we should run the event on.]`
- `TArray<UNarrativeCondition> Conditions [This event will only fire if the following conditions are met]`
- `EEventFilter EventFilter [Defines what types of characters the event should be allowed to run on]`
- `EEventRuntime EventRuntime [Defines when the event should be executed]`
- `TArray<TObjectPtr<UNPCDefinition>> NPCTargets [NPCs we should run the event on.]`
- `EPartyEventPolicy PartyEventPolicy [Defines how events should be executed when the dialogue is playing as a party. Ignored if not in a party.]`
- `TArray<TObjectPtr<UPlayerDefinition>> PlayerTargets [Players we should run the event on.]`
- `bool bRefireOnLoad [QUESTS ONLY - When the game loads back in, should we fire this event off again when your quest loads back in?

For example, if we used a GiveXP event to give the player 500XP when we get to a certain quest state, this should be false.
Since XP is saved already, quitting and reloading would grant 500XP on top of the previous amount, which is not what we want.]`


**方法**:

- `ExecuteEvent(APawn Target, APlayerController Controller, UTalesComponent NarrativeComponent)`  
  Execute the event.
       @param Target this is the target that the event was specified to run on.
- `TArray<UCharacterDefinition> GetCharacterTargets() const`  
  return the characters to run the event on
- `FString GetGraphDisplayText()`  
  Define the text that will show up on a node if this event is added to it
- `FText GetHintText()`  
  If the event is on a dialogue option, this is the text we'll show after the line. (Begin Quest, etc)
- `OnActivate(APawn Target, APlayerController Controller, UTalesComponent NarrativeComponent)`
- `OnDeactivate(APawn Target, APlayerController Controller, UTalesComponent NarrativeComponent)`

---

