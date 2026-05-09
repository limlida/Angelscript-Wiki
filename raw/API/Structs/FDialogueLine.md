### FDialogueLine


**属性**:

- `TArray<TObjectPtr<UNarrativeCondition>> Conditions [Optional conditions the line must pass for it to be selected]`
- `UAnimMontage DialogueMontage [Narrative will play this montage on the first skeletalmeshcomponent found on your speaker with the tag "Body" added to it.]`
- `USoundBase DialogueSound [If a dialogue sound is selected, narrative will automatically play the sound for you in 3D space, at the location of the speaker.
If narrative can't find a speaker actor (for example if you were getting a phone call where there isn't an physical speaker) it will be played in 2D.]`
- `ELineDuration Duration [The duration the line should play for]`
- `float32 DurationSecondsOverride [The overridden seconds the line should play for]`
- `UAnimMontage FacialAnimation [Narrative will play this montage on the first skeletalmeshcomponent found on your speaker with the tag "Face" added to it.]`
- `UNarrativeDialogueSequence Shot [Shot to play for this line. Overrides speaker shot if one is set]`
- `FText Text [The text for this dialogue node. Narrative will automatically display this on the NarrativeDefaultUI if you're using that, otherwise you can simply grab this
yourself if you're making your own dialogue UI - it is readable from Blueprints.]`


**方法**:

- `FDialogueLine& opAssign(FDialogueLine Other)`

---

