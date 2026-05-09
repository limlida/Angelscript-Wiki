### FDialoguePlayParams


**属性**:

- `int Priority [The priority we want to play this dialogue at. -1 means use the dialogues default priority.]`
- `TArray<ANarrativeNPCCharacter> Speakers [Used when you want to directly define a speaker at the given speaker index instead of using the NPCDefinition.]`
- `FName StartFromID [The ID the dialogue should start playing from, if empty will play from root node.]`
- `bool bCanBeExited [Whether we want to allow the player to skip lines in this dialogue.]`
- `bool bFreeMovement [Do we want the dialogue to be free movement?]`
- `bool bOverride_bCanBeExited`
- `bool bOverride_bFreeMovement`
- `bool bOverride_bStopMovement`
- `bool bOverride_bUnskippable`
- `bool bStopMovement [Do we want the dialogue to stop the characters in it from moving when it begins?]`
- `bool bUnskippable [Whether we want to allow the player to skip lines in this dialogue.]`


**方法**:

- `FDialoguePlayParams& opAssign(FDialoguePlayParams Other)`

---

