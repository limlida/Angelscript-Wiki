### UDialogueNode


Base class for states and branches in the Dialogues state machine

**属性**:

- `TArray<FDialogueLine> AlternativeLines [If alternative lines are added in here, narrative will randomly select either the main line or one of the alternatives.

       This can make dialogues more random and believable.]`
- `FName DirectedAtSpeakerID [The ID of the speaker we are saying this line to. Can be left empty.]`
- `FDialogueLine Line [The dialogue line associated with this node]`
- `TArray<UDialogueNode_NPC> NPCReplies`
- `FOnDialogueNodeFinishedPlaying OnDialogueFinished`
- `FName OnPlayNodeFuncName [Name of custom event to call when this is reached]`
- `FDialogueLine PlayedLine [The last line the dialogue node played.]`
- `TArray<UDialogueNode_Player> PlayerReplies`
- `bool bCompactView [If true, the dialogue editor will style this node in a compact form]`
- `bool bIsSkippable [Should pressing the enter key allow this line to be skipped?]`


**方法**:

- `FText GetDialogueText() const`

---

