### UNPCInteractable


Special interactable component made for NPCCharacters. Handles talking to NPCs if they are alive and have valid dialogue,
or looting from them if they have been killed.

**属性**:

- `TSubclassOf<UDialogue> Dialogue [The dialogue this NPC currently has available, pulled from the NPCs data asset. Note these are hard reffed to avoid hitches
      when attempting to start a dialogue. For games with large settlements with huge amounts of dialogue, you may want to make these
      soft reffed instead, and add some async loading logic.]`

---

