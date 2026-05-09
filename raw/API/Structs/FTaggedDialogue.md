### FTaggedDialogue


Represents a tagged dialogue - this is essentially a dialogue that can be kicked off via a tag "TaggedDialogue.Taunt, TaggedDialogue.Greet, etc. "

**属性**:

- `FGameplayTagContainer BlockedTags [Tags that if owned by the NPC, will prevent this dialogue beginning. For example, we wouldn't want to greet a player if we were fighting someone.]`
- `float32 Cooldown [The amount of time we should cooldown before playing this dialogue again.]`
- `TSoftClassPtr<UDialogue> Dialogue [The dialogue to begin]`
- `float32 LastPlayTime []`
- `float32 MaxDistance [Tagged dialogue wont play unless we're within this range from it]`
- `FGameplayTagContainer RequiredTags [Tags that will be required for the NPC to begin this tagged dialogue]`
- `FGameplayTag Tag [The tag that will kick off this dialogue.]`


**方法**:

- `FTaggedDialogue& opAssign(FTaggedDialogue Other)`

---

