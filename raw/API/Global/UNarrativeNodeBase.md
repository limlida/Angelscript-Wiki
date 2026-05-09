### UNarrativeNodeBase


The base class for all narrative nodes in eiher a quest state machine, or a dialogue tree

**属性**:

- `TArray<UNarrativeCondition> Conditions [This node only appears if the following conditions are met. Note that currently only dialogues support conditions, they won't do anything in quests!

In multiplayer games the server will check the conditions to ensure your game is server authoritative.]`
- `TArray<UNarrativeEvent> Events [Events that should fire when this is reached. These are supported by both quests and dialogues, and will fire on both client and server.]`
- `FName ID [An optional ID for this node, can be left empty]`


**方法**:

- `bool AreConditionsMet(APawn Pawn, APlayerController Controller, UTalesComponent NarrativeComponent)`  
  Check if all the conditions are met on this quest/dialogue node
- `ProcessEvents(APawn Pawn, APlayerController Controller, UTalesComponent NarrativeComponent, EEventRuntime Runtime)`  
  Execute all the events on this quest/dialogue node - this is blueprint callable so dialogue UI can call this
when a piece of dialogue is spoken

---

