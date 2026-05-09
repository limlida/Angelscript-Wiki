### UDialogueNode_Player


**属性**:

- `FText HintText [Optional hint text after the option text, ie (Lie, Persauade, Begin Quest) If left empty narrative will see if events have hint text.]`
- `FText OptionText [The shortened text to display for dialogue option when it shows up in the list of available responses. If left empty narrative will just use the main text.]`
- `bool bAutoSelect [If true, this dialogue option will be automatically selected instead of the player having to select it from the UI]`
- `bool bAutoSelectIfOnlyReply [If true, this dialogue option will be automatically selected if it is the only reply available.]`


**方法**:

- `FText GetHintText(UDialogue InDialogue) const`  
  Get any hint text that should be added to a reply ( ie (Lie, Start Quest, etc))
- `FText GetOptionText(UDialogue InDialogue) const`  
  Runs a wildcard replace on a player reply

---

