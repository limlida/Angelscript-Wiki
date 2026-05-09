### FNarrativeCineDialogueLine


A cinematic dialogue line that can be selected whilst a cinematic is playing.

**属性**:

- `TArray<TObjectPtr<UNarrativeCondition>> Conditions [Conditions that must pass for the line to be selected.]`
- `FString DestinationMarker [The destination marker to jump to when this is selected.]`
- `FNarrativeSequencePlaybackSettings DestinationPlaybackSettings [The playback settings for the destination.]`
- `ULevelSequence DestinationSequence [The destination sequence to to jump to when this is selected. If empty, we'll try jump to the DestinationMarker.]`
- `FText HintText [The hint option text to show the player after the Option Text - ie Persurade, Intimidate, Help, etc]`
- `FText OptionText [The dialogue option text to show the player]`
- `bool bBlendAnimsBetweenSequences [Jumping to the destination will cause the character animations to snap in default UE5. You can set this to true to blend instead.

      This is essential if you're not changing cameras when going to the destination because otherwise you will see your character snap.]`
- `bool bKeepExistingSequenceSettings [Whether to use the existing settings or override them with custom ones]`


**方法**:

- `FNarrativeCineDialogueLine& opAssign(FNarrativeCineDialogueLine Other)`

---

